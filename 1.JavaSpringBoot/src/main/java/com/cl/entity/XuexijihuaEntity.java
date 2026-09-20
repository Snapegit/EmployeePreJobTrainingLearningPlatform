package com.cl.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 学习计划
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2024-02-16 21:12:22
 */
@TableName("xuexijihua")
public class XuexijihuaEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public XuexijihuaEntity() {
		
	}
	
	public XuexijihuaEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 员工工号
	 */
					
	private String yuangonggonghao;
	
	/**
	 * 员工姓名
	 */
					
	private String yuangongxingming;
	
	/**
	 * 计划标题
	 */
					
	private String jihuabiaoti;
	
	/**
	 * 开始日期
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat 		
	private Date kaishiriqi;
	
	/**
	 * 结束日期
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat 		
	private Date jieshuriqi;
	
	/**
	 * 计划内容
	 */
					
	private String jihuaneirong;
	
	/**
	 * 计划时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date jihuashijian;
	
	/**
	 * 备注
	 */
					
	private String beizhu;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：员工工号
	 */
	public void setYuangonggonghao(String yuangonggonghao) {
		this.yuangonggonghao = yuangonggonghao;
	}
	/**
	 * 获取：员工工号
	 */
	public String getYuangonggonghao() {
		return yuangonggonghao;
	}
	/**
	 * 设置：员工姓名
	 */
	public void setYuangongxingming(String yuangongxingming) {
		this.yuangongxingming = yuangongxingming;
	}
	/**
	 * 获取：员工姓名
	 */
	public String getYuangongxingming() {
		return yuangongxingming;
	}
	/**
	 * 设置：计划标题
	 */
	public void setJihuabiaoti(String jihuabiaoti) {
		this.jihuabiaoti = jihuabiaoti;
	}
	/**
	 * 获取：计划标题
	 */
	public String getJihuabiaoti() {
		return jihuabiaoti;
	}
	/**
	 * 设置：开始日期
	 */
	public void setKaishiriqi(Date kaishiriqi) {
		this.kaishiriqi = kaishiriqi;
	}
	/**
	 * 获取：开始日期
	 */
	public Date getKaishiriqi() {
		return kaishiriqi;
	}
	/**
	 * 设置：结束日期
	 */
	public void setJieshuriqi(Date jieshuriqi) {
		this.jieshuriqi = jieshuriqi;
	}
	/**
	 * 获取：结束日期
	 */
	public Date getJieshuriqi() {
		return jieshuriqi;
	}
	/**
	 * 设置：计划内容
	 */
	public void setJihuaneirong(String jihuaneirong) {
		this.jihuaneirong = jihuaneirong;
	}
	/**
	 * 获取：计划内容
	 */
	public String getJihuaneirong() {
		return jihuaneirong;
	}
	/**
	 * 设置：计划时间
	 */
	public void setJihuashijian(Date jihuashijian) {
		this.jihuashijian = jihuashijian;
	}
	/**
	 * 获取：计划时间
	 */
	public Date getJihuashijian() {
		return jihuashijian;
	}
	/**
	 * 设置：备注
	 */
	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}
	/**
	 * 获取：备注
	 */
	public String getBeizhu() {
		return beizhu;
	}

}
