package com.et59.cus.action;

import java.io.File;
import java.io.IOException;

import com.alibaba.fastjson.JSON;
import com.et59.cus.domain.entity.BsProductcategory;
import com.et59.cus.domain.entity.BsSupplier;
import com.et59.cus.domain.entity.TDictionary;
import com.et59.cus.domain.entity.TPaper;
import com.et59.cus.domain.entity.TPrize;
import com.et59.cus.domain.entity.TResearch;
import com.et59.cus.domain.entity.TSubject;
import com.et59.cus.domain.entity.TTeacher;
import com.et59.cus.domain.entity.ex.Pager;
import com.et59.cus.tools.ComonUtil;
import com.et59.cus.tools.FileAction;

/**
 * 师资队伍
 *
 */
public class TeacherAction extends BaseAction {
	/**
	 * 序列化
	 */
	private static final long serialVersionUID = 1L;

	public String oldFileName;
	public String name;
	public File fileData;
	public String fileType;
	public String tampFileName;
	public String fileCount;

	public TTeacher tTeacher;

	public TPrize tPrize;

	public TResearch tResearch;

	public TSubject tSubject;

	public TPaper tPaper;

	public TPrize gettPrize() {
		return tPrize;
	}

	public void settPrize(TPrize tPrize) {
		this.tPrize = tPrize;
	}

	public TResearch gettResearch() {
		return tResearch;
	}

	public void settResearch(TResearch tResearch) {
		this.tResearch = tResearch;
	}

	public TSubject gettSubject() {
		return tSubject;
	}

	public void settSubject(TSubject tSubject) {
		this.tSubject = tSubject;
	}

	public TPaper gettPaper() {
		return tPaper;
	}

	public void settPaper(TPaper tPaper) {
		this.tPaper = tPaper;
	}

	public TTeacher gettTeacher() {
		return tTeacher;
	}

