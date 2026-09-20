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

import com.cl.entity.ZhidaozixunEntity;
import com.cl.entity.view.ZhidaozixunView;

import com.cl.service.ZhidaozixunService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.MPUtil;
import com.cl.utils.CommonUtil;
import java.io.IOException;

/**
 * 指导咨询
 * 后端接口
 * @author 
 * @email 
 * @date 2024-02-16 21:12:23
 */
@RestController
@RequestMapping("/zhidaozixun")
public class ZhidaozixunController {
    @Autowired
    private ZhidaozixunService zhidaozixunService;



    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,ZhidaozixunEntity zhidaozixun,
		HttpServletRequest request){
		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("daoshi")) {
			zhidaozixun.setDaoshizhanghao((String)request.getSession().getAttribute("username"));
		}
		if(tableName.equals("yuangong")) {
			zhidaozixun.setYuangonggonghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<ZhidaozixunEntity> ew = new EntityWrapper<ZhidaozixunEntity>();

		PageUtils page = zhidaozixunService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, zhidaozixun), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,ZhidaozixunEntity zhidaozixun, 
		HttpServletRequest request){
        EntityWrapper<ZhidaozixunEntity> ew = new EntityWrapper<ZhidaozixunEntity>();

		PageUtils page = zhidaozixunService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, zhidaozixun), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( ZhidaozixunEntity zhidaozixun){
       	EntityWrapper<ZhidaozixunEntity> ew = new EntityWrapper<ZhidaozixunEntity>();
      	ew.allEq(MPUtil.allEQMapPre( zhidaozixun, "zhidaozixun")); 
        return R.ok().put("data", zhidaozixunService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(ZhidaozixunEntity zhidaozixun){
        EntityWrapper< ZhidaozixunEntity> ew = new EntityWrapper< ZhidaozixunEntity>();
 		ew.allEq(MPUtil.allEQMapPre( zhidaozixun, "zhidaozixun")); 
		ZhidaozixunView zhidaozixunView =  zhidaozixunService.selectView(ew);
		return R.ok("查询指导咨询成功").put("data", zhidaozixunView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        ZhidaozixunEntity zhidaozixun = zhidaozixunService.selectById(id);
		zhidaozixun = zhidaozixunService.selectView(new EntityWrapper<ZhidaozixunEntity>().eq("id", id));
        return R.ok().put("data", zhidaozixun);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        ZhidaozixunEntity zhidaozixun = zhidaozixunService.selectById(id);
		zhidaozixun = zhidaozixunService.selectView(new EntityWrapper<ZhidaozixunEntity>().eq("id", id));
        return R.ok().put("data", zhidaozixun);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody ZhidaozixunEntity zhidaozixun, HttpServletRequest request){
    	zhidaozixun.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(zhidaozixun);
        zhidaozixunService.insert(zhidaozixun);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody ZhidaozixunEntity zhidaozixun, HttpServletRequest request){
    	zhidaozixun.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(zhidaozixun);
        zhidaozixunService.insert(zhidaozixun);
        return R.ok();
    }



    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody ZhidaozixunEntity zhidaozixun, HttpServletRequest request){
        //ValidatorUtils.validateEntity(zhidaozixun);
        zhidaozixunService.updateById(zhidaozixun);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        zhidaozixunService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	








}
