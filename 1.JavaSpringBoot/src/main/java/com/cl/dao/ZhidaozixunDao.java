package com.cl.dao;

import com.cl.entity.ZhidaozixunEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.ZhidaozixunView;


/**
 * 指导咨询
 * 
 * @author 
 * @email 
 * @date 2024-02-16 21:12:23
 */
public interface ZhidaozixunDao extends BaseMapper<ZhidaozixunEntity> {
	
	List<ZhidaozixunView> selectListView(@Param("ew") Wrapper<ZhidaozixunEntity> wrapper);

	List<ZhidaozixunView> selectListView(Pagination page,@Param("ew") Wrapper<ZhidaozixunEntity> wrapper);
	
	ZhidaozixunView selectView(@Param("ew") Wrapper<ZhidaozixunEntity> wrapper);
	
	List<ZhidaozixunView> selectGroupBy(Pagination page,@Param("ew") Wrapper<ZhidaozixunEntity> wrapper);

}
