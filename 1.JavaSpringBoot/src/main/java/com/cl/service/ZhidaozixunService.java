package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.ZhidaozixunEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.ZhidaozixunView;


/**
 * 指导咨询
 *
 * @author 
 * @email 
 * @date 2024-02-16 21:12:23
 */
public interface ZhidaozixunService extends IService<ZhidaozixunEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ZhidaozixunView> selectListView(Wrapper<ZhidaozixunEntity> wrapper);
   	
   	ZhidaozixunView selectView(@Param("ew") Wrapper<ZhidaozixunEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ZhidaozixunEntity> wrapper);
   	
   	PageUtils queryPageGroupBy(Map<String, Object> params,Wrapper<ZhidaozixunEntity> wrapper);

}

