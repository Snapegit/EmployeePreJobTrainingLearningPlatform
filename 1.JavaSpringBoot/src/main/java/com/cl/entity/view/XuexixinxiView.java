package com.cl.entity.view;

import com.cl.entity.XuexixinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import java.io.Serializable;
import com.cl.utils.EncryptUtil;
 

/**
 * 学习信息
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2024-02-16 21:12:22
 */
@TableName("xuexixinxi")
public class XuexixinxiView  extends XuexixinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public XuexixinxiView(){
	}
 
 	public XuexixinxiView(XuexixinxiEntity xuexixinxiEntity){
 	try {
			BeanUtils.copyProperties(this, xuexixinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}


}
