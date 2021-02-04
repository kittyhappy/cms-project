package com.gem.back.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.gem.back.entity.SysMenu;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;

/**
 * <p>
 * 菜单管理 Mapper 接口
 * </p>
 */
@Repository
public interface SysMenuMapper extends BaseMapper<SysMenu> {
    /**
     * 根据用户名获取对应的菜单
     */
    List<SysMenu> findByUserName(@Param("username") String username);
}
