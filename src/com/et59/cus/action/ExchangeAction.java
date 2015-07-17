package com.et59.cus.action;

import java.io.IOException;
import java.net.URLDecoder;
import java.util.ArrayList;

import org.apache.log4j.Logger;

import com.alibaba.fastjson.JSON;
import com.et59.cus.domain.entity.TAttmeeting;
import com.et59.cus.domain.entity.TAttmeetingExample;
import com.et59.cus.domain.entity.TAtttrain;
import com.et59.cus.domain.entity.TAtttrainExample;
import com.et59.cus.domain.entity.TForeignExperts;
import com.et59.cus.domain.entity.THoldmeeting;
import com.et59.cus.domain.entity.TVisitschool;
import com.et59.cus.domain.entity.TVisitschoolExample;
import com.et59.cus.domain.entity.ex.Pager;

/**
 * <p>
 * Title: 国内外交流
 * </p>
 * <p>
 * Description:
 * </p>
 *
 */
public class ExchangeAction extends BaseAction {
	/**
	 * @Fields serialVersionUID : 序列化ID
	 */
	private static final long serialVersionUID = 1L;

	Logger log = Logger.getLogger(this.getClass());

	/**
	 * 教师访学
	 */
	public TVisitschool visitschool;

	/**
	 * 教师参加国际/国内会议（教师录入）
	 */
	public TAttmeeting attmeeting;

	/**
	 * 教师参加培训（教师录入）
	 */
	public TAtttrain atttrain;

	/**
	 * 学院举办国际/国内会议（学院录入）
	 */
	public THoldmeeting holdmeeting;

	/**
	 * 国外专家来访（学院录入）
	 */
	public TForeignExperts foreignExperts;

	/**
	 * 首页
	 * 
	 * @return
	 */
	public String index() {
		return "index";
	}

