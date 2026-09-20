package com.cl.entity.view;

import com.cl.entity.ZhidaozixunEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import java.io.Serializable;
import com.cl.utils.EncryptUtil;
 

/**
 * 指导咨询
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2024-02-16 21:12:23
 */
@TableName("zhidaozixun")
public class ZhidaozixunView  extends ZhidaozixunEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ZhidaozixunView(){
	}
 
 	public ZhidaozixunView(ZhidaozixunEntity zhidaozixunEntity){
 	try {
			BeanUtils.copyProperties(this, zhidaozixunEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}


}
