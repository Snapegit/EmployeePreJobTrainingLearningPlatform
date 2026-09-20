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

import com.cl.entity.XuexixinxiEntity;
import com.cl.entity.view.XuexixinxiView;

import com.cl.service.XuexixinxiService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.MPUtil;
import com.cl.utils.CommonUtil;
import java.io.IOException;

/**
 * 学习信息
 * 后端接口
 * @author 
 * @email 
 * @date 2024-02-16 21:12:22
 */
@RestController
@RequestMapping("/xuexixinxi")
public class XuexixinxiController {
    @Autowired
    private XuexixinxiService xuexixinxiService;



    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,XuexixinxiEntity xuexixinxi,
		HttpServletRequest request){
		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("daoshi")) {
			xuexixinxi.setDaoshizhanghao((String)request.getSession().getAttribute("username"));
		}
		if(tableName.equals("yuangong")) {
			xuexixinxi.setYuangonggonghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<XuexixinxiEntity> ew = new EntityWrapper<XuexixinxiEntity>();

		PageUtils page = xuexixinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, xuexixinxi), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,XuexixinxiEntity xuexixinxi, 
		HttpServletRequest request){
        EntityWrapper<XuexixinxiEntity> ew = new EntityWrapper<XuexixinxiEntity>();

		PageUtils page = xuexixinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, xuexixinxi), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( XuexixinxiEntity xuexixinxi){
       	EntityWrapper<XuexixinxiEntity> ew = new EntityWrapper<XuexixinxiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( xuexixinxi, "xuexixinxi")); 
        return R.ok().put("data", xuexixinxiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(XuexixinxiEntity xuexixinxi){
        EntityWrapper< XuexixinxiEntity> ew = new EntityWrapper< XuexixinxiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( xuexixinxi, "xuexixinxi")); 
		XuexixinxiView xuexixinxiView =  xuexixinxiService.selectView(ew);
		return R.ok("查询学习信息成功").put("data", xuexixinxiView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        XuexixinxiEntity xuexixinxi = xuexixinxiService.selectById(id);
		xuexixinxi = xuexixinxiService.selectView(new EntityWrapper<XuexixinxiEntity>().eq("id", id));
        return R.ok().put("data", xuexixinxi);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        XuexixinxiEntity xuexixinxi = xuexixinxiService.selectById(id);
		xuexixinxi = xuexixinxiService.selectView(new EntityWrapper<XuexixinxiEntity>().eq("id", id));
        return R.ok().put("data", xuexixinxi);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody XuexixinxiEntity xuexixinxi, HttpServletRequest request){
    	xuexixinxi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(xuexixinxi);
        xuexixinxiService.insert(xuexixinxi);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody XuexixinxiEntity xuexixinxi, HttpServletRequest request){
    	xuexixinxi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(xuexixinxi);
        xuexixinxiService.insert(xuexixinxi);
        return R.ok();
    }



    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody XuexixinxiEntity xuexixinxi, HttpServletRequest request){
        //ValidatorUtils.validateEntity(xuexixinxi);
        xuexixinxiService.updateById(xuexixinxi);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        xuexixinxiService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	








}
