package com.et59.cus.action;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;

import org.apache.commons.beanutils.BeanUtils;

import com.alibaba.fastjson.JSON;
import com.et59.cus.domain.entity.TDepartment;
import com.et59.cus.domain.entity.TDepartmentWithBLOBs;
import com.et59.cus.domain.entity.TDictionary;
import com.et59.cus.domain.entity.TDownload;
import com.et59.cus.domain.entity.TPaper;
import com.et59.cus.domain.entity.TSubject;
import com.et59.cus.domain.entity.TSubjectExample;
import com.et59.cus.domain.entity.TTeacher;
import com.et59.cus.domain.entity.TTrainingplan;
import com.et59.cus.domain.entity.TTrainingplanExample;
import com.et59.cus.domain.entity.TTrainingplanExample.Criteria;
import com.et59.cus.domain.entity.ex.Pager;
import com.et59.cus.dto.TSubjectDTO;
import com.et59.cus.tools.ComonUtil;
import com.et59.cus.tools.Constant;

/**
 * 人才培养方案
 *
 */
public class TrainingPlanAction extends BaseAction {
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

	public String defultId;

	public TTrainingplan tTrainingplan;
	public TDepartment tDepartment;
	public TSubject tSubject;

	public TDepartmentWithBLOBs tDepartmentWithBLOBs;

	public TSubjectDTO tSubjectDTO;

	public List<TSubject> oneList = new ArrayList<TSubject>();
	public List<TSubject> twoList = new ArrayList<TSubject>();
	public List<TSubject> threeList = new ArrayList<TSubject>();
	public List<TSubject> fourList = new ArrayList<TSubject>();
	public List<TSubject> fiveList = new ArrayList<TSubject>();
	public List<TSubject> sixList = new ArrayList<TSubject>();
	public List<TSubject> sevenList = new ArrayList<TSubject>();
	public List<TSubject> eightList = new ArrayList<TSubject>();
	
	
	public String departmentid;
	public String planType;
	/**
	 * 数据字典列表
	 */
	protected List<TDictionary> gradeList;

	public List<TDictionary> getGradeList() {
		return gradeList;
	}

	public void setGradeList(List<TDictionary> gradeList) {
		this.gradeList = gradeList;
	}

	public String getDepartmentid() {
		return departmentid;
	}

	public void setDepartmentid(String departmentid) {
		this.departmentid = departmentid;
	}

	public String getPlanType() {
		return planType;
	}

	public void setPlanType(String planType) {
		this.planType = planType;
	}

	public TSubjectDTO gettSubjectDTO() {
		return tSubjectDTO;
	}

	public void settSubjectDTO(TSubjectDTO tSubjectDTO) {
		this.tSubjectDTO = tSubjectDTO;
	}

	public TSubject gettSubject() {
		return tSubject;
	}

	public void settSubject(TSubject tSubject) {
		this.tSubject = tSubject;
	}

	public List<TSubject> getOneList() {
		return oneList;
	}

	public void setOneList(List<TSubject> oneList) {
		this.oneList = oneList;
	}

	public List<TSubject> getTwoList() {
		return twoList;
	}

	public void setTwoList(List<TSubject> twoList) {
		this.twoList = twoList;
	}

	public List<TSubject> getThreeList() {
		return threeList;
	}

	public void setThreeList(List<TSubject> threeList) {
		this.threeList = threeList;
	}

	public List<TSubject> getFourList() {
		return fourList;
	}

	public void setFourList(List<TSubject> fourList) {
		this.fourList = fourList;
	}

	public List<TSubject> getFiveList() {
		return fiveList;
	}

	public void setFiveList(List<TSubject> fiveList) {
		this.fiveList = fiveList;
	}

	public List<TSubject> getSixList() {
		return sixList;
	}

	public void setSixList(List<TSubject> sixList) {
		this.sixList = sixList;
	}

	public List<TSubject> getSevenList() {
		return sevenList;
	}

	public void setSevenList(List<TSubject> sevenList) {
		this.sevenList = sevenList;
	}

	public List<TSubject> getEightList() {
		return eightList;
	}

	public void setEightList(List<TSubject> eightList) {
		this.eightList = eightList;
	}

	public String getDefultId() {
		return defultId;
	}

	public void setDefultId(String defultId) {
		this.defultId = defultId;
	}

	public TDepartmentWithBLOBs gettDepartmentWithBLOBs() {
		return tDepartmentWithBLOBs;
	}

	public void settDepartmentWithBLOBs(
			TDepartmentWithBLOBs tDepartmentWithBLOBs) {
		this.tDepartmentWithBLOBs = tDepartmentWithBLOBs;
	}

	public TDepartment gettDepartment() {
		return tDepartment;
	}

