package io.charles.common.utils.file;

import cn.hutool.core.io.IoUtil;
import cn.hutool.extra.spring.SpringUtil;
import io.charles.common.constant.Constants;
import io.charles.common.utils.StringUtils;
import io.charles.framework.config.AppProperties;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.Arrays;

/**
 * 图片处理工具类
 *
 * @author charles
 */
public class ImageUtils {
    private static final Logger log = LoggerFactory.getLogger(ImageUtils.class);

    public static byte[] getImage(String imagePath) {
        InputStream is = getFile(imagePath);
        try {
            return IoUtil.readBytes(is);
        } catch (Exception e) {
            log.error("图片加载异常 {}", e.getMessage());
            return null;
        } finally {
            IoUtil.close(is);
        }
    }

    public static InputStream getFile(String imagePath) {
        try {
            byte[] result = readFile(imagePath);
            result = Arrays.copyOf(result, result.length);
            return new ByteArrayInputStream(result);
        } catch (Exception e) {
            log.error("获取图片异常 {}", e.getMessage());
        }
        return null;
    }

    /**
     * 读取文件为字节数据
     *
     * @param url 地址
     * @return 字节数据
     */
    public static byte[] readFile(String url) {
        InputStream in = null;
        ByteArrayOutputStream baos = null;
        try {
            if (url.startsWith("http")) {
                // 网络地址
                URL urlObj = new URL(url);
                URLConnection urlConnection = urlObj.openConnection();
                urlConnection.setConnectTimeout(30 * 1000);
                urlConnection.setReadTimeout(60 * 1000);
                urlConnection.setDoInput(true);
                in = urlConnection.getInputStream();
            } else {
                // 本机地址
                String localPath = SpringUtil.getBean(AppProperties.class).getProfile();
                String downloadPath = localPath + StringUtils.substringAfter(url, Constants.RESOURCE_PREFIX);
                in = new FileInputStream(downloadPath);
            }
            return IoUtil.readBytes(in);
        } catch (Exception e) {
            log.error("获取文件路径异常 {}", e.getMessage());
            return null;
        } finally {
            IoUtil.close(in);
            IoUtil.close(baos);
        }
    }
}
