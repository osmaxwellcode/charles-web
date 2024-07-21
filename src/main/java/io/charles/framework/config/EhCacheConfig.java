package io.charles.framework.config;

import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.Configuration;

@Configuration
// 启动缓存，必须启用才能再容器中注入EhCache
@EnableCaching
public class EhCacheConfig {
//    /*
//     * ehcache 主要的管理器
//     */
//    @Bean(name = "BaseDataCache")
//    public EhCacheCacheManager ehCacheCacheManager(EhCacheManagerFactoryBean bean){
//        return new EhCacheCacheManager(bean.getObject ());
//    }
//
//    /*
//     * 据shared与否的设置,Spring分别通过CacheManager.create()或new CacheManager()方式来创建一个ehcache基地.
//     */
//    @Bean
//    public EhCacheManagerFactoryBean ehCacheManagerFactoryBean(){
//        EhCacheManagerFactoryBean cacheManagerFactoryBean = new EhCacheManagerFactoryBean ();
//        cacheManagerFactoryBean.setConfigLocation (new ClassPathResource("ehcache.xml"));
//        cacheManagerFactoryBean.setShared (true);
//        return cacheManagerFactoryBean;
//    }


//    @Bean
//    public EhCacheFactoryBean cacheBean(){
//        EhCacheFactoryBean cache = new EhCacheFactoryBean();
//        cache.setBeanName("BaseDataCache");
//        cache.setCacheManager(new EhCacheManagerFactoryBean().getObject());
//        return cache;
//    }

//    @Bean
//    public EhcacheClient cacheClient(){
//        EhcacheClient ehcacheClient = new EhcacheClient();
//        ehcacheClient.setCache(cacheBean().getObject());
//        return ehcacheClient;
//    }
}
