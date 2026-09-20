package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.JihuajinduEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.JihuajinduView;


/**
 * 计划进度
 *
 * @author 
 * @email 
 * @date 2024-02-16 21:12:22
 */
public interface JihuajinduService extends IService<JihuajinduEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JihuajinduView> selectListView(Wrapper<JihuajinduEntity> wrapper);
   	
   	JihuajinduView selectView(@Param("ew") Wrapper<JihuajinduEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JihuajinduEntity> wrapper);
   	
   	PageUtils queryPageGroupBy(Map<String, Object> params,Wrapper<JihuajinduEntity> wrapper);

}

