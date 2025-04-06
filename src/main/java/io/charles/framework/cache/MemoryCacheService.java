package io.charles.framework.cache;

import com.google.common.cache.Cache;
import com.google.common.cache.CacheBuilder;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.stereotype.Component;

import java.time.Duration;
import java.util.*;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;

/**
 * 基于GuavaCache的缓存工具类
 *
 * @author xiongbo
 * @since 2022/3/15 18:00
 */
@ConditionalOnProperty(value = "app.cacheType", havingValue = "memory", matchIfMissing = true)
@Component
public class MemoryCacheService implements ICacheService {
    private final Cache<String, Object> cache;

    public MemoryCacheService() {
        cache = CacheBuilder.newBuilder()
                .expireAfterAccess(24, TimeUnit.HOURS)
                .build();
    }

    /**
     * 支持缓存过期的缓存值
     */
    private static class ExpireCacheValue {
        private Object value;
        private Long liveDurationMs;

        private ExpireCacheValue(Object value, Long liveDurationMs) {
            this.value = value;
            this.liveDurationMs = liveDurationMs;
            this.lastAccessedTime = System.currentTimeMillis();
        }

        private long lastAccessedTime;

        private boolean hasExpired() {
            if (this.liveDurationMs == null) {
                return false;
            }
            return this.lastAccessedTime + this.liveDurationMs < System.currentTimeMillis();
        }
    }

    /**
     * 缓存基本的对象，Integer、String、实体类等
     *
     * @param key   缓存的键值
     * @param value 缓存的值
     */
    @Override
    public <T> void setCacheObject(final String key, final T value) {
        cache.put(key, value);
    }

    /**
     * 缓存基本的对象，Integer、String、实体类等
     *
     * @param key      缓存的键值
     * @param value    缓存的值
     * @param timeout  时间
     * @param timeUnit 时间颗粒度
     */
    @Override
    public <T> void setCacheObject(final String key, final T value, final Long timeout, final TimeUnit timeUnit) {
        long ms = Duration.of(timeout, timeUnit.toChronoUnit()).toMillis();
        cache.put(key, new ExpireCacheValue(value, ms));
    }

    /**
     * 设置有效时间
     *
     * @param key     Redis键
     * @param timeout 超时时间
     * @return true=设置成功；false=设置失败
     */
    @Override
    public boolean expire(final String key, final long timeout) {
        return false;
    }

    /**
     * 设置有效时间
     *
     * @param key     Redis键
     * @param timeout 超时时间
     * @param unit    时间单位
     * @return true=设置成功；false=设置失败
     */
    @Override
    public boolean expire(final String key, final long timeout, final TimeUnit unit) {
        return false;
    }

    /**
     * 获取有效时间
     *
     * @param key Redis键
     * @return 有效时间
     */
    @Override
    public long getExpire(final String key) {
        return 0L;
    }

    /**
     * 判断 key是否存在
     *
     * @param key 键
     * @return true 存在 false不存在
     */
    @Override
    public Boolean hasKey(String key) {
        Object value = cache.getIfPresent(key);
        if (value == null) {
            return false;
        }
        if (value instanceof ExpireCacheValue expireCacheValue) {
            return !expireCacheValue.hasExpired();
        } else {
            return true;
        }
    }

    /**
     * 获得缓存的基本对象。
     *
     * @param key 缓存键值
     * @return 缓存键值对应的数据
     */
    @Override
    public <T> T getCacheObject(final String key) {
        try {
            Object value = cache.getIfPresent(key);
            if (value == null) {
                return null;
            }
            if (value instanceof ExpireCacheValue expireCacheValue) {
                if (!expireCacheValue.hasExpired()) {
                    expireCacheValue.lastAccessedTime = System.currentTimeMillis();
                    return (T) expireCacheValue.value;
                }
            } else {
                return (T) value;
            }
        } catch (RuntimeException e) {
        }
        return (T) null;
    }

    /**
     * 删除单个对象
     *
     * @param key
     */
    @Override
    public boolean deleteObject(final String key) {
        if (key == null) {
            return false;
        }
        cache.invalidate(key);
        return true;
    }

    /**
     * 删除集合对象
     *
     * @param collection 多个对象
     * @return
     */
    @Override
    public boolean deleteObject(final Collection collection) {
        for (Object key : collection) {
            deleteObject(Objects.toString(key));
        }
        return true;
    }

    /**
     * 缓存List数据
     *
     * @param key      缓存的键值
     * @param dataList 待缓存的List数据
     * @return 缓存的对象
     */
    @Override
    public <T> long setCacheList(final String key, final List<T> dataList) {
        return 0;
    }

    /**
     * 获得缓存的list对象
     *
     * @param key 缓存的键值
     * @return 缓存键值对应的数据
     */
    @Override
    public <T> List<T> getCacheList(final String key) {
        return null;
    }

    /**
     * 缓存Map
     *
     * @param key
     * @param dataMap
     */
    @Override
    public <T> void setCacheMap(final String key, final Map<String, T> dataMap) {
    }

    /**
     * 获得缓存的Map
     *
     * @param key
     * @return
     */
    @Override
    public <T> Map<String, T> getCacheMap(final String key) {
        return null;
    }

    /**
     * 往Hash中存入数据
     *
     * @param key   Redis键
     * @param hKey  Hash键
     * @param value 值
     */
    @Override
    public <T> void setCacheMapValue(final String key, final String hKey, final T value) {
        return;
    }

    /**
     * 获取Hash中的数据
     *
     * @param key  Redis键
     * @param hKey Hash键
     * @return Hash中的对象
     */
    @Override
    public <T> T getCacheMapValue(final String key, final String hKey) {
        return null;
    }

    /**
     * 获取多个Hash中的数据
     *
     * @param key   Redis键
     * @param hKeys Hash键集合
     * @return Hash对象集合
     */
    @Override
    public <T> List<T> getMultiCacheMapValue(final String key, final Collection<Object> hKeys) {
        return null;
    }

    /**
     * 获得缓存的基本对象列表
     *
     * @param pattern 字符串前缀
     * @return 对象列表
     */
    @Override
    public Collection<String> keys(final String pattern) {
        Set<String> keys = cache.asMap().keySet();
        final String query = pattern.endsWith("*") ? pattern.substring(0, pattern.length() - 2) : pattern;
        return keys.stream().
                filter(k -> k.startsWith(query)).
                collect(Collectors.toList());
    }

    /**
     * 发布信息到队列
     *
     * @param channel 队列名
     * @param message 信息
     */
    @Override
    public void convertAndSend(String channel, Object message) {
    }
}
