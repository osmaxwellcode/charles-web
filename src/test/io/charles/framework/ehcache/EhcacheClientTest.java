package io.charles.framework.ehcache;

import com.alibaba.fastjson.JSON;
import lombok.extern.slf4j.Slf4j;
import net.sf.ehcache.Cache;
import net.sf.ehcache.Element;
import org.apache.commons.lang3.StringUtils;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.cache.CacheManager;
import org.springframework.cache.ehcache.EhCacheCacheManager;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import javax.annotation.Resource;

@ExtendWith(SpringExtension.class)
@SpringBootTest
@Slf4j
class EhcacheClientTest {
    @Autowired
    private EhcacheCache ehcacheClient;

    @Resource
    private CacheManager cacheManager;

    private Cache cache;

    @BeforeEach
    @Disabled
    void initTest() {
        org.springframework.cache.ehcache.EhCacheCacheManager cacheCacheManager = (EhCacheCacheManager) cacheManager;
        net.sf.ehcache.CacheManager ehCacheManager = cacheCacheManager.getCacheManager();
        cache = ehCacheManager.getCache("RuoYiCache");
    }

    @Test
//    @Disabled
    @DisplayName("测试ehcacheClient操作")
    void get() {
//        ehcacheClient.set();
        String value = ehcacheClient.getCacheObject("test1");
        log.debug("{}",value);
        log.debug(JSON.toJSONString(ehcacheClient.keys("SYS")));
    }

    @Test
    @Disabled
    @DisplayName("测试springCache转ehcache操作")
    void enCacheBySf() {
//        cache.put(new Element("test1", "String Test 123"));
        log.debug((String) cache.get("test1").getObjectValue());
        log.debug("{}", cache.getSize());
        log.debug("{}", cache.isKeyInCache("test1"));
        log.debug("{}", cache.isExpired(new Element("test1", "")));
        // 显示所有的Cache空间
        log.debug("{}", StringUtils.join(cacheManager.getCacheNames(), ","));
    }

    @Test
    @Disabled
    @DisplayName("测试springCache操作")
    void enCacheBySrping() {
        org.springframework.cache.Cache cache = cacheManager.getCache("RuoYiCache");
//        cache.put("test1", "String Test 123");
        log.debug(cache.get("test1", String.class));
    }

    @Test
    @Disabled
    void keys() {
        System.out.println("456");
    }

    @Test
    @Disabled
    void getBulk() {
    }

    @Test
    @Disabled
    void set() {
        System.out.println("增加");
//        ehcacheClient.set("test1",0,"String Test 123");
    }

    @Test
    @Disabled
    void safeSet() {
    }

    @Test
    @Disabled
    void delete() {
    }

    @Test
    @Disabled
    void safeDelete() {
    }
}
