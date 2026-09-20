package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.DaoshiEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.DaoshiView;


/**
 * 导师
 *
 * @author 
 * @email 
 * @date 2024-02-16 21:12:22
 */
public interface DaoshiService extends IService<DaoshiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DaoshiView> selectListView(Wrapper<DaoshiEntity> wrapper);
   	
   	DaoshiView selectView(@Param("ew") Wrapper<DaoshiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DaoshiEntity> wrapper);
   	
   	PageUtils queryPageGroupBy(Map<String, Object> params,Wrapper<DaoshiEntity> wrapper);

}

