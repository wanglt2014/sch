package com.et59.cus.action;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.commons.beanutils.BeanUtils;

import com.alibaba.fastjson.JSON;
import com.et59.cus.domain.entity.BsUser;
import com.et59.cus.domain.entity.TDictionary;
import com.et59.cus.domain.entity.TDownload;
import com.et59.cus.domain.entity.TPaper;
import com.et59.cus.domain.entity.TPaperExample;
import com.et59.cus.domain.entity.TPrize;
import com.et59.cus.domain.entity.TPrizeExample;
import com.et59.cus.domain.entity.TResearch;
import com.et59.cus.domain.entity.TResearchExample;
import com.et59.cus.domain.entity.TSubject;
import com.et59.cus.domain.entity.TSubjectExample;
import com.et59.cus.domain.entity.TTeacher;
import com.et59.cus.domain.entity.TTeacherWithBLOBs;
import com.et59.cus.domain.entity.ex.Pager;
import com.et59.cus.dto.TPaperDTO;
import com.et59.cus.dto.TResearchDTO;
import com.et59.cus.dto.TSubjectDTO;
import com.et59.cus.tools.ComonUtil;
import com.et59.cus.tools.Constant;
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

	public TSubjectDTO tSubjectDTO;

	public TResearchDTO tResearchDTO;

	public TPaperDTO tPaperDTO;

	public List<TPaperDTO> tPaperList;

	public List<TPrize> tPrizeList;

	public List<TSubjectDTO> tSubjectDtoList;

	public List<TResearchDTO> tResearchList;

	public String defultId;

	public List<TResearchDTO> gettResearchList() {
		return tResearchList;
	}

	public void settResearchList(List<TResearchDTO> tResearchList) {
		this.tResearchList = tResearchList;
	}

	public List<TSubjectDTO> gettSubjectDtoList() {
		return tSubjectDtoList;
	}

	public void settSubjectDtoList(List<TSubjectDTO> tSubjectDtoList) {
		this.tSubjectDtoList = tSubjectDtoList;
	}

	public String getDefultId() {
		return defultId;
	}

	public void setDefultId(String defultId) {
		this.defultId = defultId;
	}

	public List<TPaperDTO> gettPaperList() {
		return tPaperList;
	}

	public void settPaperList(List<TPaperDTO> tPaperList) {
		this.tPaperList = tPaperList;
	}

	public List<TPrize> gettPrizeList() {
		return tPrizeList;
	}

	public void settPrizeList(List<TPrize> tPrizeList) {
		this.tPrizeList = tPrizeList;
	}

	public TPaperDTO gettPaperDTO() {
		return tPaperDTO;
	}

	public void settPaperDTO(TPaperDTO tPaperDTO) {
		this.tPaperDTO = tPaperDTO;
	}

	public TResearchDTO gettResearchDTO() {
		return tResearchDTO;
	}

	public void settResearchDTO(TResearchDTO tResearchDTO) {
		this.tResearchDTO = tResearchDTO;
	}

	public TSubjectDTO gettSubjectDTO() {
		return tSubjectDTO;
	}

	public void settSubjectDTO(TSubjectDTO tSubjectDTO) {
		this.tSubjectDTO = tSubjectDTO;
	}

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
	 * @Title: toTeacherPage
	 * @Description: 跳转到
	 * @return String 返回类型
	 * @throws
	 */

	public String toTeacherPage() {
		// super.commonQueryForTeacher("");
		try {
			TDictionary tDictionary = new TDictionary();
			tDictionary.setDictionarytype("department");
			Pager pager = localServiceProxy.queryDictionaryBypage(tDictionary,
					10, 1);
			dictionaryList = (List<TDictionary>) pager.getRows();
			if (dictionaryList != null && dictionaryList.size() > 0) {
				defultId = String.valueOf(dictionaryList.get(0)
						.getDictionarycode());
			} else {
				defultId = "0";
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "to_teacher_index";
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
			Map<String, Object> session = context.getSession();
			BsUser sessionuser = (BsUser) session.get("user");
			TTeacher tTeacher = new TTeacher();
			if (null != teachernamequery && !teachernamequery.equals("")) {
				tTeacher.setTeachername(teachernamequery);
			}
			if (null != departmentquery && !departmentquery.equals("")) {
				tTeacher.setDepartment(departmentquery);
			}
			if (null != sessionuser && sessionuser.getIsadmin().equals("no")) {
				tTeacher.setTeacherlonginname(sessionuser.getUsername());
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
	 * 查询教师相关信息
	 */
	public void queryTeacherOtherInfo() {
		String teacherId = request.getParameter("teacherId");
		HashMap map = new HashMap();
		try {
			Long teacherIdLong = Long.parseLong(teacherId);
			// 加载课程
			List<TSubject> subList = new ArrayList<TSubject>();
			TSubjectExample example = new TSubjectExample();
			example.createCriteria().andSubjectteacheridEqualTo(teacherIdLong);
			subList = localServiceEXProxy.queryTSubject(example);
			StringBuffer subjectIds = new StringBuffer();
			for (Iterator iterator = subList.iterator(); iterator.hasNext();) {
				TSubject tSubject = (TSubject) iterator.next();
				subjectIds.append(tSubject.getSubjectid()).append(",");
			}
			// 加载立项
			List<TResearch> tResearchList = new ArrayList<TResearch>();
			TResearchExample trexample = new TResearchExample();
			trexample.createCriteria().andResearchteacheridEqualTo(
					teacherIdLong);
			tResearchList = localServiceEXProxy.queryTResearchList(trexample);

			// 加载论文
			List<TPaper> tPaperList = new ArrayList<TPaper>();
			TPaperExample tpexample = new TPaperExample();
			tpexample.createCriteria().andPaperteacheridEqualTo(teacherIdLong);
			tPaperList = localServiceEXProxy.queryTPaperList(tpexample);

			// 加载获奖信息
			List<TPrize> tPrizeList = new ArrayList<TPrize>();
			TPrizeExample tPrizeExample = new TPrizeExample();
			tPrizeExample.createCriteria().andPrizeteacheridEqualTo(
					teacherIdLong);
			tPrizeList = localServiceEXProxy.queryTPrizeList(tPrizeExample);

			// map.put("subject", tSubject);
			// map.put("tPaper", tPaper);
			// map.put("tResearch", tResearch);
			map.put("subject",
					subjectIds.substring(0, subjectIds.lastIndexOf(",")));
			map.put("tPaper", tPaperList);
			map.put("tResearch", tResearchList);
			map.put("tPrize", tPrizeList);

			super.reponseWriter(JSON.toJSONString(map));
			// } catch (IOException e) {
			// e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 删除
	 */
	public void delete() {
		boolean flag = false;
		String id = request.getParameter("id");// 教师ID
		try {
			Long idL = Long.parseLong(id);
			Integer i = localServiceProxy.deleteTeacher(idL);

			TSubjectExample tsexample = new TSubjectExample();
			tsexample.createCriteria().andSubjectteacheridEqualTo(idL);
			localServiceEXProxy.deleteTSubject(tsexample);

			TPaperExample tpexample = new TPaperExample();
			tpexample.createCriteria().andPaperteacheridEqualTo(idL);
			localServiceEXProxy.deleteTPaper(tpexample);

			TResearchExample trexample = new TResearchExample();
			trexample.createCriteria().andResearchteacheridEqualTo(idL);
			localServiceEXProxy.deleteTResearch(trexample);

			TPrizeExample example = new TPrizeExample();
			example.createCriteria().andPrizeteacheridEqualTo(idL);
			localServiceEXProxy.deleteTPrize(example);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			flag = true;
			super.reponseWriter(JSON.toJSONString(flag));
		}
	}

	/**
	 * 得到教师基本信息
	 * 
	 * @return
	 */
	public TTeacherWithBLOBs getTeacher() {
		String teachername = request.getParameter("teachername");
		String sex = request.getParameter("sex");
		String birthday = request.getParameter("birthday");
		String department = request.getParameter("department");
		String title = request.getParameter("title");
		String job = request.getParameter("job");
		String tutortype = request.getParameter("tutortype");
		String introduction = request.getParameter("introduction");

		String departmentname = request.getParameter("departmentname");
		String titlename = request.getParameter("titlename");
		String jobname = request.getParameter("jobname");
		TTeacherWithBLOBs tTeacher = new TTeacherWithBLOBs();
		tTeacher.setTeachername(teachername);
		tTeacher.setSex(sex);
		tTeacher.setBirthday(birthday);
		tTeacher.setDepartment(department);
		tTeacher.setTitle(title);
		tTeacher.setJob(job);
		tTeacher.setTutortype(Integer.parseInt(tutortype));
		tTeacher.setIntroduction(introduction);
		tTeacher.setDepartmentname(departmentname);
		tTeacher.setTitlename(titlename);
		tTeacher.setJobname(jobname);

		String name = request.getParameter("uploader_pic_name");
		if (name != null && !name.isEmpty()) {
			String savePath = FileAction.getSavePathForTeacher();
			String extName = name.substring(name.lastIndexOf("."));
			String tampFileName = request.getParameter("uploader_pic_tmpname");
			String fileShowPath = Constant.PATH_TEACHER + "\\" + tampFileName
					+ extName;
			String filepath = savePath + "\\" + tampFileName + extName;
			tTeacher.setIimageurll(filepath);
		}
		return tTeacher;
	}

	/**
	 * 得到教师课程信息
	 * 
	 * @return
	 */
	public List<TSubject> getSubject() {
		List<TSubject> list = new ArrayList<TSubject>();
		String subjectNum = request.getParameter("subjectNum");
		TSubject tSubject = null;
		for (int i = 1; i <= Integer.parseInt(subjectNum); i++) {
			tSubject = new TSubject();
			tSubject.setSubjecttype(request.getParameter("subjecttype" + i));
			tSubject.setSubjectno(request.getParameter("subjectno" + i));
			tSubject.setSubjectname(request.getParameter("subjectname" + i));
			tSubject.setSubjecttext(request.getParameter("subjecttext" + i));
			tSubject.setSubjecttypename(request.getParameter("subjecttypename"
					+ i));
			list.add(tSubject);
		}
		return list;
	}

	/**
	 * 得到教师立项信息
	 * 
	 * @return
	 */
	public List<TResearch> getResearch() {
		List<TResearch> list = new ArrayList<TResearch>();
		String projectNum = request.getParameter("projectNum");
		TResearch tResearch = null;
		for (int i = 1; i <= Integer.parseInt(projectNum); i++) {
			tResearch = new TResearch();
			tResearch.setResearchlevel(request
					.getParameter("researchlevel" + i));
			tResearch.setResearchname(request.getParameter("researchname" + i));
			tResearch.setResearchno(request.getParameter("researchno" + i));

			String researchmoney = request.getParameter("researchmoney" + i) == "" ? "0"
					: request.getParameter("researchmoney" + i);
			tResearch.setResearchmoney(Integer.parseInt(researchmoney));
			String researchmatchmoney = request
					.getParameter("researchmatchmoney" + i) == "" ? "0"
					: request.getParameter("researchmatchmoney" + i);
			tResearch.setResearchmatchmoney(Integer
					.parseInt(researchmatchmoney));
			tResearch.setResearchhost(request.getParameter("researchhost" + i));
			tResearch.setResearchactor(request
					.getParameter("researchactor" + i));
			tResearch.setResearchbegindate(request
					.getParameter("researchbegindate" + i));
			tResearch.setResearchenddate(request.getParameter("researchenddate"
					+ i));
			list.add(tResearch);
		}

		return list;
	}

	/**
	 * 得到教师论文信息
	 * 
	 * @return
	 */
	public List<TPaper> getPaper() {
		List<TPaper> list = new ArrayList<TPaper>();
		String paperNum = request.getParameter("paperNum");
		TPaper tPaper = null;
		for (int i = 1; i <= Integer.parseInt(paperNum); i++) {
			tPaper = new TPaper();
			tPaper.setPapername(request.getParameter("papername" + i));
			tPaper.setPaperauthor(request.getParameter("paperauthor" + i));
			tPaper.setPapernotename(request.getParameter("papernotename" + i));
			tPaper.setPapernoteyear(request.getParameter("papernoteyear" + i));
			tPaper.setPapernoteno(request.getParameter("papernoteno" + i));
			list.add(tPaper);
		}

		return list;
	}

	/**
	 * 得到教师获奖信息
	 * 
	 * @return
	 */
	public List<TPrize> getPrize() {
		List<TPrize> list = new ArrayList<TPrize>();
		TPrize tPrize = null;
		String prizeNum = request.getParameter("prizeNum");
		for (int i = 1; i <= Integer.parseInt(prizeNum); i++) {
			tPrize = new TPrize();
			tPrize.setPrizeinfo(request.getParameter("prizeinfo" + i));
			tPrize.setPrizetype(request.getParameter("prizetype" + i));
			list.add(tPrize);
		}
		return list;
	}

	/**
	 * 通过类别查询数据字典
	 */
	public void queryDictionaryByType() {
		String type = request.getParameter("type");
		try {
			TDictionary tDictionary = new TDictionary();
			tDictionary.setDictionarytype(type);
			Pager pager = localServiceProxy.queryDictionaryBypage(tDictionary,
					100, 1);
			super.reponseWriter(JSON.toJSONString(pager.getRows()));
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 更新
	 */
	public void update() {
		boolean flag = false;
		Long id = Long.valueOf(request.getParameter("id"));// 教师ID
		// String subjectid = request.getParameter("subjectid");
		// String paperid = request.getParameter("paperid");
		// String researchid = request.getParameter("researchid");

		TTeacherWithBLOBs teacher = getTeacher();
		// List<TSubject> subjectList = getSubject();
		String subjectIds = request.getParameter("subjectIds");
		List<TResearch> tResearchList = getResearch();
		List<TPaper> tPaperList = getPaper();
		List<TPrize> tPrizeList = getPrize();
		try {
			teacher.setId(id);
			localServiceProxy.updateTeacher(teacher);

			// 2.保存课程表
			TSubject tSubject = null;
			String[] idArr = subjectIds.split(",");
			String tempID = null;
			for (int i = 0; i < idArr.length; i++) {
				tempID = idArr[i];
				tSubject = new TSubject();
				tSubject.setSubjectid(Long.valueOf(tempID));
				tSubject.setSubjectteacherid(teacher.getId());
				tSubject.setSubjectteachername(teacher.getTeachername());
				localServiceEXProxy.updateTSubject(tSubject);
			}

			// if (subjectList != null && subjectList.size() > 0) {
			// TSubjectExample tsexample = new TSubjectExample();
			// tsexample.createCriteria().andSubjectteacheridEqualTo(id);
			// localServiceEXProxy.deleteTSubject(tsexample);
			// TSubject tSubject = null;
			// for (Iterator iterator = subjectList.iterator(); iterator
			// .hasNext();) {
			// tSubject = (TSubject) iterator.next();
			// tSubject.setSubjectteacherid(id);
			// localServiceEXProxy.saveTSubject(tSubject);
			// }
			// }

			if (tResearchList != null && tResearchList.size() > 0) {
				TResearchExample trexample = new TResearchExample();
				trexample.createCriteria().andResearchteacheridEqualTo(id);
				localServiceEXProxy.deleteTResearch(trexample);
				for (Iterator iterator = tResearchList.iterator(); iterator
						.hasNext();) {
					TResearch tResearch = (TResearch) iterator.next();
					tResearch.setResearchteacherid(id);
					localServiceEXProxy.saveTResearch(tResearch);
				}
			}

			if (tPaperList != null && tPaperList.size() > 0) {
				TPaperExample tpexample = new TPaperExample();
				tpexample.createCriteria().andPaperteacheridEqualTo(id);
				localServiceEXProxy.deleteTPaper(tpexample);
				for (Iterator iterator = tPaperList.iterator(); iterator
						.hasNext();) {
					TPaper tPaper = (TPaper) iterator.next();
					tPaper.setPaperteacherid(id);
					localServiceEXProxy.saveTPaper(tPaper);
				}

			}

			if (tPrizeList != null && tPrizeList.size() > 0) {
				TPrizeExample example = new TPrizeExample();
				example.createCriteria().andPrizeteacheridEqualTo(id);
				localServiceEXProxy.deleteTPrize(example);
				for (Iterator iterator = tPrizeList.iterator(); iterator
						.hasNext();) {
					TPrize tPrize = (TPrize) iterator.next();
					tPrize.setPrizeteacherid(id);
					localServiceEXProxy.saveTPrize(tPrize);

				}
			}
			flag = true;
			super.reponseWriter(JSON.toJSONString(flag));
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void save() {
		boolean flag = false;
		TTeacherWithBLOBs teacher = getTeacher();
		// List<TSubject> subjectList = getSubject();

		String subjectIds = request.getParameter("subjectIds");
		List<TResearch> tResearchList = getResearch();
		List<TPaper> tPaperList = getPaper();
		List<TPrize> tPrizeList = getPrize();
		// String name = request.getParameter("uploader_pic_name");
		// if (name != null && !name.isEmpty()) {
		// String savePath = FileAction.getSavePathForTeacher();
		// String extName = name.substring(name.lastIndexOf("."));
		// String tampFileName = request.getParameter("uploader_pic_tmpname");
		// String fileShowPath = Constant.PATH_TEACHER + "\\" + tampFileName
		// + extName;
		// String filepath = savePath + "\\" + tampFileName + extName;
		// teacher.setIimageurll(filepath);
		// }
		try {
			int paperSize = tPaperList.size();
			// int subjectSize = subjectList.size();
			int tResearchSize = tResearchList.size();
			Map<String, Object> session = context.getSession();
			BsUser sessionuser = (BsUser) session.get("user");
			teacher.setTeacherlonginname(sessionuser.getUsername());
			Map<String, Integer> sizeMap = new HashMap<String, Integer>();
			sizeMap.put("paperSize", paperSize);
			// sizeMap.put("subjectSize", subjectSize);
			// sizeMap.put("tResearchSize", tResearchSize);
			// 新增附件表
			HashMap downloadIdMap = saveAllDownloadTable(sizeMap);
			// StringBuffer paperIDs = new StringBuffer();
			// for (int i = 1; i <= paperSize; i++) {
			// paperIDs.append(downloadIdMap.get("paperDLId" + i));
			// }
			// 新增教师表
			long teacherId = localServiceProxy.saveTeacher(teacher);

			// 新增立项，课程，论文，获奖表
			// 1.保存立项表
			TResearch tResearch = null;
			for (int i = 0; i < tResearchSize; i++) {
				tResearch = tResearchList.get(i);
				tResearch.setDownloadid((Long) downloadIdMap.get("proDLId"
						+ (i + 1)));
				tResearch.setResearchteacherid(teacherId);
				localServiceEXProxy.saveTResearch(tResearch);
			}

			// 2.保存课程表
			TSubject tSubject = null;
			String[] idArr = subjectIds.split(",");
			String tempID = null;
			for (int i = 0; i < idArr.length; i++) {
				tempID = idArr[i];
				tSubject = new TSubject();
				tSubject.setSubjectid(Long.valueOf(tempID));
				tSubject.setSubjectteacherid(teacher.getId());
				tSubject.setSubjectteachername(teacher.getTeachername());
				localServiceEXProxy.updateTSubject(tSubject);
			}
			// for (int i = 0; i < subjectSize; i++) {
			// tSubject = subjectList.get(i);
			// tSubject.setSubjectoutline((Long) downloadIdMap
			// .get("outlineDLId" + (i + 1)));
			// tSubject.setSubjectschedule((Long) downloadIdMap
			// .get("scheduleDLId" + (i + 1)));
			// tSubject.setSubjectinfo((Long) downloadIdMap.get("subjectDLId"
			// + (i + 1)));
			// tSubject.setSubjectteachername(teacher.getTeachername());
			// tSubject.setSubjectisvalid(Constant.ISVALID_1);
			// tSubject.setSubjectteacherid(teacherId);
			// localServiceEXProxy.saveTSubject(tSubject);
			// }

			// 3.保存论文表
			TPaper tPaper = null;
			for (int i = 0; i < paperSize; i++) {
				tPaper = tPaperList.get(i);
				tPaper.setPaperdownloadid((Long) downloadIdMap.get("paperDLId"
						+ (i + 1)));
				tPaper.setPaperteacherid(teacherId);
				localServiceEXProxy.saveTPaper(tPaper);
			}

			int prizeSize = tPrizeList.size();
			// 4.保存获奖表
			for (int i = 0; i < prizeSize; i++) {
				TPrize tPrize = (TPrize) tPrizeList.get(i);
				tPrize.setPrizeteacherid(teacherId);
				localServiceEXProxy.saveTPrize(tPrize);
			}

			flag = true;
			super.reponseWriter(JSON.toJSONString(flag));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @Title: teacherDetail
	 * @Description: 跳转到教务教学通知详细页面
	 * @param @return 设定文件
	 * @return String 返回类型
	 * @throws
	 */
	public String teacherDetail() {
		// super.commonquery();
		String id = request.getParameter("id");
		try {
			// TDictionary tDictionary = new TDictionary();
			// tDictionary.setDictionarytype("department");
			// Pager pager =
			// localServiceProxy.queryDictionaryBypage(tDictionary,
			// 10, 1);
			// dictionaryList = (List<TDictionary>) pager.getRows();

			tTeacherdetail = localServiceProxy.queryTeacherById(Long
					.valueOf(id));
			Long teacherIdLong = Long.parseLong(id);
			// 加载课程
			TSubjectExample tsexample = new TSubjectExample();
			tsexample.createCriteria()
					.andSubjectteacheridEqualTo(teacherIdLong);
			List<TSubject> tSubjectList = localServiceEXProxy
					.queryTSubject(tsexample);
			if (tSubjectList != null && tSubjectList.size() > 0) {
				tSubjectDtoList = new ArrayList<TSubjectDTO>();
				for (Iterator iterator = tSubjectList.iterator(); iterator
						.hasNext();) {
					TSubject tSubject = (TSubject) iterator.next();
					tSubjectDTO = new TSubjectDTO();
					BeanUtils.copyProperties(tSubjectDTO, tSubject);

					Long outlineId = tSubject.getSubjectoutline();
					if (outlineId != null) {
						TDownload outlineFile = localServiceEXProxy
								.queryDownloadById(outlineId);
						tSubjectDTO.setSubjectoutlinePath(outlineFile
								.getFileshowpath());
						tSubjectDTO.setSubjectoutlineName(outlineFile
								.getFilename());
					}

					Long scheduleId = tSubject.getSubjectschedule();
					if (scheduleId != null) {
						TDownload scheduleFile = localServiceEXProxy
								.queryDownloadById(scheduleId);
						tSubjectDTO.setSubjectschedulePath(scheduleFile
								.getFileshowpath());
					}
					Long infoId = tSubject.getSubjectinfo();
					if (infoId != null) {
						TDownload infoFile = localServiceEXProxy
								.queryDownloadById(infoId);
						tSubjectDTO.setSubjectinfoPath(infoFile
								.getFileshowpath());
					}
					tSubjectDtoList.add(tSubjectDTO);
				}

			}

			// 加载立项
			TResearchExample trexample = new TResearchExample();
			trexample.createCriteria().andResearchteacheridEqualTo(
					teacherIdLong);
			List<TResearch> researchList = localServiceEXProxy
					.queryTResearchList(trexample);
			if (researchList != null && researchList.size() > 0) {
				tResearchList = new ArrayList<TResearchDTO>();
				for (Iterator iterator = researchList.iterator(); iterator
						.hasNext();) {
					tResearchDTO = new TResearchDTO();
					TResearch research = (TResearch) iterator.next();
					BeanUtils.copyProperties(tResearchDTO, research);

					Long trDownid = research.getDownloadid();
					if (trDownid != null) {
						TDownload researchFile = localServiceEXProxy
								.queryDownloadById(trDownid);
						tResearchDTO.setDownloadShowPath(researchFile
								.getFileshowpath());
					}
					tResearchList.add(tResearchDTO);
				}
			}

			// 加载论文
			TPaperExample tpexample = new TPaperExample();
			tpexample.createCriteria().andPaperteacheridEqualTo(teacherIdLong);
			List<TPaper> paperList = localServiceEXProxy
					.queryTPaperList(tpexample);
			if (paperList != null && paperList.size() > 0) {
				tPaperList = new ArrayList<TPaperDTO>();
				for (Iterator iterator = paperList.iterator(); iterator
						.hasNext();) {
					tPaperDTO = new TPaperDTO();
					TPaper tPaper = (TPaper) iterator.next();
					BeanUtils.copyProperties(tPaperDTO, tPaper);
					Long paperDowId = tPaper.getPaperdownloadid();
					if (paperDowId != null) {
						TDownload paperFile = localServiceEXProxy
								.queryDownloadById(paperDowId);
						tPaperDTO.setPaperdownloadPath(paperFile
								.getFileshowpath());
					}
					tPaperList.add(tPaperDTO);
				}

			}

			// 加载获奖信息
			TPrizeExample tprexample = new TPrizeExample();
			tprexample.createCriteria().andPrizeteacheridEqualTo(teacherIdLong);
			tPrizeList = localServiceEXProxy.queryTPrizeList(tprexample);

		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "teacher_detail";
	}

	/**
	 * 保存所有附件表
	 * 
	 * @return
	 * @throws Exception
	 */
	private HashMap saveAllDownloadTable(Map<String, Integer> sizeMap)
			throws Exception {
		HashMap map = new HashMap();
		HashMap returnmap = new HashMap();
		int paperSize = sizeMap.get("paperSize");
		// int subjectSize = sizeMap.get("subjectSize");
		// int tResearchSize = sizeMap.get("tResearchSize");
		// 1.保存立项附件
		// for (int i = 1; i <= tResearchSize; i++) {
		// map.put("paraName", "uploader_project_name_" + i);
		// map.put("paraTmpname", "uploader_project_tmpname_" + i);
		// map.put("infotype", "project");
		// Long proDLId = saveTDownloadInfo(map);
		// returnmap.put("proDLId" + i, proDLId);
		// }

		// for (int i = 1; i <= subjectSize; i++) {
		// // 2.保存教学大纲附件
		// map.put("paraName", "uploader_outline_name_" + i);
		// map.put("paraTmpname", "uploader_outline_tmpname_" + i);
		// map.put("infotype", "outline");
		// Long outlineDLId = saveTDownloadInfo(map);
		//
		// // 3.保存教学进度附件
		// map.put("paraName", "uploader_schedule_name_" + i);
		// map.put("paraTmpname", "uploader_schedule_tmpname_" + i);
		// map.put("infotype", "schedule");
		// Long scheduleDLId = saveTDownloadInfo(map);
		//
		// // 4.保存课程资料附件
		// map.put("paraName", "uploader_subject_name_" + i);
		// map.put("paraTmpname", "uploader_subject_tmpname_" + i);
		// map.put("infotype", "subject");
		// Long subjectDLId = saveTDownloadInfo(map);
		//
		// returnmap.put("outlineDLId" + i, outlineDLId);
		// returnmap.put("scheduleDLId" + i, scheduleDLId);
		// returnmap.put("subjectDLId" + i, subjectDLId);
		// }

		// 5.保存论文附件
		// if (paperSize != null && !"".endsWith(paperDLcount)) {
		for (int i = 1; i <= paperSize; i++) {
			map.put("paraName", "uploader_paper_name_" + i);
			map.put("paraTmpname", "uploader_paper_tmpname_" + i);
			map.put("infotype", "paper");
			Long paperDLId = saveTDownloadInfo(map);
			returnmap.put("paperDLId" + i, paperDLId);
		}
		// }
		return returnmap;
	}

	/**
	 * 查询师资队伍
	 * 
	 * @return
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public String doQueryTeacher() {
		String depCode = request.getParameter("depCode");
		// if (log.isDebugEnabled()) {
		// log.debug("查询交易信息currentPage>>>>:" + currentPage);
		// }
		try {
			TTeacher tTeacher = new TTeacher();
			tTeacher.setDepartment(depCode);
			Map map = localServiceProxy.queryTeacherByTypeForPage(tTeacher,
					100, currentPage);
			TDictionary tDictionary = new TDictionary();
			tDictionary.setDictionarytype("department");
			tDictionary.setDictionarycode(depCode);
			Pager pager = localServiceProxy.queryDictionaryBypage(tDictionary,
					10, 1);
			dictionaryList = (List<TDictionary>) pager.getRows();
			if (ComonUtil.validateMapResult(map)) {
				teacherList = (List<TTeacher>) map.get(Constant.TEACHER_LIST);
				totalCount = (Integer) map.get(Constant.TOTALCOUNT);
				totalPageCount = (Integer) map.get(Constant.TOTALPAGECOUNT);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "teacher_result";
	}

}
