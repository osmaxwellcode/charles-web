package io.charles.framework.aspectj;

import io.charles.common.exception.ServiceException;
import io.charles.common.utils.ServletUtils;
import io.charles.common.utils.StringUtils;
import io.charles.common.utils.ip.IpUtils;
import io.charles.framework.aspectj.lang.annotation.RateLimiter;
import io.charles.framework.aspectj.lang.enums.LimitType;
import io.charles.framework.ehcache.EhcacheCache;
import org.apache.commons.lang3.ObjectUtils;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.lang.reflect.Method;
import java.util.concurrent.TimeUnit;

/**
 * 限流处理
 * 在方法上注解：@RateLimiter(time=10,count=2)
 *
 * @author charles
 */
@Aspect
@Component
public class RateLimiterAspect {
    private static final Logger log = LoggerFactory.getLogger(RateLimiterAspect.class);

    @Autowired
    private EhcacheCache ehcacheCache;

    // 配置织入点
    @Pointcut("@annotation(io.charles.framework.aspectj.lang.annotation.RateLimiter)")
    public void rateLimiterPointCut() {
    }

    @Before("rateLimiterPointCut()")
    public void doBefore(JoinPoint point) throws Throwable {
        // 从请求中获取限流注解信息
        RateLimiter rateLimiter = getAnnotationRateLimiter(point);
        // 注解中的参数
        String key = rateLimiter.key();
        int time = rateLimiter.time();
        int count = rateLimiter.count();
        // 根据请求类-方法生成redisKey
        String combineKey = getCombineKey(rateLimiter, point);
        try {
            // 从缓存中取出限流访问数字
            Long number = cacheScript(combineKey, count, time);
            if (StringUtils.isNull(number) || number.intValue() > count) {
                throw new ServiceException("访问过于频繁，请稍后再试");
            }
            log.info("限制请求'{}',当前请求'{}',缓存key'{}'", count, number.intValue(), key);
        } catch (ServiceException e) {
            throw e;
        } catch (Exception e) {
            throw new RuntimeException("服务器限流异常，请稍后再试");
        }
    }

    /**
     * 在缓存中查询请求方法的访问次数
     *
     * @param key
     * @param count 访问限制次数
     * @param time  访问限制时间
     * @return
     */
    private Long cacheScript(String key, int count, int time) {
        // 获取key已执行服务次数，如果已大于允许最大值直接返回。否则redis key对应的value加1，并且如果是第一次设置key，对key设置超时时间
        Object result = ehcacheCache.getCacheObject(key);
        Long number = Long.valueOf(1);
        if (ObjectUtils.isEmpty(result)) {
            // 记录访问次数
            ehcacheCache.setCacheObject(key, count, time, TimeUnit.SECONDS);
        } else {
            number = Long.valueOf(result.toString());
            if (number <= count) {
                // 访问次数记录+1
                ehcacheCache.setCacheObject(key, number + 1, time, TimeUnit.SECONDS);
            }
        }
        return number;
    }


    /**
     * 是否存在注解，如果存在就获取
     */
    private RateLimiter getAnnotationRateLimiter(JoinPoint joinPoint) {
        Signature signature = joinPoint.getSignature();
        MethodSignature methodSignature = (MethodSignature) signature;
        Method method = methodSignature.getMethod();

        if (method != null) {
            return method.getAnnotation(RateLimiter.class);
        }
        return null;
    }

    /**
     * 生成key
     * rate_limit:-com.zc.project.system.controller.SysDictDataController- list
     * rate_limit:-com.zc.project.system.controller.SysDictDataController- dictType
     *
     * @param rateLimiter
     * @param point
     * @return
     */
    public String getCombineKey(RateLimiter rateLimiter, JoinPoint point) {
        StringBuffer stringBuffer = new StringBuffer(rateLimiter.key());
        if (rateLimiter.limitType() == LimitType.IP) {
            stringBuffer.append(IpUtils.getIpAddr(ServletUtils.getRequest()));
        }
        MethodSignature signature = (MethodSignature) point.getSignature();
        Method method = signature.getMethod();
        Class<?> targetClass = method.getDeclaringClass();
        stringBuffer.append("-").append(targetClass.getName()).append("- ").append(method.getName());
        return stringBuffer.toString();
    }
}