	public void settTeacher(TTeacher tTeacher) {
		this.tTeacher = tTeacher;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getOldFileName() {
		return oldFileName;
	}

	public void setOldFileName(String oldFileName) {
		this.oldFileName = oldFileName;
	}

	public String getFileType() {
		return fileType;
	}

	public void setFileType(String fileType) {
		this.fileType = fileType;
	}

	public String getTampFileName() {
		return tampFileName;
	}

	public void setTampFileName(String tampFileName) {
		this.tampFileName = tampFileName;
	}

	public String getFileCount() {
		return fileCount;
	}

	public void setFileCount(String fileCount) {
		this.fileCount = fileCount;
	}

	/**
	 * 数据字典首页
	 * 
	 * @return
	 */
	public String index() {
		return "index";
	}

	/**
	 * 分页查询师资队伍
	 */
	public void query() {
		String teachernamequery = request.getParameter("teachernamequery");
		String departmentquery = request.getParameter("departmentquery");
		String page = request.getParameter("page"); // 当前页数
		String rows = request.getParameter("rows"); // 每页显示行数
		try {
			TTeacher tTeacher = new TTeacher();
			if (null != teachernamequery && !teachernamequery.equals("")) {
				tTeacher.setTeachername(teachernamequery);
			}
			if (null != departmentquery && !departmentquery.equals("")) {
				tTeacher.setDepartment(Long.valueOf(departmentquery));
			}
			Pager pager = localServiceProxy.queryTeacherBypage(tTeacher,
					Integer.valueOf(rows), Integer.valueOf(page));
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
	public void update() {
		// boolean flag = false;
		// String id = request.getParameter("id");
		// TDictionary tDictionary = getTeacher();
		// try {
		// tDictionary.setDictionaryid(Integer.valueOf(id));
		// localServiceProxy.udateDictionary(tDictionary);
		// flag = true;
		// super.reponseWriter(JSON.toJSONString(flag));
		// } catch (NumberFormatException e) {
		// e.printStackTrace();
		// } catch (Exception e) {
		// e.printStackTrace();
		// }
	}

	// /**
	// * 新增数据字典
	// */
	// public void save(){
	// boolean flag =false ;
	// TDictionary tDictionary = getDictionary();
	// try {
	// localServiceProxy.saveDictionary(tDictionary);
	// flag = true;
	// super.reponseWriter(JSON.toJSONString(flag));
	// } catch (NumberFormatException e) {
	// e.printStackTrace();
	// } catch (Exception e) {
	// e.printStackTrace();
	// }
	// }
	/**
	 * 删除数据字典
	 */
	public void delete() {
		boolean flag = false;
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
	 * 
	 * @return
	 */
	public TTeacher getTeacher() {
		String iimageurll = request.getParameter("iimageurll");
		String dictionaryvalue = request.getParameter("dictionaryvalue");
		String dictionarytype = request.getParameter("dictionarytype");
		String dictionaryremark = request.getParameter("dictionaryremark");
		TTeacher tTeacher = new TTeacher();

		return tTeacher;
	}

	/**
	 * 分页查询供应商
	 */
	public void querySupplierCode() {
		try {
			BsSupplier bsSupplier = new BsSupplier();
			Pager pager = localServiceProxy.querySupplierByPage(bsSupplier,
					100000, 1);
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
	public void queryDictionaryByType() {
		String type = request.getParameter("type");
		try {
			String name = localServiceProxy.querySupplierNameByCode(type);
			TDictionary tDictionary = new TDictionary();
			tDictionary.setDictionarytype(type);
			Pager pager = localServiceProxy.queryDictionaryBypage(tDictionary,
					100000, 1);
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
	public void queryproductcategroyNameByCode() {
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
	public void queryproductcategory() {
		try {
			BsProductcategory bsProductcategory = new BsProductcategory();
			Pager pager = localServiceProxy.queryProductcategoryBypage(
					bsProductcategory, 10000, 1);
			super.reponseWriter(JSON.toJSONString(pager.getRows()));
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void save() {
		String savePath = FileAction.getSavePathForPic();
		TTeacher teacher = getTeacher();
		String result = "";
		String subjectCountStr = request.getParameter("uploader_subject_count");
		String projectCountStr = request.getParameter("uploader_project_count");
		String paperCountStr = request.getParameter("uploader_paper_count");
		int subjectCount = Integer.parseInt(ComonUtil
				.emptyToZero(subjectCountStr));
		int projectCount = Integer.parseInt(ComonUtil
				.emptyToZero(projectCountStr));
		int paperCount = Integer.parseInt(ComonUtil.emptyToZero(paperCountStr));
		for (int i = 1; i <= subjectCount; i++) {
			name = request.getParameter("uploader_subject_" + i + "_name");
			tampFileName = request.getParameter("uploader_subject_" + i
					+ "_tmpname");
			System.out.println(tampFileName + " " + name);
			try {
				// do something with file;
				result += name + "导入完成. <br />";
			} catch (Exception e) {
				result += name + "导入失败:" + e.getMessage() + ". <br />";
				e.printStackTrace();
			}
			System.out.println(result);
		}

		for (int i = 1; i <= projectCount; i++) {
			name = request.getParameter("uploader_subject_" + i + "_name");
			tampFileName = request.getParameter("uploader_subject_" + i
					+ "_tmpname");
			System.out.println(tampFileName + " " + name);
			try {
				// do something with file;
				result += name + "导入完成. <br />";
			} catch (Exception e) {
				result += name + "导入失败:" + e.getMessage() + ". <br />";
				e.printStackTrace();
			}
			System.out.println(result);
		}

		for (int i = 1; i <= paperCount; i++) {
			name = request.getParameter("uploader_subject_" + i + "_name");
			tampFileName = request.getParameter("uploader_subject_" + i
					+ "_tmpname");
			System.out.println(tampFileName + " " + name);
			try {
				// do something with file;
				result += name + "导入完成. <br />";
			} catch (Exception e) {
				result += name + "导入失败:" + e.getMessage() + ". <br />";
				e.printStackTrace();
			}
			System.out.println(result);
		}

		System.out.println(tTeacher.getTeachername()
				+ "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@PIC"
				+ request.getParameter("uploader_pic_name")
				+ request.getParameter("uploader_pic_tmpname")
				+ "****OTHER,1:name:"
				+ request.getParameter("uploader_subject_1_name")
				+ "****tmpname:"
				+ request.getParameter("uploader_subject_1_tmpname")
				+ "&&&&,2:name:"
				+ request.getParameter("uploader_subject_2_name")
				+ "&&&&tmpname:"
				+ request.getParameter("uploader_subject_2_tmpname")
				+ "####,3:name:"
				+ request.getParameter("uploader_subject_3_name")
				+ "####tmpname:"
				+ request.getParameter("uploader_subject_3_tmpname"));
		//
		// List fileList = null;
		// try {
		// fileList = upload.parseRequest(request);
		// } catch (FileUploadException ex) {
		// }
		// Iterator<FileItem> it = fileList.iterator();
		// String name = "";
		// String extName = "";
		// while (it.hasNext()) {
		// FileItem item = it.next();
		// if (!item.isFormField()) {
		// name = item.getName();
		// long size = item.getSize();
		// String type = item.getContentType();
		// //System.out.println(size + " " + type);
		// if (name == null || name.trim().equals("")) {
		// continue;
		// }
		// // 扩展名格式：
		// if (name.lastIndexOf(".") >= 0) {
		// extName = name.substring(name.lastIndexOf("."));
		// }
		// File file = null;
		// do {
		// // 生成文件名：
		// name = UUID.randomUUID().toString();
		// file = new File(savePath + name + extName);
		// //System.out.println(savePath + name + extName);
		// } while (file.exists());
		// File saveFile = new File(savePath + name + extName);
		// try {
		// item.write(saveFile);
		// } catch (Exception e) {
		// e.printStackTrace();
		// }
		// }
		// }
		//
		// // return returnPath+name + extName+"#"+savePath+name+extName;
	}

}
