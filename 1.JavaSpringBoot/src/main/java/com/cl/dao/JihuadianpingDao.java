package com.cl.dao;

import com.cl.entity.JihuadianpingEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.JihuadianpingView;


/**
 * 计划点评
 * 
 * @author 
 * @email 
 * @date 2024-02-16 21:12:22
 */
public interface JihuadianpingDao extends BaseMapper<JihuadianpingEntity> {
	
	List<JihuadianpingView> selectListView(@Param("ew") Wrapper<JihuadianpingEntity> wrapper);

	List<JihuadianpingView> selectListView(Pagination page,@Param("ew") Wrapper<JihuadianpingEntity> wrapper);
	
	JihuadianpingView selectView(@Param("ew") Wrapper<JihuadianpingEntity> wrapper);
	
	List<JihuadianpingView> selectGroupBy(Pagination page,@Param("ew") Wrapper<JihuadianpingEntity> wrapper);

}
