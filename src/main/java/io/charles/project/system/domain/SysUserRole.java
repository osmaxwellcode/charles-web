package io.charles.project.system.domain;

import lombok.Data;

/**
 * 用户和角色关联 sys_user_role
 *
 * @author charles
 */
@Data
public class SysUserRole {
    /**
     * 用户ID
     */
    private Long userId;

    /**
     * 角色ID
     */
    private Long roleId;
}
