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

import com.cl.entity.JihuajinduEntity;
import com.cl.entity.view.JihuajinduView;

import com.cl.service.JihuajinduService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.MPUtil;
import com.cl.utils.CommonUtil;
import java.io.IOException;

/**
 * 计划进度
 * 后端接口
 * @author 
 * @email 
 * @date 2024-02-16 21:12:22
 */
@RestController
@RequestMapping("/jihuajindu")
public class JihuajinduController {
    @Autowired
    private JihuajinduService jihuajinduService;



    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,JihuajinduEntity jihuajindu,
		HttpServletRequest request){
		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("yuangong")) {
			jihuajindu.setYuangonggonghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<JihuajinduEntity> ew = new EntityWrapper<JihuajinduEntity>();

		PageUtils page = jihuajinduService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, jihuajindu), params), params));

        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,JihuajinduEntity jihuajindu, 
		HttpServletRequest request){
        EntityWrapper<JihuajinduEntity> ew = new EntityWrapper<JihuajinduEntity>();

		PageUtils page = jihuajinduService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, jihuajindu), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( JihuajinduEntity jihuajindu){
       	EntityWrapper<JihuajinduEntity> ew = new EntityWrapper<JihuajinduEntity>();
      	ew.allEq(MPUtil.allEQMapPre( jihuajindu, "jihuajindu")); 
        return R.ok().put("data", jihuajinduService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(JihuajinduEntity jihuajindu){
        EntityWrapper< JihuajinduEntity> ew = new EntityWrapper< JihuajinduEntity>();
 		ew.allEq(MPUtil.allEQMapPre( jihuajindu, "jihuajindu")); 
		JihuajinduView jihuajinduView =  jihuajinduService.selectView(ew);
		return R.ok("查询计划进度成功").put("data", jihuajinduView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        JihuajinduEntity jihuajindu = jihuajinduService.selectById(id);
		jihuajindu = jihuajinduService.selectView(new EntityWrapper<JihuajinduEntity>().eq("id", id));
        return R.ok().put("data", jihuajindu);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        JihuajinduEntity jihuajindu = jihuajinduService.selectById(id);
		jihuajindu = jihuajinduService.selectView(new EntityWrapper<JihuajinduEntity>().eq("id", id));
        return R.ok().put("data", jihuajindu);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody JihuajinduEntity jihuajindu, HttpServletRequest request){
    	jihuajindu.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(jihuajindu);
        jihuajinduService.insert(jihuajindu);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody JihuajinduEntity jihuajindu, HttpServletRequest request){
    	jihuajindu.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(jihuajindu);
        jihuajinduService.insert(jihuajindu);
        return R.ok();
    }



    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody JihuajinduEntity jihuajindu, HttpServletRequest request){
        //ValidatorUtils.validateEntity(jihuajindu);
        jihuajinduService.updateById(jihuajindu);//全部更新
        return R.ok();
    }



    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        jihuajinduService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
	








}
