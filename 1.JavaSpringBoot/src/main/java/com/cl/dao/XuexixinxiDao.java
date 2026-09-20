package com.cl.dao;

import com.cl.entity.XuexixinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.XuexixinxiView;


/**
 * 学习信息
 * 
 * @author 
 * @email 
 * @date 2024-02-16 21:12:22
 */
public interface XuexixinxiDao extends BaseMapper<XuexixinxiEntity> {
	
	List<XuexixinxiView> selectListView(@Param("ew") Wrapper<XuexixinxiEntity> wrapper);

	List<XuexixinxiView> selectListView(Pagination page,@Param("ew") Wrapper<XuexixinxiEntity> wrapper);
	
	XuexixinxiView selectView(@Param("ew") Wrapper<XuexixinxiEntity> wrapper);
	
	List<XuexixinxiView> selectGroupBy(Pagination page,@Param("ew") Wrapper<XuexixinxiEntity> wrapper);

}
