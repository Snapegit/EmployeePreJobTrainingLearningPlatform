package com.cl.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.cl.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.cl.annotation.IgnoreAuth;

import com.cl.entity.JihuadianpingEntity;
import com.cl.entity.view.JihuadianpingView;

import com.cl.service.JihuadianpingService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.MPUtil;
import com.cl.utils.CommonUtil;
import java.io.IOException;

/**
 * 计划点评
 * 后端接口
 * @author 
 * @email 
 * @date 2024-02-16 21:12:22
 */
@RestController
@RequestMapping("/jihuadianping")
public class JihuadianpingController {
    @Autowired
    private JihuadianpingService jihuadianpingService;



    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,JihuadianpingEntity jihuadianping,
		HttpServletRequest request){
		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("yuangong")) {
			jihuadianping.setYuangonggonghao((String)request.getSession().getAttribute("username"));
		}
		if(tableName.equals("daoshi")) {
			jihuadianping.setDaoshizhanghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<JihuadianpingEntity> ew = new EntityWrapper<JihuadianpingEntity>();

		PageUtils page = jihuadianpingService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, jihuadianping), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,JihuadianpingEntity jihuadianping, 
		HttpServletRequest request){
        EntityWrapper<JihuadianpingEntity> ew = new EntityWrapper<JihuadianpingEntity>();

		PageUtils page = jihuadianpingService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, jihuadianping), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( JihuadianpingEntity jihuadianping){
       	EntityWrapper<JihuadianpingEntity> ew = new EntityWrapper<JihuadianpingEntity>();
      	ew.allEq(MPUtil.allEQMapPre( jihuadianping, "jihuadianping")); 
        return R.ok().put("data", jihuadianpingService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(JihuadianpingEntity jihuadianping){
        EntityWrapper< JihuadianpingEntity> ew = new EntityWrapper< JihuadianpingEntity>();
 		ew.allEq(MPUtil.allEQMapPre( jihuadianping, "jihuadianping")); 
		JihuadianpingView jihuadianpingView =  jihuadianpingService.selectView(ew);
		return R.ok("查询计划点评成功").put("data", jihuadianpingView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        JihuadianpingEntity jihuadianping = jihuadianpingService.selectById(id);
		jihuadianping = jihuadianpingService.selectView(new EntityWrapper<JihuadianpingEntity>().eq("id", id));
        return R.ok().put("data", jihuadianping);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        JihuadianpingEntity jihuadianping = jihuadianpingService.selectById(id);
		jihuadianping = jihuadianpingService.selectView(new EntityWrapper<JihuadianpingEntity>().eq("id", id));
        return R.ok().put("data", jihuadianping);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody JihuadianpingEntity jihuadianping, HttpServletRequest request){
    	jihuadianping.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(jihuadianping);
        jihuadianpingService.insert(jihuadianping);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody JihuadianpingEntity jihuadianping, HttpServletRequest request){
    	jihuadianping.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(jihuadianping);
        jihuadianpingService.insert(jihuadianping);
        return R.ok();
    }



    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody JihuadianpingEntity jihuadianping, HttpServletRequest request){
        //ValidatorUtils.validateEntity(jihuadianping);
        jihuadianpingService.updateById(jihuadianping);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        jihuadianpingService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	








}