	/**
	 * 分页查询
	 */
	public void queryVisitSchool() {
		String teacherIdLong = request.getParameter("teacherId");
		if (teacherIdLong != null) {
			String page = request.getParameter("page"); // 当前页数
			String rows = request.getParameter("rows"); // 每页显示行数
			try {
				// 加载获奖信息
				// List<TPrize> tPrizeList = new ArrayList<TPrize>();
				TVisitschoolExample tVisitschoolExample = new TVisitschoolExample();
				tVisitschoolExample.createCriteria().andTeacheridEqualTo(
						Long.valueOf(teacherIdLong));
				Pager pager = localServiceEXProxy.queryVisitSchoolBypage(
						tVisitschoolExample, Integer.valueOf(rows),
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
	public TVisitschool getVisitSchool() {
		TVisitschool tVisitschool = new TVisitschool();
		tVisitschool.setVisitbegdate(request.getParameter("visitbegdate"));
		tVisitschool.setVisitenddate(request.getParameter("visitenddate"));
		tVisitschool
				.setVisitforproject(request.getParameter("visitforproject"));
		tVisitschool.setVisitlength(request.getParameter("visitlength"));
		tVisitschool.setVisitplace(request.getParameter("visitplace"));
		return tVisitschool;
	}

	public void saveVisitschool() {
		boolean flag = false;
		try {
			String teacherId = request.getParameter("id");
			String teacherName = URLDecoder.decode(
					request.getParameter("name"), "UTF-8");
			// 保存获奖表
			TVisitschool tVisitschool = getVisitSchool();
			tVisitschool.setTeacherid(Long.valueOf(teacherId));
			tVisitschool.setVisitname(teacherName);
			localServiceEXProxy.saveTVisitschool(tVisitschool);
			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		super.reponseWriter(JSON.toJSONString(flag));
	}

	/**
	 * 删除
	 */
	public void deleteVisitschool() {
		boolean flag = false;
		String id = request.getParameter("id");//
		try {
			Long idL = Long.parseLong(id);
			TVisitschoolExample tpexample = new TVisitschoolExample();
			tpexample.createCriteria().andVisitidEqualTo(idL);
			localServiceEXProxy.deleteTVisitschool(tpexample);
			flag = true;
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			super.reponseWriter(JSON.toJSONString(flag));
		}
	}

	/**
	 * 分页查询
	 */
	public void queryAttMeeting() {
		String teacherIdLong = request.getParameter("teacherId");
		if (teacherIdLong != null) {
			String page = request.getParameter("page"); // 当前页数
			String rows = request.getParameter("rows"); // 每页显示行数
			try {
				// 加载获奖信息
				TAttmeetingExample tAttmeetingExample = new TAttmeetingExample();
				tAttmeetingExample.createCriteria().andTeacheridEqualTo(
						Long.valueOf(teacherIdLong));
				Pager pager = localServiceEXProxy.queryAttMeetingBypage(
						tAttmeetingExample, Integer.valueOf(rows),
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
	public TAttmeeting getAttMeeting() {
		TAttmeeting tAttmeeting = new TAttmeeting();
		tAttmeeting.setAttmeetingbegintime(request
				.getParameter("attmeetingbegintime"));
		tAttmeeting.setAttmeetingendtime(request
				.getParameter("attmeetingendtime"));
		tAttmeeting.setAttmeetinghost(request.getParameter("attmeetinghost"));
		tAttmeeting.setAttmeetingname(request.getParameter("attmeetingname"));
		tAttmeeting.setAttmeetingpaper(request.getParameter("attmeetingpaper"));
		tAttmeeting.setAttmeetingplace(request.getParameter("attmeetingplace"));
		tAttmeeting.setAttmeetingreporttype(request
				.getParameter("attmeetingreporttype"));
		tAttmeeting.setAttmeetingtype(request.getParameter("attmeetingtype"));
		return tAttmeeting;
	}

	public void saveAttMeeting() {
		boolean flag = false;
		try {
			String teacherId = request.getParameter("id");
			String teacherName = URLDecoder.decode(
					request.getParameter("name"), "UTF-8");
			// 保存获奖表
			TAttmeeting tAttmeeting = getAttMeeting();
			tAttmeeting.setTeacherid(Long.valueOf(teacherId));
			tAttmeeting.setAttendteachername(teacherName);
			localServiceEXProxy.saveAttMeeting(tAttmeeting);
			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		super.reponseWriter(JSON.toJSONString(flag));
	}

	/**
	 * 删除
	 */
	public void deleteAttMeeting() {
		boolean flag = false;
		String id = request.getParameter("id");//
		try {
			Long idL = Long.parseLong(id);
			TAttmeetingExample tpexample = new TAttmeetingExample();
			tpexample.createCriteria().andAttendidEqualTo(idL);
			localServiceEXProxy.deleteAttMeeting(tpexample);
			flag = true;
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			super.reponseWriter(JSON.toJSONString(flag));
		}
	}

	/**
	 * 分页查询
	 */
	public void queryAttTrain() {
		String teacherIdLong = request.getParameter("teacherId");
		if (teacherIdLong != null) {
			String page = request.getParameter("page"); // 当前页数
			String rows = request.getParameter("rows"); // 每页显示行数
			try {
				// 加载获奖信息
				TAtttrainExample tAtttrainExample = new TAtttrainExample();
				tAtttrainExample.createCriteria().andTeacheridEqualTo(
						Long.valueOf(teacherIdLong));
				Pager pager = localServiceEXProxy.queryAttTrainBypage(
						tAtttrainExample, Integer.valueOf(rows),
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
	public TAtttrain getAttTrain() {
		TAtttrain tAtttrain = new TAtttrain();
		tAtttrain.setAtthost(request.getParameter("atthost"));
		tAtttrain.setAtttrainbegintime(request
				.getParameter("atttrainbegintime"));
		tAtttrain.setAtttrainendtime(request.getParameter("atttrainendtime"));
		tAtttrain.setAtttrainplace(request.getParameter("atttrainplace"));
		tAtttrain.setAtttrainresult(request.getParameter("atttrainresult"));
		tAtttrain.setAtttype(request.getParameter("atttype"));
		tAtttrain.setAttname(request.getParameter("attname"));
		return tAtttrain;
	}

	public void saveAttTrain() {
		boolean flag = false;
		try {
			String teacherId = request.getParameter("id");
			String teacherName = URLDecoder.decode(
					request.getParameter("name"), "UTF-8");
			// 保存获奖表
			TAtttrain tAtttrain = getAttTrain();
			tAtttrain.setTeacherid(Long.valueOf(teacherId));
			tAtttrain.setAttteachername(teacherName);
			localServiceEXProxy.saveAttTrain(tAtttrain);
			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		super.reponseWriter(JSON.toJSONString(flag));
	}

	/**
	 * 删除
	 */
	public void deleteAttTrain() {
		boolean flag = false;
		String id = request.getParameter("id");//
		try {
			Long idL = Long.parseLong(id);
			TAtttrainExample tpexample = new TAtttrainExample();
			tpexample.createCriteria().andAtttrainidEqualTo(idL);
			localServiceEXProxy.deleteAttTrain(tpexample);
			flag = true;
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			super.reponseWriter(JSON.toJSONString(flag));
		}
	}

	public TVisitschool getVisitschool() {
		return visitschool;
	}

	public void setVisitschool(TVisitschool visitschool) {
		this.visitschool = visitschool;
	}

	public TAttmeeting getAttmeeting() {
		return attmeeting;
	}

	public void setAttmeeting(TAttmeeting attmeeting) {
		this.attmeeting = attmeeting;
	}

	public TAtttrain getAtttrain() {
		return atttrain;
	}

	public void setAtttrain(TAtttrain atttrain) {
		this.atttrain = atttrain;
	}

	public THoldmeeting getHoldmeeting() {
		return holdmeeting;
	}

	public void setHoldmeeting(THoldmeeting holdmeeting) {
		this.holdmeeting = holdmeeting;
	}

	public TForeignExperts getForeignExperts() {
		return foreignExperts;
	}

	public void setForeignExperts(TForeignExperts foreignExperts) {
		this.foreignExperts = foreignExperts;
	}

}
