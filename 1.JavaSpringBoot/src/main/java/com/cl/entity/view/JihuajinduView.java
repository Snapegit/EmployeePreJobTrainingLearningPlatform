package com.cl.entity.view;

import com.cl.entity.JihuajinduEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import java.io.Serializable;
import com.cl.utils.EncryptUtil;
 

/**
 * 计划进度
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2024-02-16 21:12:22
 */
@TableName("jihuajindu")
public class JihuajinduView  extends JihuajinduEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public JihuajinduView(){
	}
 
 	public JihuajinduView(JihuajinduEntity jihuajinduEntity){
 	try {
			BeanUtils.copyProperties(this, jihuajinduEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}


}
