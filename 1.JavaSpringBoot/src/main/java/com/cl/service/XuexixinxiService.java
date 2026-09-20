package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.XuexixinxiEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.XuexixinxiView;


/**
 * 学习信息
 *
 * @author 
 * @email 
 * @date 2024-02-16 21:12:22
 */
public interface XuexixinxiService extends IService<XuexixinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<XuexixinxiView> selectListView(Wrapper<XuexixinxiEntity> wrapper);
   	
   	XuexixinxiView selectView(@Param("ew") Wrapper<XuexixinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<XuexixinxiEntity> wrapper);
   	
   	PageUtils queryPageGroupBy(Map<String, Object> params,Wrapper<XuexixinxiEntity> wrapper);

}

