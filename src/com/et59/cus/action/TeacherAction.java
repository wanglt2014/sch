package com.et59.cus.action;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.commons.beanutils.BeanUtils;

import com.alibaba.fastjson.JSON;
import com.et59.cus.domain.entity.BsUser;
import com.et59.cus.domain.entity.TDictionary;
import com.et59.cus.domain.entity.TDownload;
import com.et59.cus.domain.entity.THonorandother;
import com.et59.cus.domain.entity.THonorandotherExample;
import com.et59.cus.domain.entity.TPaper;
import com.et59.cus.domain.entity.TPaperExample;
import com.et59.cus.domain.entity.TPartjob;
import com.et59.cus.domain.entity.TPartjobExample;
import com.et59.cus.domain.entity.TPrize;
import com.et59.cus.domain.entity.TPrizeExample;
import com.et59.cus.domain.entity.TResearch;
import com.et59.cus.domain.entity.TResearchExample;
import com.et59.cus.domain.entity.TSubject;
import com.et59.cus.domain.entity.TSubjectExample;
import com.et59.cus.domain.entity.TTeacher;
import com.et59.cus.domain.entity.TTeacherWithBLOBs;
import com.et59.cus.domain.entity.TWork;
import com.et59.cus.domain.entity.TWorkExample;
import com.et59.cus.domain.entity.ex.Pager;
import com.et59.cus.dto.TPaperDTO;
import com.et59.cus.dto.TPaperExportDTO;
import com.et59.cus.dto.TPrizeExportDTO;
import com.et59.cus.dto.TResearchDTO;
import com.et59.cus.dto.TResearchExportDTO;
import com.et59.cus.dto.TSubjectDTO;
import com.et59.cus.dto.TWorkExportDTO;
import com.et59.cus.tools.ComonUtil;
import com.et59.cus.tools.Constant;
import com.et59.cus.tools.ExportExcel;
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

	public List<TResearch> researchList;

	public List<TWork> tWorkList;

	public List<TPaper> paperList;

	public String defultId;
	
	 public String result;

	public List<TResearch> getResearchList() {
		return researchList;
	}

	public void setResearchList(List<TResearch> researchList) {
		this.researchList = researchList;
	}

	public List<TPaper> getPaperList() {
		return paperList;
	}

	public void setPaperList(List<TPaper> paperList) {
		this.paperList = paperList;
	}

	public List<TWork> gettWorkList() {
		return tWorkList;
	}

	public void settWorkList(List<TWork> tWorkList) {
		this.tWorkList = tWorkList;
	}

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
	 * 数据字典首页
	 * 
	 * @return
	 */
	public String teach() {
		return "teach";
	}

	/**
	 * 数据字典首页
	 * 
	 * @return
	 */
	public String keyan() {
		return "keyan";
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
		// long startTime=System.currentTimeMillis(); //获取开始时间
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

			// 加载著作
			List<TWork> tWorkList = new ArrayList<TWork>();
			TWorkExample twexample = new TWorkExample();
			twexample.createCriteria().andWorkteacheridEqualTo(teacherIdLong);
			tWorkList = localServiceEXProxy.queryTWorkList(twexample);

			// map.put("subject", tSubject);
			// map.put("tPaper", tPaper);
			// map.put("tResearch", tResearch);
			if (subjectIds != null && subjectIds.indexOf(",") > 0) {
				map.put("subject",
						subjectIds.substring(0, subjectIds.lastIndexOf(",")));
			} else {
				map.put("subject", subjectIds);
			}

			map.put("tPaper", tPaperList);
			map.put("tResearch", tResearchList);
			map.put("tPrize", tPrizeList);
			map.put("tWork", tWorkList);
			// long endTime=System.currentTimeMillis(); //获取结束时间
			// System.out.println("程序运行时间： "+(endTime-startTime)+"ms");
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
			tResearch.setResearchtype(request.getParameter("researchtype" + i));
			tResearch.setIsresearch(request.getParameter("isresearch" + i));
			tResearch.setResearchrank(request.getParameter("researchrank" + i));
			tResearch.setResearchknot(request.getParameter("researchknot" + i));
			// String researchmoney = request.getParameter("researchmoney" + i)
			// == "" ? "0"
			// : request.getParameter("researchmoney" + i);
			// tResearch.setResearchmoney(Integer.parseInt(researchmoney));
			// String researchmatchmoney = request
			// .getParameter("researchmatchmoney" + i) == "" ? "0"
			// : request.getParameter("researchmatchmoney" + i);
			// tResearch.setResearchmatchmoney(Integer
			// .parseInt(researchmatchmoney));
			// tResearch.setResearchhost(request.getParameter("researchhost" +
			// i));
			// tResearch.setResearchactor(request
			// .getParameter("researchactor" + i));
			tResearch.setResearchbegindate(request
					.getParameter("researchbegindate" + i));
			tResearch.setResearchenddate(request.getParameter("researchenddate"
					+ i));
			tResearch.setResearchteachorresearch(request
					.getParameter("researchteachorresearch" + i));
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
			tPaper.setPapernoteno(request.getParameter("papernoteno" + i));
			tPaper.setPaperteachorresearch(request
					.getParameter("paperteachorresearch" + i));
			tPaper.setPapernotecountry(request.getParameter("papernotecountry"
					+ i));
			tPaper.setPapernotedate(request.getParameter("papernotedate" + i));
			tPaper.setPapernotepage(request.getParameter("papernotepage" + i));
			tPaper.setPaperincluded(request.getParameter("paperincluded" + i));
			tPaper.setPaperfactors(request.getParameter("paperfactors" + i));
			tPaper.setPaperreprint(request.getParameter("paperreprint" + i));
			tPaper.setPaperclassa(request.getParameter("paperclassa" + i));
			tPaper.setPaperprojectno(request.getParameter("paperprojectno" + i));
			list.add(tPaper);
		}
		return list;
	}

	/**
	 * 得到教师著作信息
	 * 
	 * @return
	 */
	public List<TWork> getWork() {
		List<TWork> list = new ArrayList<TWork>();
		String workNum = request.getParameter("workNum");
		TWork tWork = null;
		for (int i = 1; i <= Integer.parseInt(workNum); i++) {
			tWork = new TWork();
			tWork.setAlreadypublish(request.getParameter("alreadyPublish" + i));
			tWork.setClassa(request.getParameter("classA" + i));
			tWork.setIsbnno(request.getParameter("isbnNO" + i));
			tWork.setOriauthor(request.getParameter("oriAuthor" + i));
			tWork.setProjectno(request.getParameter("projectno" + i));
			tWork.setTotalword(request.getParameter("totalWord" + i));
			tWork.setTranslateforeign(request.getParameter("translateForeign"
					+ i));
			tWork.setWorkauthorrank(request.getParameter("workAuthorRank" + i));
			tWork.setWorkpublisharea(request
					.getParameter("workPublishArea" + i));
			tWork.setWorkpublishtime(request
					.getParameter("workPublishTime" + i));
			tWork.setWorkpublishunit(request
					.getParameter("workPublishUnit" + i));
			tWork.setWorktitle(request.getParameter("workTitle" + i));
			tWork.setWorktype(request.getParameter("workType" + i));

			list.add(tWork);
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
			tPrize.setPrizetype(request.getParameter("prizetype" + i));
			tPrize.setPrizedate(request.getParameter("prizedate" + i));
			tPrize.setPrizetitle(request.getParameter("prizetitle" + i));
			tPrize.setPrizerank(request.getParameter("prizerank" + i));
			tPrize.setPrizelevel(request.getParameter("prizelevel" + i));
			tPrize.setPrizeresultname(request.getParameter("prizeresultname"
					+ i));
			tPrize.setPrizedep(request.getParameter("prizedep" + i));
			tPrize.setPrizeno(request.getParameter("prizeno" + i));
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
		List<TWork> tWorkList = getWork();
		try {
			teacher.setId(id);
			localServiceProxy.updateTeacher(teacher);

			// 2.保存课程表
			TSubject tSubject = null;
			String[] idArr = subjectIds.split(",");
			String tempID = null;
			for (int i = 0; i < idArr.length; i++) {
				tempID = idArr[i];
				if (!tempID.equals("")) {
					tSubject = new TSubject();
					tSubject.setSubjectid(Long.valueOf(tempID));
					tSubject.setSubjectteacherid(teacher.getId());
					tSubject.setSubjectteachername(teacher.getTeachername());
					localServiceEXProxy.updateTSubject(tSubject);
				}
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
					tResearch.setResearchteachername(teacher.getTeachername());
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
					tPaper.setPaperteachername(teacher.getTeachername());
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
					tPrize.setPrizeteachername(teacher.getTeachername());
					localServiceEXProxy.saveTPrize(tPrize);

				}
			}

			if (tWorkList != null && tWorkList.size() > 0) {
				TWorkExample example = new TWorkExample();
				example.createCriteria().andWorkteacheridEqualTo(id);
				localServiceEXProxy.deleteTWork(example);
				for (Iterator iterator = tWorkList.iterator(); iterator
						.hasNext();) {
					TWork tWork = (TWork) iterator.next();
					tWork.setWorkteacherid(id);
					tWork.setWorkteachername(teacher.getTeachername());
					localServiceEXProxy.saveTWork(tWork);

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
		List<TWork> tWorkList = getWork();
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
				tResearch.setResearchteachername(teacher.getTeachername());
				localServiceEXProxy.saveTResearch(tResearch);
			}

			// 2.保存课程表
			TSubject tSubject = null;
			String[] idArr = subjectIds.split(",");
			String tempID = null;
			for (int i = 0; i < idArr.length; i++) {
				tempID = idArr[i];
				if (!tempID.equals("")) {
					tSubject = new TSubject();
					tSubject.setSubjectid(Long.valueOf(tempID));
					tSubject.setSubjectteacherid(teacher.getId());
					tSubject.setSubjectteachername(teacher.getTeachername());
					localServiceEXProxy.updateTSubject(tSubject);
				}

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
				tPaper.setPaperteachername(teacher.getTeachername());
				localServiceEXProxy.saveTPaper(tPaper);
			}

			int prizeSize = tPrizeList.size();
			// 4.保存获奖表
			for (int i = 0; i < prizeSize; i++) {
				TPrize tPrize = (TPrize) tPrizeList.get(i);
				tPrize.setPrizeteacherid(teacherId);
				tPrize.setPrizeteachername(teacher.getTeachername());
				localServiceEXProxy.saveTPrize(tPrize);
			}

			int workSize = tWorkList.size();
			// 5.保存著作表
			for (int i = 0; i < workSize; i++) {
				TWork tWork = (TWork) tWorkList.get(i);
				tWork.setWorkteacherid(teacherId);
				tWork.setWorkteachername(teacher.getTeachername());
				localServiceEXProxy.saveTWork(tWork);
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

	/**
	 * @Title: toSRRPage
	 * @Description: 跳转到科学研究成果
	 * @return String 返回类型
	 * @throws
	 */

	public String toSRRPage() {
		// super.commonQueryForTeacher("");
		return "to_srr_index";
	}

	/**
	 * 查询师资队伍
	 * 
	 * @return
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public String doQuerySRR() {
		try {
			// 加载立项
			// List<TResearch> tResearchList = new ArrayList<TResearch>();
			TResearchExample trexample = new TResearchExample();
			trexample.createCriteria().andResearchrankEqualTo("1");
			researchList = localServiceEXProxy.queryTResearchList(trexample);

			// 加载论文
			// List<TPaper> tPaperList = new ArrayList<TPaper>();
			TPaperExample tpexample = new TPaperExample();
			tpexample.createCriteria().andPaperauthorEqualTo("1");
			paperList = localServiceEXProxy.queryTPaperList(tpexample);

			// 加载著作
			// List<TWork> tWorkList = new ArrayList<TWork>();
			TWorkExample twexample = new TWorkExample();
			twexample.createCriteria().andWorkauthorrankEqualTo("1");
			tWorkList = localServiceEXProxy.queryTWorkList(twexample);

			// 加载获奖信息
			// List<TPrize> tPrizeList = new ArrayList<TPrize>();
			TPrizeExample tPrizeExample = new TPrizeExample();
			tPrizeExample.createCriteria().andPrizerankEqualTo("1");
			tPrizeList = localServiceEXProxy.queryTPrizeList(tPrizeExample);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "srr_result";
	}

	/**
	 * 导出Excel
	 */
	@SuppressWarnings("unchecked")
	public void ExportExcel() {
		String type = request.getParameter("type"); // 当前页数
		String[] hearders = null;
		try {
			SimpleDateFormat timeFormat = new SimpleDateFormat("yyyyMMddHHmmss");
			String filename = timeFormat.format(new Date()) + ".xls";
			response.setContentType("application/ms-excel;charset=UTF-8");
			response.setHeader("Content-Disposition",
					"attachment;filename=".concat(String.valueOf(URLEncoder
							.encode(filename, "UTF-8"))));
			OutputStream out = response.getOutputStream();
			if ("research".equals(type)) {
				// 加载立项
				TResearchExample trexample = new TResearchExample();
				trexample.createCriteria().andResearchrankEqualTo("1");
				List<TResearch> tResearchList = localServiceEXProxy
						.queryTResearchList(trexample);
				TResearchExportDTO researchExportDTO = null;
				List<TResearchExportDTO> resExportList = new ArrayList<TResearchExportDTO>();
				for (Iterator iterator = tResearchList.iterator(); iterator
						.hasNext();) {
					TResearch tResearch = (TResearch) iterator.next();
					researchExportDTO = new TResearchExportDTO();
					BeanUtils.copyProperties(researchExportDTO, tResearch);
					resExportList.add(researchExportDTO);
				}
				hearders = new String[] { "姓名", "教师排名", "项目种类", "项目类别", "项目名称",
						"项目编号", "开始时间", "结束时间", "是否在研", "结束等级" };// 表头数组
				ExportExcel<TResearchExportDTO> ex = new ExportExcel<TResearchExportDTO>();
				ex.exportExcel(hearders, resExportList, out);
			} else if ("paper".equals(type)) {
				TPaperExample tpexample = new TPaperExample();
				tpexample.createCriteria().andPaperauthorEqualTo("1");
				List<TPaper> tPaperList = localServiceEXProxy
						.queryTPaperList(tpexample);

				TPaperExportDTO paperExportDTO = null;
				List<TPaperExportDTO> paperExportList = new ArrayList<TPaperExportDTO>();
				for (Iterator iterator = tPaperList.iterator(); iterator
						.hasNext();) {
					TPaper tPaper = (TPaper) iterator.next();
					paperExportDTO = new TPaperExportDTO();
					BeanUtils.copyProperties(paperExportDTO, tPaper);
					paperExportList.add(paperExportDTO);
				}
				hearders = new String[] { "姓名", "作者排名", "论文题目", "发表刊物/论文集名称",
						"刊物国别", "发表/出版时间", "期号（卷号）", "页码", "论文收录", "影响因子",
						"论文转载", "一级学科", "资助项目编号" };// 表头数组
				ExportExcel<TPaperExportDTO> ex = new ExportExcel<TPaperExportDTO>();
				ex.exportExcel(hearders, paperExportList, out);
			} else if ("work".equals(type)) {
				TWorkExample twexample = new TWorkExample();
				twexample.createCriteria().andWorkauthorrankEqualTo("1");
				List<TWork> tWorkList = localServiceEXProxy
						.queryTWorkList(twexample);

				TWorkExportDTO workExportDTO = null;
				List<TWorkExportDTO> workExportList = new ArrayList<TWorkExportDTO>();
				for (Iterator iterator = tWorkList.iterator(); iterator
						.hasNext();) {
					TWork tWork = (TWork) iterator.next();
					workExportDTO = new TWorkExportDTO();
					BeanUtils.copyProperties(workExportDTO, tWork);
					workExportList.add(workExportDTO);
				}
				hearders = new String[] { "姓名", "作者排名", "著作题目", "出版单位", "出版地",
						"出版时间", "著作类别", "原作者", "自己承担字数/全书总字数（千）", "已出几版",
						"是否译成外文", "ISBN号", "一级学科", "资助项目编号" };// 表头数组
				ExportExcel<TWorkExportDTO> ex = new ExportExcel<TWorkExportDTO>();
				ex.exportExcel(hearders, workExportList, out);
			} else if ("prize".equals(type)) {
				// 加载获奖信息
				TPrizeExample tPrizeExample = new TPrizeExample();
				tPrizeExample.createCriteria().andPrizerankEqualTo("1");
				List<TPrize> tPrizeList = localServiceEXProxy
						.queryTPrizeList(tPrizeExample);

				TPrizeExportDTO prizeExportDTO = null;
				List<TPrizeExportDTO> prizeExportList = new ArrayList<TPrizeExportDTO>();
				for (Iterator iterator = tPrizeList.iterator(); iterator
						.hasNext();) {
					TPrize tPrize = (TPrize) iterator.next();
					prizeExportDTO = new TPrizeExportDTO();
					BeanUtils.copyProperties(prizeExportDTO, tPrize);
					prizeExportList.add(prizeExportDTO);
				}
				hearders = new String[] { "姓名", "获奖排名", "奖项名称", "成果名称", "奖励等级",
						"成果类别", "授奖部门", "获奖时间", "证书编号" };// 表头数组
				ExportExcel<TPrizeExportDTO> ex = new ExportExcel<TPrizeExportDTO>();
				ex.exportExcel(hearders, prizeExportList, out);
			}

			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	/**
	 * 分页查询科研立项信息
	 */
	public void queryTResearch() {
		String teacherIdLong = request.getParameter("teacherId");
		if (teacherIdLong != null) {
			String page = request.getParameter("page"); // 当前页数
			String rows = request.getParameter("rows"); // 每页显示行数
			try {
				// 加载立项
				TResearchExample trexample = new TResearchExample();
				trexample
						.createCriteria()
						.andResearchteacheridEqualTo(
								Long.valueOf(teacherIdLong))
						.andResearchteachorresearchEqualTo("1");
				Pager pager = localServiceEXProxy
						.queryTResearchBypage(trexample, Integer.valueOf(rows),
								Integer.valueOf(page));
				super.reponseWriter(JSON.toJSONString(pager));
			} catch (IOException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			super.reponseWriter(JSON.toJSONString(new ArrayList()));
		}
	}

	/**
	 * 分页查询教改立项信息
	 */
	public void queryTeachResearch() {
		String teacherIdLong = request.getParameter("teacherId");
		if (teacherIdLong != null) {
			String page = request.getParameter("page"); // 当前页数
			String rows = request.getParameter("rows"); // 每页显示行数
			try {
				// 加载立项
				TResearchExample trexample = new TResearchExample();
				trexample
						.createCriteria()
						.andResearchteacheridEqualTo(
								Long.valueOf(teacherIdLong))
						.andResearchteachorresearchEqualTo("0");
				Pager pager = localServiceEXProxy
						.queryTResearchBypage(trexample, Integer.valueOf(rows),
								Integer.valueOf(page));
				super.reponseWriter(JSON.toJSONString(pager));
			} catch (IOException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			super.reponseWriter(JSON.toJSONString(new ArrayList()));
		}

	}

	/**
	 * 得到教师科研立项信息
	 * 
	 * @return
	 */
	public TResearch getResearchNew() {
		TResearch tResearch = new TResearch();
		tResearch.setResearchlevel(request.getParameter("researchlevel"));
		tResearch.setResearchname(request.getParameter("researchname"));
		tResearch.setResearchno(request.getParameter("researchno"));
		tResearch.setResearchtype(request.getParameter("researchtype"));
		tResearch.setIsresearch(request.getParameter("isresearch"));
		tResearch.setResearchrank(request.getParameter("researchrank"));
		tResearch.setResearchknot(request.getParameter("researchknot"));
		tResearch.setResearchbegindate(request
				.getParameter("researchbegindate"));
		tResearch.setResearchenddate(request.getParameter("researchenddate"));
		// tResearch.setResearchteachorresearch(request.getParameter("researchteachorresearch"));
		return tResearch;
	}

	/**
	 * 得到教师教改立项信息
	 * 
	 * @return
	 */
	public TResearch getTeachResearch() {
		TResearch tResearch = new TResearch();
		tResearch.setResearchlevel(request.getParameter("teachresearchlevel"));
		tResearch.setResearchname(request.getParameter("teachresearchname"));
		tResearch.setResearchno(request.getParameter("teachresearchno"));
		tResearch.setIsresearch(request.getParameter("teachisresearch"));
		tResearch.setResearchrank(request.getParameter("teachresearchrank"));
		tResearch.setResearchknot(request.getParameter("teachresearchknot"));
		tResearch.setResearchbegindate(request
				.getParameter("teachresearchbegindate"));
		tResearch.setResearchenddate(request
				.getParameter("teachresearchenddate"));
		// tResearch.setResearchteachorresearch(request.getParameter("researchteachorresearch"));
		return tResearch;
	}

	public void saveResearch() {
		boolean flag = false;
		try {
			String teacherId = request.getParameter("id");
			String teacherName = URLDecoder.decode(
					request.getParameter("name"), "UTF-8");
			String type = request.getParameter("type");
			// 1.保存立项表
			TResearch tResearch = null;
			if (type != null && type.equals("teach")) {
				tResearch = getTeachResearch();
				tResearch.setResearchteachorresearch("0");
			} else if (type != null && type.equals("keyan")) {
				tResearch = getResearchNew();
				tResearch.setResearchteachorresearch("1");
			}
			tResearch.setResearchteacherid(Long.valueOf(teacherId));
			tResearch.setResearchteachername(teacherName);
			localServiceEXProxy.saveTResearch(tResearch);
			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		super.reponseWriter(JSON.toJSONString(flag));
	}

	/**
	 * 删除
	 */
	public void deleteResearch() {
		boolean flag = false;
		String id = request.getParameter("id");//
		try {
			Long idL = Long.parseLong(id);
			TResearchExample trexample = new TResearchExample();
			trexample.createCriteria().andResearchidEqualTo(idL);
			localServiceEXProxy.deleteTResearch(trexample);
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
	 * 分页查询科研论文信息
	 */
	public void queryPaper() {
		String teacherIdLong = request.getParameter("teacherId");
		if (teacherIdLong != null) {
			String page = request.getParameter("page"); // 当前页数
			String rows = request.getParameter("rows"); // 每页显示行数
			try {
				// 加载论文
				TPaperExample tpexample = new TPaperExample();
				tpexample.createCriteria()
						.andPaperteacheridEqualTo(Long.valueOf(teacherIdLong))
						.andPaperteachorresearchEqualTo("1");
				Pager pager = localServiceEXProxy.queryTPaperBypage(tpexample,
						Integer.valueOf(rows), Integer.valueOf(page));
				super.reponseWriter(JSON.toJSONString(pager));
			} catch (IOException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			super.reponseWriter(JSON.toJSONString(new ArrayList()));
		}
	}

	/**
	 * 分页查询教改论文信息
	 */
	public void queryTeachPaper() {
		String teacherIdLong = request.getParameter("teacherId");
		if (teacherIdLong != null) {
			String page = request.getParameter("page"); // 当前页数
			String rows = request.getParameter("rows"); // 每页显示行数
			try {
				// 加载论文
				TPaperExample tpexample = new TPaperExample();
				tpexample.createCriteria()
						.andPaperteacheridEqualTo(Long.valueOf(teacherIdLong))
						.andPaperteachorresearchEqualTo("0");
				Pager pager = localServiceEXProxy.queryTPaperBypage(tpexample,
						Integer.valueOf(rows), Integer.valueOf(page));
				super.reponseWriter(JSON.toJSONString(pager));
			} catch (IOException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			super.reponseWriter(JSON.toJSONString(new ArrayList()));
		}
	}

	/**
	 * 得到教师科研论文信息
	 * 
	 * @return
	 */
	public TPaper getKeyanPaper() {
		TPaper tPaper = new TPaper();
		tPaper.setPapername(request.getParameter("papername"));
		tPaper.setPaperauthor(request.getParameter("paperauthor"));
		tPaper.setPapernotename(request.getParameter("papernotename"));
		tPaper.setPapernoteno(request.getParameter("papernoteno"));
		tPaper.setPaperteachorresearch(request
				.getParameter("paperteachorresearch"));
		tPaper.setPapernotecountry(request.getParameter("papernotecountry"));
		tPaper.setPapernotedate(request.getParameter("papernotedate"));
		tPaper.setPapernotepage(request.getParameter("papernotepage"));
		tPaper.setPaperincluded(request.getParameter("paperincluded"));
		tPaper.setPaperfactors(request.getParameter("paperfactors"));
		tPaper.setPaperreprint(request.getParameter("paperreprint"));
		tPaper.setPaperclassa(request.getParameter("paperclassa"));
		tPaper.setPaperprojectno(request.getParameter("paperprojectno"));
		return tPaper;
	}

	/**
	 * 得到教师教改论文信息
	 * 
	 * @return
	 */
	public TPaper getTeachPaper() {
		TPaper tPaper = new TPaper();
		tPaper.setPapername(request.getParameter("teachpapername"));
		tPaper.setPaperauthor(request.getParameter("teachpaperauthor"));
		tPaper.setPapernotename(request.getParameter("teachpapernotename"));
		tPaper.setPapernoteno(request.getParameter("teachpapernoteno"));
		tPaper.setPapernotecountry(request
				.getParameter("teachpapernotecountry"));
		tPaper.setPapernotedate(request.getParameter("teachpapernotedate"));
		tPaper.setPapernotepage(request.getParameter("teachpapernotepage"));
		tPaper.setPaperincluded(request.getParameter("teachpaperincluded"));
		tPaper.setPaperfactors(request.getParameter("teachpaperfactors"));
		tPaper.setPaperreprint(request.getParameter("teachpaperreprint"));
		tPaper.setPaperprojectno(request.getParameter("teachpaperprojectno"));
		return tPaper;
	}

	public void savePaper() {
		boolean flag = false;
		try {
			String teacherId = request.getParameter("id");
			String teacherName = URLDecoder.decode(
					request.getParameter("name"), "UTF-8");
			String type = request.getParameter("type");
			// 保存论文表
			TPaper tPaper = null;
			if (type != null && type.equals("teach")) {
				tPaper = getTeachPaper();
				tPaper.setPaperteachorresearch("0");
			} else if (type != null && type.equals("keyan")) {
				tPaper = getKeyanPaper();
				tPaper.setPaperteachorresearch("1");
			}
			// tPaper.setPaperdownloadid((Long) downloadIdMap.get("paperDLId"
			// + (i + 1)));
			tPaper.setPaperteacherid(Long.valueOf(teacherId));
			tPaper.setPaperteachername(teacherName);
			localServiceEXProxy.saveTPaper(tPaper);
			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		super.reponseWriter(JSON.toJSONString(flag));
	}

	/**
	 * 删除论文
	 */
	public void deletePaper() {
		boolean flag = false;
		String id = request.getParameter("id");//
		try {
			Long idL = Long.parseLong(id);
			TPaperExample tpexample = new TPaperExample();
			tpexample.createCriteria().andPaperidEqualTo(idL);
			localServiceEXProxy.deleteTPaper(tpexample);
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
	 * 分页查询科研著作信息
	 */
	public void queryWork() {
		String teacherIdLong = request.getParameter("teacherId");
		if (teacherIdLong != null) {
			String page = request.getParameter("page"); // 当前页数
			String rows = request.getParameter("rows"); // 每页显示行数
			try {
				// 加载著作
				TWorkExample twexample = new TWorkExample();
				twexample.createCriteria()
						.andWorkteacheridEqualTo(Long.valueOf(teacherIdLong))
						.andWorkteachorresearchEqualTo("1");
				Pager pager = localServiceEXProxy.queryWorkBypage(twexample,
						Integer.valueOf(rows), Integer.valueOf(page));
				super.reponseWriter(JSON.toJSONString(pager));
			} catch (IOException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			super.reponseWriter(JSON.toJSONString(new ArrayList()));
		}
	}

	/**
	 * 分页查询教学著作信息
	 */
	public void queryTeachWork() {
		String teacherIdLong = request.getParameter("teacherId");
		if (teacherIdLong != null) {
			String page = request.getParameter("page"); // 当前页数
			String rows = request.getParameter("rows"); // 每页显示行数
			try {
				// 加载著作
				TWorkExample twexample = new TWorkExample();
				twexample.createCriteria()
						.andWorkteacheridEqualTo(Long.valueOf(teacherIdLong))
						.andWorkteachorresearchEqualTo("0");
				Pager pager = localServiceEXProxy.queryWorkBypage(twexample,
						Integer.valueOf(rows), Integer.valueOf(page));
				super.reponseWriter(JSON.toJSONString(pager));
			} catch (IOException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			super.reponseWriter(JSON.toJSONString(new ArrayList()));
		}
	}

	/**
	 * 得到教师科研著作信息
	 * 
	 * @return
	 */
	public TWork getKeyanWork() {
		TWork tWork = new TWork();
		tWork.setAlreadypublish(request.getParameter("alreadyPublish"));
		tWork.setClassa(request.getParameter("classA"));
		tWork.setIsbnno(request.getParameter("isbnNO"));
		tWork.setOriauthor(request.getParameter("oriAuthor"));
		tWork.setProjectno(request.getParameter("projectno"));
		tWork.setTotalword(request.getParameter("totalWord"));
		tWork.setTranslateforeign(request.getParameter("translateForeign"));
		tWork.setWorkauthorrank(request.getParameter("workAuthorRank"));
		tWork.setWorkpublisharea(request.getParameter("workPublishArea"));
		tWork.setWorkpublishtime(request.getParameter("workPublishTime"));
		tWork.setWorkpublishunit(request.getParameter("workPublishUnit"));
		tWork.setWorktitle(request.getParameter("workTitle"));
		tWork.setWorktype(request.getParameter("workType"));
		return tWork;
	}

	/**
	 * 得到教师教学著作信息
	 * 
	 * @return
	 */
	public TWork getTeachWork() {
		TWork tWork = new TWork();
		tWork.setAlreadypublish(request.getParameter("teachalreadyPublish"));
		tWork.setIsbnno(request.getParameter("teachisbnNO"));
		tWork.setProjectno(request.getParameter("teachprojectno"));
		tWork.setTotalword(request.getParameter("teachtotalWord"));
		tWork.setWorkauthorrank(request.getParameter("teachworkAuthorRank"));
		tWork.setWorkpublisharea(request.getParameter("teachworkPublishArea"));
		tWork.setWorkpublishtime(request.getParameter("teachworkPublishTime"));
		tWork.setWorkpublishunit(request.getParameter("teachworkPublishUnit"));
		tWork.setWorktitle(request.getParameter("teachworkTitle"));
		return tWork;
	}

	public void saveWork() {
		boolean flag = false;
		try {
			String teacherId = request.getParameter("id");
			String teacherName = URLDecoder.decode(
					request.getParameter("name"), "UTF-8");
			String type = request.getParameter("type");
			// 保存著作表
			TWork tWork = null;
			if (type != null && type.equals("teach")) {
				tWork = getTeachWork();
				tWork.setWorkteachorresearch("0");
			} else if (type != null && type.equals("keyan")) {
				tWork = getKeyanWork();
				tWork.setWorkteachorresearch("1");
			}
			tWork.setWorkteacherid(Long.valueOf(teacherId));
			tWork.setWorkteachername(teacherName);
			localServiceEXProxy.saveTWork(tWork);
			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		super.reponseWriter(JSON.toJSONString(flag));
	}

	/**
	 * 删除论文
	 */
	public void deleteWork() {
		boolean flag = false;
		String id = request.getParameter("id");//
		try {
			Long idL = Long.parseLong(id);
			TWorkExample tpexample = new TWorkExample();
			tpexample.createCriteria().andWorkidEqualTo(idL);
			localServiceEXProxy.deleteTWork(tpexample);
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
	 * 分页查询科研获奖信息
	 */
	public void queryPrize() {
		String teacherIdLong = request.getParameter("teacherId");
		if (teacherIdLong != null) {
			String page = request.getParameter("page"); // 当前页数
			String rows = request.getParameter("rows"); // 每页显示行数
			try {
				// 加载获奖信息
				// List<TPrize> tPrizeList = new ArrayList<TPrize>();
				TPrizeExample tPrizeExample = new TPrizeExample();
				tPrizeExample.createCriteria()
						.andPrizeteachorresearchEqualTo("1")
						.andPrizeteacheridEqualTo(Long.valueOf(teacherIdLong));
				Pager pager = localServiceEXProxy.queryPrizeBypage(
						tPrizeExample, Integer.valueOf(rows),
						Integer.valueOf(page));
				super.reponseWriter(JSON.toJSONString(pager));
			} catch (IOException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			super.reponseWriter(JSON.toJSONString(new ArrayList()));
		}
	}

	/**
	 * 分页查询科研获奖信息
	 */
	public void queryTeachPrize() {
		String teacherIdLong = request.getParameter("teacherId");
		if (teacherIdLong != null) {
			String page = request.getParameter("page"); // 当前页数
			String rows = request.getParameter("rows"); // 每页显示行数
			try {
				// 加载获奖信息
				// List<TPrize> tPrizeList = new ArrayList<TPrize>();
				TPrizeExample tPrizeExample = new TPrizeExample();
				tPrizeExample.createCriteria()
						.andPrizeteachorresearchEqualTo("0")
						.andPrizeteacheridEqualTo(Long.valueOf(teacherIdLong));
				Pager pager = localServiceEXProxy.queryPrizeBypage(
						tPrizeExample, Integer.valueOf(rows),
						Integer.valueOf(page));
				super.reponseWriter(JSON.toJSONString(pager));
			} catch (IOException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			super.reponseWriter(JSON.toJSONString(new ArrayList()));
		}
	}

	/**
	 * 分页查询科研获奖信息
	 */
	public void querySpeakerPrize() {
		String teacherIdLong = request.getParameter("teacherId");
		if (teacherIdLong != null) {
			String page = request.getParameter("page"); // 当前页数
			String rows = request.getParameter("rows"); // 每页显示行数
			try {
				// 加载获奖信息
				// List<TPrize> tPrizeList = new ArrayList<TPrize>();
				TPrizeExample tPrizeExample = new TPrizeExample();
				tPrizeExample.createCriteria()
						.andPrizeteachorresearchEqualTo("2")
						.andPrizeteacheridEqualTo(Long.valueOf(teacherIdLong));
				Pager pager = localServiceEXProxy.queryPrizeBypage(
						tPrizeExample, Integer.valueOf(rows),
						Integer.valueOf(page));
				super.reponseWriter(JSON.toJSONString(pager));
			} catch (IOException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			super.reponseWriter(JSON.toJSONString(new ArrayList()));
		}
	}

	/**
	 * 得到教师获奖信息
	 * 
	 * @return
	 */
	public TPrize getKeyanPrize() {
		TPrize tPrize = new TPrize();
		tPrize.setPrizetype(request.getParameter("prizetype"));
		tPrize.setPrizedate(request.getParameter("prizedate"));
		tPrize.setPrizetitle(request.getParameter("prizetitle"));
		tPrize.setPrizerank(request.getParameter("prizerank"));
		tPrize.setPrizelevel(request.getParameter("prizelevel"));
		tPrize.setPrizeresultname(request.getParameter("prizeresultname"));
		tPrize.setPrizedep(request.getParameter("prizedep"));
		tPrize.setPrizeno(request.getParameter("prizeno"));
		return tPrize;
	}

	/**
	 * 得到优秀主讲教师信息
	 * 
	 * @return
	 */
	public TPrize getSpeakerPrize() {
		TPrize tPrize = new TPrize();
		tPrize.setPrizedate(request.getParameter("speakerprizedate"));
		tPrize.setPrizetitle(request.getParameter("speakerprizetitle"));
		tPrize.setPrizelevel(request.getParameter("speakerprizelevel"));
		tPrize.setPrizedep(request.getParameter("speakerprizedep"));
		tPrize.setPrizeno(request.getParameter("speakerprizeno"));
		return tPrize;
	}

	/**
	 * 得到教学成果奖信息
	 * 
	 * @return
	 */
	public TPrize getTeachPrize() {
		TPrize tPrize = new TPrize();
		tPrize.setPrizetype(request.getParameter("teachprizetype"));
		tPrize.setPrizedate(request.getParameter("teachprizedate"));
		tPrize.setPrizetitle(request.getParameter("teachprizetitle"));
		tPrize.setPrizerank(request.getParameter("teachprizerank"));
		tPrize.setPrizelevel(request.getParameter("teachprizelevel"));
		tPrize.setPrizeresultname(request.getParameter("teachprizeresultname"));
		tPrize.setPrizedep(request.getParameter("teachprizedep"));
		tPrize.setPrizeno(request.getParameter("teachprizeno"));
		return tPrize;
	}

	public void savePrize() {
		boolean flag = false;
		try {
			String teacherId = request.getParameter("id");
			String teacherName = URLDecoder.decode(
					request.getParameter("name"), "UTF-8");
			String type = request.getParameter("type");
			// 保存获奖表
			TPrize tPrize = null;
			if (type != null && type.equals("teach")) {
				tPrize = getTeachPrize();
				tPrize.setPrizeteachorresearch("0");
			} else if (type != null && type.equals("keyan")) {
				tPrize = getKeyanPrize();
				tPrize.setPrizeteachorresearch("1");
			} else if (type != null && type.equals("speaker")) {
				tPrize = getSpeakerPrize();
				tPrize.setPrizeteachorresearch("2");
			}
			tPrize.setPrizeteacherid(Long.valueOf(teacherId));
			tPrize.setPrizeteachername(teacherName);
			localServiceEXProxy.saveTPrize(tPrize);
			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		super.reponseWriter(JSON.toJSONString(flag));
	}

	/**
	 * 删除论文
	 */
	public void deletePrize() {
		boolean flag = false;
		String id = request.getParameter("id");//
		try {
			Long idL = Long.parseLong(id);
			TPrizeExample tpexample = new TPrizeExample();
			tpexample.createCriteria().andPrizeidEqualTo(idL);
			localServiceEXProxy.deleteTPrize(tpexample);
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
	 * 分页查询科研获奖信息
	 */
	public void queryPartJob() {
		String teacherIdLong = request.getParameter("teacherId");
		if (teacherIdLong != null) {
			String page = request.getParameter("page"); // 当前页数
			String rows = request.getParameter("rows"); // 每页显示行数
			try {
				// 加载获奖信息
				// List<TPrize> tPrizeList = new ArrayList<TPrize>();
				TPartjobExample tPartjobExample = new TPartjobExample();
				tPartjobExample.createCriteria().andPartteacheridEqualTo(
						Long.valueOf(teacherIdLong));
				Pager pager = localServiceEXProxy.queryPartJobBypage(
						tPartjobExample, Integer.valueOf(rows),
						Integer.valueOf(page));
				super.reponseWriter(JSON.toJSONString(pager));
			} catch (IOException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			super.reponseWriter(JSON.toJSONString(new ArrayList()));
		}
	}

	/**
	 * 得到教学成果奖信息
	 * 
	 * @return
	 */
	public TPartjob getPartJob() {
		TPartjob tPartjob = new TPartjob();
		tPartjob.setPartbegintime(request.getParameter("partbegintime"));
		tPartjob.setPartendtime(request.getParameter("partendtime"));
		tPartjob.setPartjob(request.getParameter("partjob"));
		tPartjob.setPartlevel(request.getParameter("partlevel"));
		tPartjob.setPartofmoney(request.getParameter("partofmoney"));
		tPartjob.setPartplace(request.getParameter("partplace"));
		tPartjob.setParttopay(request.getParameter("parttopay"));
		return tPartjob;
	}

	public void savePartJob() {
		boolean flag = false;
		try {
			String teacherId = request.getParameter("id");
			String teacherName = URLDecoder.decode(
					request.getParameter("name"), "UTF-8");
			TPartjob tPartjob = getPartJob();
			tPartjob.setPartteacherid(Long.valueOf(teacherId));
			tPartjob.setPartname(teacherName);
			localServiceEXProxy.savePartJob(tPartjob);
			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		super.reponseWriter(JSON.toJSONString(flag));
	}

	/**
	 * 删除论文
	 */
	public void deletePartJob() {
		boolean flag = false;
		String id = request.getParameter("id");//
		try {
			Long idL = Long.parseLong(id);
			TPartjobExample example = new TPartjobExample();
			example.createCriteria().andPartidEqualTo(idL);
			localServiceEXProxy.deletePartJob(example);
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
	 * 分页查询科研获奖信息
	 */
	public void queryHonor() {
		String teacherIdLong = request.getParameter("teacherId");
		if (teacherIdLong != null) {
			String page = request.getParameter("page"); // 当前页数
			String rows = request.getParameter("rows"); // 每页显示行数
			try {
				// 加载获奖信息
				// List<TPrize> tPrizeList = new ArrayList<TPrize>();
				THonorandotherExample tHonorandotherExample = new THonorandotherExample();
				tHonorandotherExample.createCriteria()
						.andHonorteacheridEqualTo(Long.valueOf(teacherIdLong));
				Pager pager = localServiceEXProxy.queryHonorBypage(
						tHonorandotherExample, Integer.valueOf(rows),
						Integer.valueOf(page));
				super.reponseWriter(JSON.toJSONString(pager));
			} catch (IOException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			super.reponseWriter(JSON.toJSONString(new ArrayList()));
		}
	}

	/**
	 * 得到教学成果奖信息
	 * 
	 * @return
	 */
	public THonorandother getHonor() {
		THonorandother tHonorandother = new THonorandother();
		tHonorandother.setHonordep(request.getParameter("honordep"));
		tHonorandother.setHonorleave(request.getParameter("honorleave"));
		tHonorandother.setHonorremark(request.getParameter("honorremark"));
		tHonorandother.setHonortitle(request.getParameter("honortitle"));
		return tHonorandother;
	}

	public void saveHonor() {
		boolean flag = false;
		try {
			String teacherId = request.getParameter("id");
			String teacherName = URLDecoder.decode(
					request.getParameter("name"), "UTF-8");
			THonorandother tHonorandother = getHonor();
			tHonorandother.setHonorteacherid(Long.valueOf(teacherId));
			tHonorandother.setHonorteachername(teacherName);
			localServiceEXProxy.saveHonor(tHonorandother);
			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		super.reponseWriter(JSON.toJSONString(flag));
	}

	/**
	 * 删除论文
	 */
	public void deleteHonor() {
		boolean flag = false;
		String id = request.getParameter("id");//
		try {
			Long idL = Long.parseLong(id);
			THonorandotherExample tHonorandotherExample = new THonorandotherExample();
			tHonorandotherExample.createCriteria().andHonoridEqualTo(idL);
			localServiceEXProxy.deleteHonor(tHonorandotherExample);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			flag = true;
			super.reponseWriter(JSON.toJSONString(flag));
		}
	}
	
	public String getResult()
	  {
	    return this.result;
	  }
	  
	  public void setResult(String result)
	  {
	    this.result = result;
	  }
	  
	  public void doQuerySRRJson()
	  {
	    String type = this.request.getParameter("srrTypePara");
	    String yearType = this.request.getParameter("yearType");
	    if (yearType == null) {
	      yearType = "60";
	    }
	    String temp_str = "";
	    Date dt = new Date();
	    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	    Calendar calendar = Calendar.getInstance();
	    calendar.setTime(dt);
	    
	    calendar.add(2, -Integer.valueOf(yearType).intValue());
	    temp_str = sdf.format(calendar.getTime());
	    try
	    {
	      TResearchExample trexample = new TResearchExample();
	      trexample.createCriteria().andResearchrankEqualTo("1")
	        .andResearchteachorresearchEqualTo("0")
	        .andResearchbegindateGreaterThanOrEqualTo(temp_str);
	      List researchList = this.localServiceEXProxy.queryTResearchList(trexample);
	      


	      TPaperExample tpexample = new TPaperExample();
	      tpexample.createCriteria().andPaperauthorEqualTo("1")
	        .andPaperteachorresearchEqualTo("0")
	        .andPapernotedateGreaterThanOrEqualTo(temp_str);
	      List paperList = this.localServiceEXProxy.queryTPaperList(tpexample);
	      


	      TWorkExample twexample = new TWorkExample();
	      twexample.createCriteria().andWorkauthorrankEqualTo("1")
	        .andWorkteachorresearchEqualTo("0")
	        .andWorkpublishtimeGreaterThanOrEqualTo(temp_str);
	      this.tWorkList = this.localServiceEXProxy.queryTWorkList(twexample);
	      


	      TPrizeExample tPrizeExample = new TPrizeExample();
	      tPrizeExample.createCriteria().andPrizeteachorresearchEqualTo("2")
	        .andPrizedateGreaterThanOrEqualTo(temp_str);
	      List speakerprizeList = this.localServiceEXProxy
	        .queryTPrizeList(tPrizeExample);
	      
	      TPrizeExample tPrizeExample2 = new TPrizeExample();
	      tPrizeExample2.createCriteria().andPrizerankEqualTo("1")
	        .andPrizeteachorresearchEqualTo("0")
	        .andPrizedateGreaterThanOrEqualTo(temp_str);
	      List teachprizeList = this.localServiceEXProxy
	        .queryTPrizeList(tPrizeExample2);
	      
	      Map<String, Object> map = new HashMap();
	      map.put("researchList", researchList);
	      map.put("paperList", paperList);
	      map.put("tWorkList", this.tWorkList);
	      map.put("speakerprizeList", speakerprizeList);
	      map.put("teachprizeList", teachprizeList);
	      super.reponseWriter(JSON.toJSONString(map));
	    }
	    catch (Exception e)
	    {
	      e.printStackTrace();
	    }
	  }
	  
	  public void doQuerySRRKeyanJson()
	  {
	    String type = this.request.getParameter("srrTypePara");
	    String yearType = this.request.getParameter("yearType");
	    if (yearType == null) {
	      yearType = "60";
	    }
	    String temp_str = "";
	    Date dt = new Date();
	    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	    Calendar calendar = Calendar.getInstance();
	    calendar.setTime(dt);
	    
	    calendar.add(2, -Integer.valueOf(yearType).intValue());
	    temp_str = sdf.format(calendar.getTime());
	    try
	    {
	      TResearchExample trexample = new TResearchExample();
	      trexample.createCriteria().andResearchrankEqualTo("1")
	        .andResearchteachorresearchEqualTo("1")
	        .andResearchbegindateGreaterThanOrEqualTo(temp_str);
	      List researchList = this.localServiceEXProxy
	        .queryTResearchList(trexample);
	      


	      TPaperExample tpexample = new TPaperExample();
	      tpexample.createCriteria().andPaperauthorEqualTo("1")
	        .andPaperteachorresearchEqualTo("1")
	        .andPapernotedateGreaterThanOrEqualTo(temp_str);
	      List paperList = this.localServiceEXProxy.queryTPaperList(tpexample);
	      


	      TWorkExample twexample = new TWorkExample();
	      twexample.createCriteria().andWorkauthorrankEqualTo("1")
	        .andWorkteachorresearchEqualTo("1")
	        .andWorkpublishtimeGreaterThanOrEqualTo(temp_str);
	      List tWorkList = this.localServiceEXProxy.queryTWorkList(twexample);
	      


	      TPrizeExample tPrizeExample = new TPrizeExample();
	      tPrizeExample.createCriteria().andPrizeteachorresearchEqualTo("1")
	        .andPrizedateGreaterThanOrEqualTo(temp_str).andPrizerankEqualTo("1");
	      List prizeList = this.localServiceEXProxy
	        .queryTPrizeList(tPrizeExample);
	      

	      TPartjobExample tPartjobExample = new TPartjobExample();
	      tPartjobExample.createCriteria().andPartbegintimeGreaterThanOrEqualTo(temp_str);
	      List tPartjobList = this.localServiceEXProxy.queryPartJobList(tPartjobExample);
	      

	      THonorandotherExample tHonorandotherExample = new THonorandotherExample();
	      
	      List honorandotherList = this.localServiceEXProxy.queryTHonorandotherList(tHonorandotherExample);
	      
	      Map<String, Object> map = new HashMap();
	      map.put("researchList", researchList);
	      map.put("paperList", paperList);
	      map.put("tWorkList", tWorkList);
	      map.put("prizeList", prizeList);
	      map.put("honorandotherList", honorandotherList);
	      map.put("tPartjobList", tPartjobList);
	      super.reponseWriter(JSON.toJSONString(map));
	    }
	    catch (Exception e)
	    {
	      e.printStackTrace();
	    }
	  }

}
