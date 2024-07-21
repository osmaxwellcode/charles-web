package io.charles.framework.ehcache;

import lombok.extern.slf4j.Slf4j;
import net.sf.ehcache.Cache;
import net.sf.ehcache.Element;
import org.apache.commons.lang3.ObjectUtils;
import org.springframework.cache.CacheManager;
import org.springframework.cache.ehcache.EhCacheCacheManager;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import java.util.Collection;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;

@Component
@Slf4j
public class EhcacheCache {

    @Resource
    private CacheManager cacheManager;

    private Cache cache;

    @PostConstruct
    public void init() {
        org.springframework.cache.ehcache.EhCacheCacheManager cacheCacheManager = (EhCacheCacheManager) cacheManager;
        net.sf.ehcache.CacheManager ehCacheManager = cacheCacheManager.getCacheManager();
        cache = ehCacheManager.getCache("SystemCache");
    }


    /**
     * 缓存基本的对象，Integer、String、实体类等
     *
     * @param key   缓存的键值
     * @param value 缓存的值
     */
    public <T> void setCacheObject(final String key, final T value) {
        cache.put(new Element(key, value));
    }


    /**
     * 缓存基本的对象，Integer、String、实体类等
     *
     * @param key      缓存的键值
     * @param value    缓存的值
     * @param timeout  时间
     * @param timeUnit 时间颗粒度
     */
    public <T> void setCacheObject(final String key, final T value, final Integer timeout, final TimeUnit timeUnit) {
        Long expiredTime = Long.valueOf(timeout);
        if (!"SECONDS".equals(timeUnit.name())) {
            // 时间转换为秒
            expiredTime = timeUnit.toSeconds(timeout);
        }
        cache.put(new Element(key, value, expiredTime.intValue(), expiredTime.intValue() + 1));
    }

    /**
     * 获得缓存的基本对象。
     *
     * @param key 缓存键值
     * @return 缓存键值对应的数据
     */
    public <T> T getCacheObject(final String key) {
        try {
            Element e = cache.get(key);
            return (T) e.getObjectValue();
        } catch (RuntimeException e) {

            return (T) null;
        }
    }

    /**
     * 删除单个对象
     *
     * @param key
     */
    public boolean deleteObject(final String key) {
        return cache.remove(key);
    }

    /**
     * 删除集合对象
     *
     * @param keys 多个缓存对象key集合
     * @return
     */
    public void deleteObject(final Collection keys) {
        cache.removeAll(keys);
    }

    /**
     * 清空缓存
     *
     * @return
     */
    public void deleteObject() {
        cache.removeAll();
    }

    /**
     * 根据key前缀，获得缓存key集合
     *
     * @param pattern 字符串前缀
     * @return 对象列表
     */
    public Collection<String> keys(final String pattern) {
        Collection<String> keys = cache.getKeys();
        return keys.stream().filter(k -> k.indexOf(pattern) == 0).collect(Collectors.toList());
    }

    /**
     * 获得缓存全部key集合
     *
     * @return 对象列表
     */
    public Collection<String> keys() {
        return cache.getKeys();
    }

    /**
     * 获得缓存全部key集合
     *
     * @return 对象列表
     */
    public int getSize() {
        return cache.getSize();
    }

    /**
     * 获得缓存全部key集合
     *
     * @return 对象列表
     */
    public Boolean isExpired(String key) {
        Element e = cache.get(key);
        if (ObjectUtils.isEmpty(e)) {
            return false;
        }
        return cache.isExpired(e);
    }


//    /**
//     * Get方法, 转换结果类型并屏蔽异常, 仅返回Null.
//     */
//    @SuppressWarnings("unchecked")
//    public <T> T get(String key) {
//        try {
//            Element e = cache.get(key);
//            return (T) e.getObjectValue();
//        } catch (RuntimeException e) {
//
//            return (T) null;
//        }
//    }
//
//    public List<String> keys(String key) {
//        List<String> keyList = new ArrayList<String>();
//        List<String> keys = cache.getKeys();
//        for (int i = 0; i < keys.size(); i++) {
//            if (keys.get(i).startsWith(key)) {
//                keyList.add(keys.get(i));
//            }
//        }
//        return keyList;
//    }
//
//    /**
//     * GetBulk方法, 转换结果类型并屏蔽异常.
//     */
//    @SuppressWarnings("unchecked")
//    public <T> Map<String, T> getBulk(Collection<String> keys) {
//        Map<String, T> map = new HashMap<String, T>();
//        for (String key : keys) {
//            T object = (T) this.get(key);
//            if (ObjectUtils.isNotEmpty(object)) {
//                map.put(key, object);
//            }
//        }
//        return map;
//    }
//
//    /**
//     * 异步Set方法, 不考虑执行结果
//     *
//     * @param key         String
//     * @param expiredTime int 单位为秒,如果为0，即永不过期
//     * @param value       Object
//     */
//    public void set(String key, int expiredTime, Object value) {
//        Element e = new Element(key, value, expiredTime, expiredTime);
//        cache.put(e);
//    }
//
//    /**
//     * 异步Set方法, 不考虑执行结果, 过期时间使用默认值
//     *
//     * @param key   String
//     * @param value Object
//     */
//    public void set(String key, Object value) {
//        cache.put(new Element(key, value));
//    }
//
//
//    /**
//     * 安全的Set方法, 保证在updateTimeout秒内返回执行结果, 否则返回false并取消操作.
//     */
//    public boolean safeSet(String key, int expiration, Object value) {
//        try {
//            this.set(key, expiration, value);
//            return true;
//        } catch (Exception e) {
//
//        }
//        return false;
//    }
//
//    /**
//     * 异步 Delete方法, 不考虑执行结果.
//     */
//    public void delete(String key) {
//        cache.remove(key);
//    }
//
//    /**
//     * 安全的Delete方法, 保证在updateTimeout秒内返回执行结果, 否则返回false并取消操作.
//     */
//    public boolean safeDelete(String key) {
//
//        try {
//            this.delete(key);
//            return true;
//        } catch (Exception e) {
//
//        }
//        return false;
//    }
}
