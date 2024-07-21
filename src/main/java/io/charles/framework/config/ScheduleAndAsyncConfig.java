package io.charles.framework.config;

import lombok.extern.slf4j.Slf4j;
import org.springframework.aop.interceptor.AsyncUncaughtExceptionHandler;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.AsyncConfigurer;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.SchedulingConfigurer;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
import org.springframework.scheduling.concurrent.ThreadPoolTaskScheduler;
import org.springframework.scheduling.config.ScheduledTaskRegistrar;

import java.lang.reflect.Method;
import java.util.concurrent.Executor;

/**
 * 线程池配置
 *
 * @author charles
 **/
@Configuration
@EnableAsync
@EnableScheduling
@Slf4j
public class ScheduleAndAsyncConfig implements SchedulingConfigurer, AsyncConfigurer {

    @Override
    public void configureTasks(ScheduledTaskRegistrar scheduledTaskRegistrar) {
        scheduledTaskRegistrar.setScheduler(taskScheduler());
    }

    /**
     * 定时任务使用策略：多线程处理
     *
     * @return ThreadPoolTaskScheduler 线程池
     */
    @Bean(name = "taskScheduler" , destroyMethod = "shutdown")
    public ThreadPoolTaskScheduler taskScheduler() {
        ThreadPoolTaskScheduler scheduler = new ThreadPoolTaskScheduler();
        ///根据任务数来控制，Runtime.getRuntime().availableProcessors()
        scheduler.setPoolSize(1);
        scheduler.setDaemon(true);
        scheduler.setThreadNamePrefix("timer-");
        return scheduler;
    }

    /**
     * 异步任务使用策略：多线程处理
     *
     * @return ThreadPoolTaskScheduler 线程池
     */
    @Bean(name = "asyncExecutor" , destroyMethod = "shutdown")
    public ThreadPoolTaskExecutor asyncExecutor() {
        ThreadPoolTaskExecutor executor = new ThreadPoolTaskExecutor();
        int poolSize = Runtime.getRuntime().availableProcessors() * 2;
        executor.setCorePoolSize(poolSize);
        executor.setDaemon(true);
        executor.setThreadNamePrefix("async-");
        executor.setQueueCapacity(poolSize * 1000);
        //设置5分钟，线程空闲则回收，包括核心线程
        executor.setKeepAliveSeconds(60 * 5);
        executor.setAllowCoreThreadTimeOut(true);
        return executor;
    }

    /**
     * 异步任务
     *
     * @return 异步任务执行者
     */
    @Override
    public Executor getAsyncExecutor() {
        return asyncExecutor();
    }

    /**
     * 异步任务 异常处理
     *
     * @return 异步任务处理对象
     */
    @Override
    public AsyncUncaughtExceptionHandler getAsyncUncaughtExceptionHandler() {
        return new MyAsyncExceptionHandler();
    }

    /**
     * 自定义异常处理类
     *
     * @author hry
     */
    static class MyAsyncExceptionHandler implements AsyncUncaughtExceptionHandler {

        @Override
        public void handleUncaughtException(Throwable throwable, Method method, Object... obj) {
            StringBuilder sb = new StringBuilder();
            sb.append("Exception message - ").append(throwable.getMessage());
            sb.append(" Method name - ").append(method.getName());
            for (Object param : obj) {
                sb.append(" Parameter value - ").append(param);
            }
            log.error(sb.toString());
        }

    }
}
