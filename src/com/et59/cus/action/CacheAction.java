package com.et59.cus.action;

import java.io.File;
import java.util.List;

import com.alibaba.fastjson.JSON;
import com.et59.cus.cache.Cache;
import com.et59.cus.domain.entity.BsSystem;

/**
 * 
 * <p>
 * Title: CacheAction.java
 * </p>
 * <p>
 * Description: 缓存类管理
 * </p>
 * 
 * @version 2.0
 *
 */
public class CacheAction extends BaseAction {

	/**
	 * 序列化
	 */
	private static final long serialVersionUID = 8242075258533946799L;

	public String index() {
		return "index";
	}

	/**
	 * 清除系统变量
	 */
	public void clearSystemConstant() {
		boolean flag = false;
		try {
			List<BsSystem> list = localServiceProxy.queryBsSystem();
			for (BsSystem row : list) {
				log.info("***清除缓存常量***key[" + row.getSystemKey() + "]");
				Cache.getInstance().remove(row.getSystemKey());
			}
			flag = true;
			super.reponseWriter(JSON.toJSONString(flag));
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	/**
	 * 清除通知，
	 */
	public void clearArticle() {
		boolean flag = false;
		try {
			String realPath = request.getSession().getServletContext().getRealPath("/");
				log.info("***清除缓存***key[]");
				File file = new File(realPath);
				delete(file);
			flag = true;
			super.reponseWriter(JSON.toJSONString(flag));
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	private void delete(File file){  
		if(file.isDirectory()){   
			 File[] files = file.listFiles();   
			 for (File file2 : files) {  
				 if(file2.isFile()){
					 String name=file2.getName();   
					 //Download_,Teacher_,TrainingPlan_
					 if(name.endsWith(".htm")){    
						System.out.println(file2.getAbsolutePath());    
						file2.delete();   
					}  
				 }
				
			}
			
		}
	}
	
}
