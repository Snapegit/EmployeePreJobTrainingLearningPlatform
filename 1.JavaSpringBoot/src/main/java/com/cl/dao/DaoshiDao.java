package com.cl.dao;

import com.cl.entity.DaoshiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.DaoshiView;


/**
 * 导师
 * 
 * @author 
 * @email 
 * @date 2024-02-16 21:12:22
 */
public interface DaoshiDao extends BaseMapper<DaoshiEntity> {
	
	List<DaoshiView> selectListView(@Param("ew") Wrapper<DaoshiEntity> wrapper);

	List<DaoshiView> selectListView(Pagination page,@Param("ew") Wrapper<DaoshiEntity> wrapper);
	
	DaoshiView selectView(@Param("ew") Wrapper<DaoshiEntity> wrapper);
	
	List<DaoshiView> selectGroupBy(Pagination page,@Param("ew") Wrapper<DaoshiEntity> wrapper);

}
