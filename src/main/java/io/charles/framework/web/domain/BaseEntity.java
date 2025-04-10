package io.charles.framework.web.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.io.Serializable;
import java.util.Map;

/**
 * Entity基类
 *
 * @author charles
 */
@Data
public class BaseEntity implements Serializable {
    private static final long serialVersionUID = 1L;

    /**
     * 搜索值
     */
    private String searchValue;

    /**
     * 创建者
     */
    private String createBy;

    /**
     * 创建时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private String createTime;

    /**
     * 更新者
     */
    private String updateBy;

    /**
     * 更新时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private String updateTime;

    /**
     * 备注
     */
    private String remark;

    /**
     * 请求参数
     */
    private Map<String, Object> params;
}
