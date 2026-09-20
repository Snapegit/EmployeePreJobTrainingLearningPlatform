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


import com.cl.dao.JihuajinduDao;
import com.cl.entity.JihuajinduEntity;
import com.cl.service.JihuajinduService;
import com.cl.entity.view.JihuajinduView;

@Service("jihuajinduService")
public class JihuajinduServiceImpl extends ServiceImpl<JihuajinduDao, JihuajinduEntity> implements JihuajinduService {
	
	@Override
	public PageUtils queryPageGroupBy(Map<String, Object> params, Wrapper<JihuajinduEntity> wrapper) {
		Page<JihuajinduView> page =new Query<JihuajinduView>(params).getPage();
        page.setRecords(baseMapper.selectGroupBy(page,wrapper));
    	PageUtils pageUtil = new PageUtils(page);
    	return pageUtil;
	}
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JihuajinduEntity> page = this.selectPage(
                new Query<JihuajinduEntity>(params).getPage(),
                new EntityWrapper<JihuajinduEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JihuajinduEntity> wrapper) {
		  Page<JihuajinduView> page =new Query<JihuajinduView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
	@Override
	public List<JihuajinduView> selectListView(Wrapper<JihuajinduEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JihuajinduView selectView(Wrapper<JihuajinduEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
