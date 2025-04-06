package io.charles.project.system.domain;

import io.charles.framework.aspectj.lang.annotation.Excel;
import io.charles.framework.aspectj.lang.annotation.Excel.ColumnType;
import io.charles.framework.web.domain.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;

/**
 * 字典类型表 sys_dict_type
 *
 * @author charles
 */
@EqualsAndHashCode(callSuper = true)
@Data
public class SysDictType extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 字典主键
     */
    @Excel(name = "字典主键", cellType = ColumnType.NUMERIC)
    private Long dictId;

    /**
     * 字典名称
     */
    @Excel(name = "字典名称")
    @NotBlank(message = "字典名称不能为空")
    @Size(min = 0, max = 100, message = "字典类型名称长度不能超过100个字符")
    private String dictName;

    /**
     * 字典类型
     */
    @Excel(name = "字典类型")
    @NotBlank(message = "字典类型不能为空")
    @Size(min = 0, max = 100, message = "字典类型类型长度不能超过100个字符")
    private String dictType;

    /**
     * 状态（0正常 1停用）
     */
    @Excel(name = "状态", readConverterExp = "0=正常,1=停用")
    private String status;
}
