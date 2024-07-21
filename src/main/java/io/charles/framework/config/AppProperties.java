package io.charles.framework.config;

import cn.hutool.extra.spring.SpringUtil;
import lombok.Getter;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * 读取项目相关配置
 *
 * @author charles
 */
@Getter
@Setter
@Component
@ConfigurationProperties(prefix = "app")
public class AppProperties {
    /**
     * 用户数据的路径
     */
    private String profile;
    /**
     * 获取地址开关
     */
    private boolean addressEnabled;
    /**
     * 项目名称
     */
    private String name;
    /**
     * 版本
     */
    private String version;
    /**
     * 版权年份
     */
    private String copyrightYear;
    /**
     * 实例演示开关
     */
    private boolean demoEnabled;
    /**
     * 认证类型,验证码类型 math 数组计算 char 字符验证
     */
    private String captchaType;

    public static String getGlobalProfile() {
        return SpringUtil.getBean(AppProperties.class).getProfile();
    }

    /**
     * 获取导入上传路径
     */
    public static String getImportPath() {
        return getGlobalProfile() + "/import";
    }

    /**
     * 获取头像上传路径
     */
    public static String getAvatarPath() {
        return getGlobalProfile() + "/avatar";
    }

    /**
     * 获取下载路径
     */
    public static String getDownloadPath() {
        return getGlobalProfile() + "/download/";
    }

    /**
     * 获取上传路径
     */
    public static String getUploadPath() {
        return getGlobalProfile() + "/upload";
    }
}
