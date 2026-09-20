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


import com.cl.dao.JihuadianpingDao;
import com.cl.entity.JihuadianpingEntity;
import com.cl.service.JihuadianpingService;
import com.cl.entity.view.JihuadianpingView;

@Service("jihuadianpingService")
public class JihuadianpingServiceImpl extends ServiceImpl<JihuadianpingDao, JihuadianpingEntity> implements JihuadianpingService {
	
	@Override
	public PageUtils queryPageGroupBy(Map<String, Object> params, Wrapper<JihuadianpingEntity> wrapper) {
		Page<JihuadianpingView> page =new Query<JihuadianpingView>(params).getPage();
        page.setRecords(baseMapper.selectGroupBy(page,wrapper));
    	PageUtils pageUtil = new PageUtils(page);
    	return pageUtil;
	}
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JihuadianpingEntity> page = this.selectPage(
                new Query<JihuadianpingEntity>(params).getPage(),
                new EntityWrapper<JihuadianpingEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JihuadianpingEntity> wrapper) {
		  Page<JihuadianpingView> page =new Query<JihuadianpingView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<JihuadianpingView> selectListView(Wrapper<JihuadianpingEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JihuadianpingView selectView(Wrapper<JihuadianpingEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
