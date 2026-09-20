package com.cl.dao;

import com.cl.entity.JihuajinduEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.JihuajinduView;


/**
 * 计划进度
 * 
 * @author 
 * @email 
 * @date 2024-02-16 21:12:22
 */
public interface JihuajinduDao extends BaseMapper<JihuajinduEntity> {
	
	List<JihuajinduView> selectListView(@Param("ew") Wrapper<JihuajinduEntity> wrapper);

	List<JihuajinduView> selectListView(Pagination page,@Param("ew") Wrapper<JihuajinduEntity> wrapper);
	
	JihuajinduView selectView(@Param("ew") Wrapper<JihuajinduEntity> wrapper);
	
	List<JihuajinduView> selectGroupBy(Pagination page,@Param("ew") Wrapper<JihuajinduEntity> wrapper);

}