	public void settDepartment(TDepartment tDepartment) {
		this.tDepartment = tDepartment;
	}

	public TTrainingplan gettTrainingplan() {
		return tTrainingplan;
	}

	public void settTrainingplan(TTrainingplan tTrainingplan) {
		this.tTrainingplan = tTrainingplan;
	}

	/**
	 * 首页
	 * 
	 * @return
	 */
	public String index() {
		return "index";
	}

	/**
	 * @Title: toTeacherPage
	 * @Description: 跳转到教务教学通知
	 * @return String 返回类型
	 * @throws
	 */

	public String toPlanPage() {
		// super.commonQueryForTeacher("");
		String departmentid = request.getParameter("id"); // 每页显示行数
		TDepartment tDepartment = new TDepartment();
		try {
			Pager pager = localServiceEXProxy.queryTDepartmentBypage(
					tDepartment, 9, 1);
			tdepartmentList = (List<TDepartmentWithBLOBs>) pager.getRows();
			if (departmentid != null && !departmentid.isEmpty()) {
				defultId = departmentid;
			} else {
				if (tdepartmentList != null && tdepartmentList.size() > 0) {
					defultId = String.valueOf(tdepartmentList.get(0)
							.getDepartmentid());
				} else {
					defultId = "0";
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "to_plan_index";
	}

	/**
	 * 分页查询专业信息
	 */
	public void query() {
		// String teachernamequery = request.getParameter("teachernamequery");
		// String departmentquery = request.getParameter("departmentquery");
		String page = request.getParameter("page"); // 当前页数
		String rows = request.getParameter("rows"); // 每页显示行数
		try {
			TDepartment tDepartment = new TDepartment();
			Pager pager = localServiceEXProxy.queryTDepartmentBypage(
					tDepartment, Integer.valueOf(rows), Integer.valueOf(page));
			super.reponseWriter(JSON.toJSONString(pager));
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 保存专业
	 */
	public void save() {
		boolean flag = false;
		TDepartmentWithBLOBs tDepartment = getTDepartment();
		try {
			localServiceEXProxy.saveTDepartmentWithBLOBs(tDepartment);
			flag = true;
			super.reponseWriter(JSON.toJSONString(flag));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 编辑专业-人才培养方案
	 */
	public void update() {
		boolean flag = false;
		String id = request.getParameter("id");
		TDepartmentWithBLOBs tDepartment = getTDepartment();
		tDepartment.setDepartmentid(Long.valueOf(id));
		try {
			localServiceEXProxy.updateTDepartmentWithBLOBs(tDepartment);
			flag = true;
			super.reponseWriter(JSON.toJSONString(flag));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 删除专业-人才培养方案
	 */
	public void deleteTDepartment() {
		boolean flag = false;
		String id = request.getParameter("id");
		try {
			TTrainingplanExample example = new TTrainingplanExample();
			example.createCriteria().andTrainingplandepidEqualTo(
					Long.valueOf(id));
			// 删除专业对应的方案表数据
			localServiceEXProxy.deleteTTrainingplan(example);
			// 删除专业表
			localServiceEXProxy.deleteTDepartment(Long.valueOf(id));
			flag = true;
			super.reponseWriter(JSON.toJSONString(flag));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 公共方法
	 * 
	 * @return
	 */
	public TDepartmentWithBLOBs getTDepartment() {
		String departmentname = request.getParameter("departmentname");
		String departmenttype = request.getParameter("departmenttype");
		String departmentContent = request.getParameter("departmentContent");
		String directionContent = request.getParameter("directionContent");

		TDepartmentWithBLOBs tDepartment = new TDepartmentWithBLOBs();
		tDepartment.setDepartmentname(departmentname);
		tDepartment.setDepartmenttype(departmenttype);
		tDepartment.setDepartmentintroduction(departmentContent);
		tDepartment.setDepartmentdirection(directionContent);

		return tDepartment;
	}

	/**
	 * 编辑培养方案
	 */
	public void updatePlan() {
		boolean flag = false;
		String id = request.getParameter("id");
		String planType = request.getParameter("planType");
		String planNum = request.getParameter("planNum");
		try {
			List<TTrainingplan> tTrainingplanList = getTTrainingplan(planNum);
			TTrainingplanExample example = new TTrainingplanExample();
			example.createCriteria()
					.andTrainingplandepidEqualTo(Long.valueOf(id))
					.andTrainingplantypeEqualTo(planType);
			localServiceEXProxy.deleteTTrainingplan(example);
			for (TTrainingplan tTrainingplan : tTrainingplanList) {
				if(tTrainingplan.getTrplansubidsforone()!=null){
					tTrainingplan.setTrainingplandepid(Long.valueOf(id));
					tTrainingplan.setTrainingplantype(planType);
					localServiceEXProxy.saveTTrainingplan(tTrainingplan);
				}
				
			}
			flag = true;
			super.reponseWriter(JSON.toJSONString(flag));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 公共方法
	 * 
	 * @return
	 */
	public List<TTrainingplan> getTTrainingplan(String planNum) {
		List<TTrainingplan> list = new ArrayList<TTrainingplan>();
		TTrainingplan tTrainingplan = null;
		for (int i = 1; i <= Integer.parseInt(planNum); i++) {
			String trplansubidsforoneId = request
					.getParameter("trplansubidsforoneId" + i);
			String trainingplangrade = request
					.getParameter("trainingplangrade" + i);
			String trplansubidsforone = request
					.getParameter("trplansubidsforone" + i);//课程名称
			String trplansubidsfortwo = request
					.getParameter("trplansubidsfortwo" + i);//课程名称
			tTrainingplan = new TTrainingplan();
			tTrainingplan.setTrplansubidsforone(trplansubidsforoneId);
			tTrainingplan.setTrainingplangrade(trainingplangrade);
			tTrainingplan.setTrplansubidsforone(trplansubidsforone);
			tTrainingplan.setTrplansubidsfortwo(trplansubidsfortwo);
			list.add(tTrainingplan);
		}

		return list;
	}

	/**
	 * 
	 */
	public void queryTrainingPlanByDepId() {
		String departmentid = request.getParameter("departmentid");
		String planType = request.getParameter("planType");

		try {
			TTrainingplanExample example = new TTrainingplanExample();
			example.createCriteria()
					.andTrainingplandepidEqualTo(Long.valueOf(departmentid))
					.andTrainingplantypeEqualTo(planType);

			List<TTrainingplan> list = localServiceEXProxy
					.queryTTrainingplan(example);
//			Map map = new HashMap();
//				for (TTrainingplan row : list) {
//				map.put("trplansubidsforone", row.getTrplansubidsforone());
//				}
			super.reponseWriter(JSON.toJSONString(list));
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @Title: showDepDetail
	 * @Description: 跳转到详细页面
	 * @param @return 设定文件
	 * @return String 返回类型
	 * @throws
	 */
	public String showDepDetail() {
		// super.commonquery();
		String id = request.getParameter("id");
		try {
			tDepartmentWithBLOBs = localServiceEXProxy.queryTDepartment(Long
					.valueOf(id));

		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "plan_result";
	}

	/**
	 * @Title: trainingPlanDetail
	 * @Description: 跳转到详细页面
	 * @param @return 设定文件
	 * @return String 返回类型
	 * @throws
	 */
	public String trainingPlanDetail() {
		// super.commonquery();
		String id = request.getParameter("id");
		try {
			tDepartmentWithBLOBs = localServiceEXProxy.queryTDepartment(Long
					.valueOf(id));
			TDepartment tDepartment = new TDepartment();
			Pager pager = localServiceEXProxy.queryTDepartmentBypage(
					tDepartment, 9, 1);
			tdepartmentList = (List<TDepartmentWithBLOBs>) pager.getRows();
			if (tdepartmentList != null && tdepartmentList.size() > 0) {
				defultId = String.valueOf(tdepartmentList.get(0)
						.getDepartmentid());
			} else {
				defultId = "0";
			}

		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "plan_detail";
	}

	/**
	 * @Title: toTablePage
	 * @Description: 跳转到培养方案
	 * @return String 返回类型
	 * @throws
	 */
	public String toTablePage() {
		String id = request.getParameter("id");// 专业ID
		// TDepartment tDepartment = new TDepartment();
		// try {
		// // Pager pager = localServiceEXProxy.queryTDepartmentBypage(
		// // tDepartment, 9, 1);
		// // tdepartmentList = (List<TDepartmentWithBLOBs>) pager.getRows();
		// // if (tdepartmentList != null && tdepartmentList.size() > 0) {
		// // defultId = String.valueOf(tdepartmentList.get(0)
		// // .getDepartmentid());
		// // } else {
		// // defultId = "0";
		// // }
		// defultId = id;
		// } catch (Exception e) {
		// e.printStackTrace();
		// }
		defultId = id;
		return "plan_table";
	}

	/**
	 * @Title: trainingPlanTable
	 * @Description: 跳转到表格页面
	 * @param @return 设定文件
	 * @return String 返回类型
	 * @throws
	 */
	public String trainingPlanTable() {
		departmentid = request.getParameter("departmentid");// 专业ID
		planType = request.getParameter("planType");// 方案类型（本科1，硕士2，博士3，专硕4）
		String trainingplangrade = request.getParameter("trainingplangrade");
		
		try {
		TDictionary tDictionary = new TDictionary();
		tDictionary.setDictionarytype("grade");
		Pager pager = localServiceProxy.queryDictionaryBypage(
				tDictionary, 100, 1);
		gradeList = (List<TDictionary>) pager.getRows();
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "plan_table_result";
	}

	
	
	
	public String trainingPlanTableResult() {
		departmentid = request.getParameter("departmentid");// 专业ID
		planType = request.getParameter("planType");// 方案类型（本科1，硕士2，博士3，专硕4）
		String trainingplangrade = request.getParameter("trainingplangrade");
		try {
			TTrainingplanExample example = new TTrainingplanExample();
			Criteria cr = example.createCriteria();
			cr.andTrainingplandepidEqualTo(Long.valueOf(departmentid)).andTrainingplantypeEqualTo(planType);
			if(trainingplangrade!=null && !"".equals(trainingplangrade)){
				cr.andTrainingplangradeEqualTo(trainingplangrade);
			}

			List<TTrainingplan> list = localServiceEXProxy
					.queryTTrainingplan(example);
			if (null != list && list.size() > 0) {
				TSubjectExample subjectExample = new TSubjectExample();
				StringBuffer subIds = new StringBuffer();
				HashSet hs = new HashSet();
				TTrainingplan row = list.get(0);
				String[] arr = row.getTrplansubidsforone().split(",");
				hs.addAll(Arrays.asList(arr));
				subjectExample.createCriteria().andSubjectidIn(
						new ArrayList(hs));
				subjectList = localServiceEXProxy.queryTSubject(subjectExample);
				TDictionary tDictionary = new TDictionary();
				tDictionary.setDictionarytype("subjectType");
				Pager pager = localServiceProxy.queryDictionaryBypage(
						tDictionary, 100, 1);
				dictionaryList = (List<TDictionary>) pager.getRows();
			}
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "plan_table_resultTable";
	}
	/**
	 * @Title: subjectDetail
	 * @Description: 跳转到资料下载详细页面
	 * @param @return 设定文件
	 * @return String 返回类型
	 * @throws
	 */
	public String subjectDetail() {
		String id = request.getParameter("id");
		TDepartment tDepartment = new TDepartment();
		try {
			Pager pager = localServiceEXProxy.queryTDepartmentBypage(
					tDepartment, 9, 1);
			tdepartmentList = (List<TDepartmentWithBLOBs>) pager.getRows();
			tSubject = localServiceEXProxy.querySubjectById(Long.valueOf(id));

			tSubjectDTO = new TSubjectDTO();
			BeanUtils.copyProperties(tSubjectDTO, tSubject);
			Long outlineId = tSubject.getSubjectoutline();
			if (outlineId != null) {
				TDownload outlineFile = localServiceEXProxy
						.queryDownloadById(outlineId);
				tSubjectDTO
						.setSubjectoutlinePath(outlineFile.getFileshowpath());
				tSubjectDTO.setSubjectoutlineName(outlineFile.getFilename());
			}

			Long scheduleId = tSubject.getSubjectschedule();
			if (scheduleId != null) {
				TDownload scheduleFile = localServiceEXProxy
						.queryDownloadById(scheduleId);
				tSubjectDTO.setSubjectschedulePath(scheduleFile
						.getFileshowpath());
				tSubjectDTO.setSubjectscheduleName(scheduleFile.getFilename());
			}

			Long infoId = tSubject.getSubjectinfo();
			if (infoId != null) {
				TDownload infoFile = localServiceEXProxy
						.queryDownloadById(infoId);
				tSubjectDTO.setSubjectinfoPath(infoFile.getFileshowpath());
				tSubjectDTO.setSubjectinfoName(infoFile.getFilename());
			}

		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "plan_table_subject";
	}

	/**
	 * 查询专业教师列表
	 * 
	 * @return
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public String doQueryTeacher() {
		if (log.isDebugEnabled()) {
			log.debug("查询交易信息currentPage>>>>:" + currentPage);
		}
		TDepartment tDepartment = new TDepartment();
		try {
			Pager pagerdep = localServiceEXProxy.queryTDepartmentBypage(
					tDepartment, 9, 1);
			tdepartmentList = (List<TDepartmentWithBLOBs>) pagerdep.getRows();
			String id = request.getParameter("id");
			String departmentCode = request.getParameter("para");
			TTeacher tTeacher = new TTeacher();
			tTeacher.setDepartment(departmentCode);
			Map map = localServiceProxy.queryTeacherByTypeForPage(tTeacher,
					Constant.PAGESIZE, currentPage);
			TDictionary tDictionary = new TDictionary();
			tDictionary.setDictionarycode(departmentCode);
			tDictionary.setDictionarytype("department");
			Pager pager = localServiceProxy.queryDictionaryBypage(tDictionary,
					100, 1);
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
	 * 测试
	 * 
	 * @return
	 */
	public String testindex() {
		return "testindex";
	}
}
