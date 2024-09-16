package io.charles.framework.manager;

import cn.hutool.extra.spring.SpringUtil;
import lombok.Getter;
import org.springframework.scheduling.concurrent.ThreadPoolTaskScheduler;

import java.util.TimerTask;

/**
 * 异步任务管理器
 *
 * @author charles
 */
public class AsyncManager {
    private static final AsyncManager ME = new AsyncManager();
    /**
     * 异步操作任务调度线程池
     */
    @Getter(lazy = true)
    private final ThreadPoolTaskScheduler executor = SpringUtil.getBean(ThreadPoolTaskScheduler.class);

    /**
     * 单例模式
     */
    private AsyncManager() {
    }

    public static AsyncManager me() {
        return ME;
    }

    /**
     * 执行任务
     *
     * @param task 任务
     */
    public void execute(TimerTask task) {
        getExecutor().execute(task);
    }
}
