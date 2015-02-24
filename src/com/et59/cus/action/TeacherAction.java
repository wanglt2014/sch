package com.et59.cus.action;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.struts2.ServletActionContext;

import com.alibaba.fastjson.JSON;
import com.et59.cus.domain.entity.BsProductcategory;
import com.et59.cus.domain.entity.BsSupplier;
import com.et59.cus.domain.entity.TDictionary;
import com.et59.cus.domain.entity.TTeacher;
import com.et59.cus.domain.entity.ex.Pager;

/**
 * 师资队伍
 *
 */
public class TeacherAction extends BaseAction{
	/**
	 * 序列化
	 */
	private static final long serialVersionUID = 1L;
	/**
	 * 数据字典首页
	 * @return
	 */
	public  String index(){
		return "index";
	}
	/**
	 * 分页查询师资队伍
	 */
	public void query(){
		String teachernamequery = request.getParameter("teachernamequery");  
		String departmentquery = request.getParameter("departmentquery"); 
		String page = request.getParameter("page"); // 当前页数  
	    String rows = request.getParameter("rows"); // 每页显示行数  
		try {
			TTeacher tTeacher  = new TTeacher();
			if(null!=teachernamequery&&!teachernamequery.equals("")){
				tTeacher.setTeachername(teachernamequery);
			}
			if(null!=departmentquery&&!departmentquery.equals("")){
				tTeacher.setDepartment(Integer.valueOf(departmentquery));
			}
			Pager pager = localServiceProxy.queryTeacherBypage(tTeacher,Integer.valueOf(rows),Integer.valueOf(page));
			super.reponseWriter(JSON.toJSONString(pager));
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	/**
	 * 更新产品分类
	 */
	public  void  update(){
		boolean flag =false ;
		String id = request.getParameter("id"); 
		TDictionary tDictionary = getDictionary();
		try {
			tDictionary.setDictionaryid(Integer.valueOf(id));
			localServiceProxy.udateDictionary(tDictionary);
			flag = true;
			super.reponseWriter(JSON.toJSONString(flag));
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
//	/**
//	 * 新增数据字典
//	 */
//	public void save(){
//		boolean flag =false ;
//		TDictionary tDictionary = getDictionary();
//		try {
//			localServiceProxy.saveDictionary(tDictionary);
//			flag = true;
//			super.reponseWriter(JSON.toJSONString(flag));
//		} catch (NumberFormatException e) {
//			e.printStackTrace();
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//	}
	/**
	 * 删除数据字典
	 */
	public void delete(){
		boolean flag =false ;
		String id = request.getParameter("id"); 
		try {
			localServiceProxy.deleteDictionary(Integer.valueOf(id));
			flag = true;
			super.reponseWriter(JSON.toJSONString(flag));
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	/**
	 * 得到数据字典
	 * @return
	 */
	public TDictionary  getDictionary(){
		String iimageurll = request.getParameter("iimageurll"); 
		String dictionaryvalue = request.getParameter("dictionaryvalue"); 
		String dictionarytype = request.getParameter("dictionarytype"); 
		String dictionaryremark = request.getParameter("dictionaryremark"); 
		TDictionary tDictionary = new TDictionary();
		return tDictionary;
	}
	/**
	 * 分页查询供应商
	 */
	public void querySupplierCode(){
		try {
			BsSupplier bsSupplier = new BsSupplier();
			Pager pager = localServiceProxy.querySupplierByPage(bsSupplier,100000,1);
			super.reponseWriter(JSON.toJSONString(pager.getRows()));
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	/**
	 * 通过类别查询数据字典
	 */
	public void queryDictionaryByType(){
		String type = request.getParameter("type"); 
		try {
			String name = localServiceProxy.querySupplierNameByCode(type);
			TDictionary tDictionary = new TDictionary();
			tDictionary.setDictionarytype(type);
			Pager pager = localServiceProxy.queryDictionaryBypage(tDictionary,100000,1);
			super.reponseWriter(JSON.toJSONString(pager.getRows()));
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	/**
	 * 查询产品分类名字
	 */
	public void queryproductcategroyNameByCode(){
		String code = request.getParameter("code"); 
		try {
			String name = localServiceProxy.queryBsProductcategoryByCode(code);
			super.reponseWriter(name);
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	/**
	 * 查询所有产品分类
	 */
	public void queryproductcategory(){
		try {
			BsProductcategory bsProductcategory  = new BsProductcategory();
			Pager pager = localServiceProxy.queryProductcategoryBypage(bsProductcategory,10000,1);
			super.reponseWriter(JSON.toJSONString(pager.getRows()));
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void save() {
		
		System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"+request.getParameter("teachername"));
		
//		String basePath = request.getScheme() + "://"
//		+ request.getServerName() + ":" + request.getServerPort()
//		+ request.getContextPath() + "/";
//		
//		String returnPath=basePath+"intentionPicture/";
			String uploadFileName;
			String name;
			int count = Integer.parseInt(request.getParameter("uploader_count"));
			for (int i = 0; i < count; i++) {
				uploadFileName = request.getParameter("uploader_" + i + "_name");
				name = request.getParameter("uploader_" + i + "_tmpname");
				System.out.println(uploadFileName + " " + name);
//				try {
//					//do something with file;
//					result += uploadFileName + "导入完成. <br />";  
//				} catch(Exception e) {
//					result += uploadFileName + "导入失败:" + e.getMessage() + ". <br />";
//					e.printStackTrace();
//				}
			}
			
//			
//			List fileList = null;
//			try {
//				fileList = upload.parseRequest(request);
//			} catch (FileUploadException ex) {
//			}
//			Iterator<FileItem> it = fileList.iterator();
//			String name = "";
//			String extName = "";
//			while (it.hasNext()) {
//				FileItem item = it.next();
//				if (!item.isFormField()) {
//					name = item.getName();
//					long size = item.getSize();
//					String type = item.getContentType();
//					//System.out.println(size + " " + type);
//					if (name == null || name.trim().equals("")) {
//						continue;
//					}
//					// 扩展名格式：
//					if (name.lastIndexOf(".") >= 0) {
//						extName = name.substring(name.lastIndexOf("."));
//					}
//					File file = null;
//					do {
//						// 生成文件名：
//						name = UUID.randomUUID().toString();
//						file = new File(savePath + name + extName);
//						//System.out.println(savePath + name + extName);
//					} while (file.exists());
//					File saveFile = new File(savePath + name + extName);
//					try {
//						item.write(saveFile);
//					} catch (Exception e) {
//						e.printStackTrace();
//					}
//				}
//			}
//
////		return returnPath+name + extName+"#"+savePath+name+extName;
	}
}

