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


import com.cl.dao.DaoshiDao;
import com.cl.entity.DaoshiEntity;
import com.cl.service.DaoshiService;
import com.cl.entity.view.DaoshiView;

@Service("daoshiService")
public class DaoshiServiceImpl extends ServiceImpl<DaoshiDao, DaoshiEntity> implements DaoshiService {
	
	@Override
	public PageUtils queryPageGroupBy(Map<String, Object> params, Wrapper<DaoshiEntity> wrapper) {
		Page<DaoshiView> page =new Query<DaoshiView>(params).getPage();
        page.setRecords(baseMapper.selectGroupBy(page,wrapper));
    	PageUtils pageUtil = new PageUtils(page);
    	return pageUtil;
	}
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DaoshiEntity> page = this.selectPage(
                new Query<DaoshiEntity>(params).getPage(),
                new EntityWrapper<DaoshiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DaoshiEntity> wrapper) {
		  Page<DaoshiView> page =new Query<DaoshiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<DaoshiView> selectListView(Wrapper<DaoshiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DaoshiView selectView(Wrapper<DaoshiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
