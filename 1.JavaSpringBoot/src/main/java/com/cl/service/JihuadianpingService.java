package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.JihuadianpingEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.JihuadianpingView;


/**
 * 计划点评
 *
 * @author 
 * @email 
 * @date 2024-02-16 21:12:22
 */
public interface JihuadianpingService extends IService<JihuadianpingEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JihuadianpingView> selectListView(Wrapper<JihuadianpingEntity> wrapper);
   	
   	JihuadianpingView selectView(@Param("ew") Wrapper<JihuadianpingEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JihuadianpingEntity> wrapper);
   	
   	PageUtils queryPageGroupBy(Map<String, Object> params,Wrapper<JihuadianpingEntity> wrapper);

}

