package com.et59.cus.action;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

import com.alibaba.fastjson.JSON;
import com.et59.cus.domain.entity.TSubject;
import com.et59.cus.domain.entity.TSubjectExample;
import com.et59.cus.domain.entity.ex.Pager;
import com.et59.cus.tools.ComonUtil;
import com.et59.cus.tools.Constant;

/**
 * <p>
 * Title: 课程
 * </p>
 * <p>
 * Description:
 * </p>
 *
 */
public class SubjectAction extends BaseAction {
	/**
	 * @Fields serialVersionUID : 序列化ID
	 */
	private static final long serialVersionUID = 1L;

	Logger log = Logger.getLogger(this.getClass());

	/**
	 * 课程详情
	 */
	protected TSubject subject;

	/**
	 * @Title: toSubjectPage
	 * @Description: 跳转到课程列表
	 * @param @return /news/news.jsp
	 * @return String 返回类型
	 * @throws
	 */

	public String toSubjectPage() {
		super.commonQueryForSubject();
		return "to_subject_index";
	}

	/**
	 * 查询课程列表
	 * 
	 * @return
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public String doQuerySubject() {
		if (log.isDebugEnabled()) {
			log.debug("查询交易信息currentPage>>>>:" + currentPage);
		}
		try {
			// TDownload download = new TDownload();
			// download.setFileisvalid(Constant.ISVALID_1);
			Map map = localServiceEXProxy.querySubjectForLimit(new TSubject(),
					Constant.PAGESIZE, currentPage);
			if (ComonUtil.validateMapResult(map)) {
				subjectList = (List<TSubject>) map.get(Constant.SUBJECT_LIST);
				totalCount = (Integer) map.get(Constant.TOTALCOUNT);
				totalPageCount = (Integer) map.get(Constant.TOTALPAGECOUNT);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "subject_result";
	}

	/**
	 * @Title: downloaddetail
	 * @Description: 跳转到资料下载详细页面
	 * @param @return 设定文件
	 * @return String 返回类型
	 * @throws
	 */
	public String subjectDetail() {
		super.commonQueryForSubject();
		String id = request.getParameter("id");
		try {
			// subject =
			// localServiceEXProxy.queryDownloadById(Long.valueOf(id));
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "download_detail";
	}

	/**
	 * 后台首页
	 * 
	 * @return
	 */
	public String index() {
		return "index";
	}

	/**
	 * 查询课程-分页
	 */
	public void query() {
		String page = request.getParameter("page"); // 当前页数
		String rows = request.getParameter("rows"); // 每页显示行数
		String subjectname = request.getParameter("subjectname");
		// String roleNamequery = request.getParameter("roleNamequery");
		if (page == null || rows == null) {
			page = "1";
			rows = "1000";
		}
		Pager pager = new Pager();
		try {
			 TSubject tSubject = new TSubject();
			 tSubject.setSubjectname(subjectname);
			Map map = localServiceEXProxy.querySubjectForLimit(tSubject,
					Integer.valueOf(rows), Integer.valueOf(page));
			pager.setRows(map.get(Constant.SUBJECT_LIST));
			pager.setTotal((Integer) map.get(Constant.TOTALCOUNT));
			super.reponseWriter(JSON.toJSONString(pager));
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public TSubject getTSubject() {
		String subjectno = request.getParameter("subjectno");
		String subjectname = request.getParameter("subjectname");
		String subjecttype = request.getParameter("subjecttype");
		String subjecttypename = request.getParameter("subjecttypename");
		String subjecttext = request.getParameter("subjecttext");

		String subjectcredit = request.getParameter("subjectcredit");
		String subjectyear = request.getParameter("subjectyear");
		String subjectdepartment = request.getParameter("subjectdepartment");
		String subjectdepartmentname = request
				.getParameter("subjectdepartmentname");
		String classhourfortheory = request.getParameter("classhourfortheory");
		String classhourfortest = request.getParameter("classhourfortest");
		String classhourformachine = request
				.getParameter("classhourformachine");
		String classhourforother = request.getParameter("classhourforother");
		String termclasshourforone = request
				.getParameter("termclasshourforone");
		String termclasshourfortwo = request
				.getParameter("termclasshourfortwo");
		String termclasshourforthree = request
				.getParameter("termclasshourforthree");
		String termclasshourforfour = request
				.getParameter("termclasshourforfour");
		String termclasshourforfive = request
				.getParameter("termclasshourforfive");
		String termclasshourforsix = request
				.getParameter("termclasshourforsix");
		String termclasshourforseven = request
				.getParameter("termclasshourforseven");
		String termclasshourforeight = request
				.getParameter("termclasshourforeight");
		String subjectremark = request.getParameter("subjectremark");
		TSubject tSubject = new TSubject();
		tSubject.setSubjecttype(subjecttype);
		tSubject.setSubjectno(subjectno);
		tSubject.setSubjectname(subjectname);
		tSubject.setSubjecttext(subjecttext);
		tSubject.setSubjecttypename(subjecttypename);
		tSubject.setClasshourfortheory(classhourfortheory);
		tSubject.setClasshourformachine(classhourformachine);
		tSubject.setClasshourforother(classhourforother);
		tSubject.setClasshourfortest(classhourfortest);
		tSubject.setSubjectcredit(subjectcredit);
		tSubject.setSubjectdepartment(subjectdepartment);
		tSubject.setSubjectdepartmentname(subjectdepartmentname);
		tSubject.setSubjectremark(subjectremark);
		tSubject.setTermclasshourfortwo(termclasshourfortwo);
		tSubject.setTermclasshourforthree(termclasshourforthree);
		tSubject.setTermclasshourforeight(termclasshourforeight);
		tSubject.setTermclasshourforfive(termclasshourforfive);
		tSubject.setTermclasshourforfour(termclasshourforfour);
		tSubject.setTermclasshourforone(termclasshourforone);
		tSubject.setTermclasshourforseven(termclasshourforseven);
		tSubject.setTermclasshourforsix(termclasshourforsix);
		tSubject.setSubjectyear(subjectyear);
		return tSubject;
	}

	/**
	 * 保存课程
	 */
	public void save() {
		boolean flag = false;
		TSubject tSubject = getTSubject();

		try {
			HashMap downloadIdMap = saveDownloadInfo();
			tSubject.setSubjectoutline((Long) downloadIdMap.get("outlineDLId"));
			tSubject.setSubjectschedule((Long) downloadIdMap
					.get("scheduleDLId"));
			tSubject.setSubjectinfo((Long) downloadIdMap.get("subjectDLId"));
			localServiceEXProxy.saveTSubject(tSubject);
			flag = true;
			super.reponseWriter(JSON.toJSONString(flag));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public HashMap saveDownloadInfo() {
		HashMap map = new HashMap();
		HashMap returnmap = new HashMap();
		try {
			// 1.保存教学大纲附件
			map.put("paraName", "uploader_outline_name");
			map.put("paraTmpname", "uploader_outline_tmpname");
			map.put("infotype", "outline");
			Long outlineDLId = saveTDownloadInfo(map);

			// 2.保存教学进度附件
			map.put("paraName", "uploader_schedule_name");
			map.put("paraTmpname", "uploader_schedule_tmpname");
			map.put("infotype", "schedule");
			Long scheduleDLId = saveTDownloadInfo(map);

			// 3.保存课程资料附件
			map.put("paraName", "uploader_subject_name");
			map.put("paraTmpname", "uploader_subject_tmpname");
			map.put("infotype", "subject");
			Long subjectDLId = saveTDownloadInfo(map);

			returnmap.put("outlineDLId", outlineDLId);
			returnmap.put("scheduleDLId", scheduleDLId);
			returnmap.put("subjectDLId", subjectDLId);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return returnmap;
	}

	/**
	 * 编辑课程
	 */
	public void update() {
		boolean flag = false;
	    String id = this.request.getParameter("id");
	    TSubject tSubject = getTSubject();
	    tSubject.setSubjectid(Long.valueOf(id));
	    try
	    {
	      HashMap downloadIdMap = saveDownloadInfo();
	      if (downloadIdMap.get("outlineDLId") != null) {
	        tSubject.setSubjectoutline((Long)downloadIdMap.get("outlineDLId"));
	      }
	      if (downloadIdMap
	        .get("scheduleDLId") != null) {
	        tSubject.setSubjectschedule(
	          (Long)downloadIdMap.get("scheduleDLId"));
	      }
	      if (downloadIdMap.get("subjectDLId") != null) {
	        tSubject.setSubjectinfo((Long)downloadIdMap.get("subjectDLId"));
	      }
	      this.localServiceEXProxy.updateTSubject(tSubject);
	      flag = true;
	      super.reponseWriter(JSON.toJSONString(Boolean.valueOf(flag)));
	    }
	    catch (Exception e)
	    {
	      e.printStackTrace();
	    }
	}

	//
	// /**
	// * 公共方法
	// *
	// * @return
	// */
	// public BsArticle getBsArticle() {
	// String title = request.getParameter("title");
	// String createdate = request.getParameter("createdate");
	// String author = request.getParameter("author");
	// String type = request.getParameter("type");
	// String summary = request.getParameter("summary");
	// String content = request.getParameter("content");
	// BsArticle bsArticle = new BsArticle();
	// bsArticle.setTitle(title);
	// bsArticle.setSummary(summary);
	// bsArticle.setType(type);
	// bsArticle.setContent(content);
	// bsArticle.setUpdatedate(new Date());
	// bsArticle.setCreatedate(DateUtil.strToDate(createdate));
	// bsArticle.setAuthor(author);
	// return bsArticle;
	// }
	//
	/**
	 * 删除
	 */
	public void delete() {
		boolean flag = false;
		String id = request.getParameter("id");
		try {
			TSubjectExample tsexample = new TSubjectExample();
			tsexample.createCriteria().andSubjectidEqualTo(Long.valueOf(id));
			localServiceEXProxy.deleteTSubject(tsexample);
			flag = true;
			super.reponseWriter(JSON.toJSONString(flag));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public TSubject getSubject() {
		return subject;
	}

	public void setSubject(TSubject subject) {
		this.subject = subject;
	}

}
