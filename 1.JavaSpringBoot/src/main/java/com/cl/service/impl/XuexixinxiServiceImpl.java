package com.cl.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.cl.utils.PageUtils;
import com.cl.utils.Query;


import com.cl.dao.XuexixinxiDao;
import com.cl.entity.XuexixinxiEntity;
import com.cl.service.XuexixinxiService;
import com.cl.entity.view.XuexixinxiView;

@Service("xuexixinxiService")
public class XuexixinxiServiceImpl extends ServiceImpl<XuexixinxiDao, XuexixinxiEntity> implements XuexixinxiService {
	
	@Override
	public PageUtils queryPageGroupBy(Map<String, Object> params, Wrapper<XuexixinxiEntity> wrapper) {
		Page<XuexixinxiView> page =new Query<XuexixinxiView>(params).getPage();
        page.setRecords(baseMapper.selectGroupBy(page,wrapper));
    	PageUtils pageUtil = new PageUtils(page);
    	return pageUtil;
	}
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<XuexixinxiEntity> page = this.selectPage(
                new Query<XuexixinxiEntity>(params).getPage(),
                new EntityWrapper<XuexixinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<XuexixinxiEntity> wrapper) {
		  Page<XuexixinxiView> page =new Query<XuexixinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<XuexixinxiView> selectListView(Wrapper<XuexixinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public XuexixinxiView selectView(Wrapper<XuexixinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
