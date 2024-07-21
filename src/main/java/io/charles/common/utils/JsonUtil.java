package io.charles.common.utils;

import cn.hutool.core.util.StrUtil;
import cn.hutool.extra.spring.SpringUtil;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.Getter;
import lombok.extern.slf4j.Slf4j;

import java.io.File;

/**
 * Created on 2022/8/14.
 *
 * @author charles
 */
@Slf4j
public class JsonUtil {
    @Getter(lazy = true)
    private final static ObjectMapper ObjectMapper = SpringUtil.getBean(ObjectMapper.class);

    public static <T> T fromJson(String json, Class<T> className) {
        T t = null;
        try {
            if (StrUtil.isNotBlank(json)) {
                t = getObjectMapper().readValue(json, className);
            }
        } catch (Exception e) {
            log.warn("反序列化json出现异常{}", e.getMessage());
        }
        return t;
    }

    public static <T> T fromFile(File file, Class<T> className) {
        T t = null;
        try {
            if (file != null && file.exists()) {
                t = getObjectMapper().readValue(file, className);
            }
        } catch (Exception e) {
            log.warn("反序列化json出现异常{}", e.getMessage());
        }
        return t;
    }

    public static boolean toFile(File file, Object o) {
        try {
            if (file != null && file.exists()) {
                getObjectMapper().writeValue(file, o);
                return true;
            }
        } catch (Exception e) {
            log.warn("序列化json到文件出现异常{}", e.getMessage());
        }
        return false;
    }

    public static <T> T fromJson(String json, TypeReference<T> typeReference) {
        T t = null;
        try {
            if (StrUtil.isNotBlank(json)) {
                t = getObjectMapper().readValue(json, typeReference);
            }
        } catch (Exception e) {
            log.warn("反序列化json出现异常{}", e.getMessage());
        }
        return t;
    }

    public static String toJson(Object o) {
        try {
            if (o != null) {
                return getObjectMapper().writeValueAsString(o);
            }
        } catch (Exception e) {
            log.warn("序列化json出现异常{}", e.getMessage());
        }
        return null;
    }
}
