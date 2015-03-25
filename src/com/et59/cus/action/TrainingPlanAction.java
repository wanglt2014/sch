package com.et59.cus.action;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.alibaba.fastjson.JSON;
import com.et59.cus.domain.entity.TDepartment;
import com.et59.cus.domain.entity.TDepartmentWithBLOBs;
import com.et59.cus.domain.entity.TTrainingplan;
import com.et59.cus.domain.entity.TTrainingplanExample;
import com.et59.cus.domain.entity.ex.Pager;

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

	public TTrainingplan tTrainingplan;
	public TDepartment tDepartment;

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
	 * 数据字典首页
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

	public String toTeacherPage() {
		super.commonQueryForTeacher("");
		return "to_teacher_index";
	}

	/**
	 * 分页查询师资队伍
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
			TDepartmentWithBLOBs tdepartment = localServiceEXProxy
					.queryTDepartment(Long.valueOf(id));
			TTrainingplanExample example = new TTrainingplanExample();
			List ids = new ArrayList();
			if (tdepartment != null) {
				Long id1 = tdepartment.getDepartmentplanforone();
				Long id2 = tdepartment.getDepartmentplanfortwo();
				Long id3 = tdepartment.getDepartmentplanforthree();
				Long id4 = tdepartment.getDepartmentplanforfour();
				if (id1 != null) {
					ids.add(id1);
				}
				if (id2 != null) {
					ids.add(id2);
				}
				if (id3 != null) {
					ids.add(id3);
				}
				if (id4 != null) {
					ids.add(id4);
				}
			}
			if (ids.size() > 0) {
				example.createCriteria().andTrainingplanidIn(ids);
				// 删除专业对应的方案表数据
				localServiceEXProxy.deleteTTrainingplan(example);
			}
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

}
