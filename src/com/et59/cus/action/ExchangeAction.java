package com.et59.cus.action;

import java.io.IOException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

import com.alibaba.fastjson.JSON;
import com.et59.cus.domain.entity.BsArticle;
import com.et59.cus.domain.entity.TAttmeeting;
import com.et59.cus.domain.entity.TAttmeetingExample;
import com.et59.cus.domain.entity.TAtttrain;
import com.et59.cus.domain.entity.TAtttrainExample;
import com.et59.cus.domain.entity.TExchangeStu;
import com.et59.cus.domain.entity.TExchangeStuExample;
import com.et59.cus.domain.entity.TForeignExperts;
import com.et59.cus.domain.entity.TForeignExpertsExample;
import com.et59.cus.domain.entity.THoldmeeting;
import com.et59.cus.domain.entity.THoldmeetingExample;
import com.et59.cus.domain.entity.THonoraward;
import com.et59.cus.domain.entity.THonorawardExample;
import com.et59.cus.domain.entity.TVisitschool;
import com.et59.cus.domain.entity.TVisitschoolExample;
import com.et59.cus.domain.entity.ex.BsArticleQuery;
import com.et59.cus.domain.entity.ex.Pager;
import com.et59.cus.tools.ComonUtil;
import com.et59.cus.tools.Constant;

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
	
	public List<TVisitschool> visitlist;
	
	public List<THoldmeeting> holdmeetingList;
	public List<TAttmeeting> attMeetingList;
	public List<TAtttrain> atttrainList;
	public List<TExchangeStu> excStuList;
	public List<TForeignExperts> foreignList;
	

	public List<TForeignExperts> getForeignList() {
		return foreignList;
	}

	public void setForeignList(List<TForeignExperts> foreignList) {
		this.foreignList = foreignList;
	}

	public List<TExchangeStu> getExcStuList() {
		return excStuList;
	}

	public void setExcStuList(List<TExchangeStu> excStuList) {
		this.excStuList = excStuList;
	}

	public List<TAtttrain> getAtttrainList() {
		return atttrainList;
	}

	public void setAtttrainList(List<TAtttrain> atttrainList) {
		this.atttrainList = atttrainList;
	}

	public List<TAttmeeting> getAttMeetingList() {
		return attMeetingList;
	}

	public void setAttMeetingList(List<TAttmeeting> attMeetingList) {
		this.attMeetingList = attMeetingList;
	}

	public List<THoldmeeting> getHoldmeetingList() {
		return holdmeetingList;
	}

	public void setHoldmeetingList(List<THoldmeeting> holdmeetingList) {
		this.holdmeetingList = holdmeetingList;
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
	 * 首页
	 * 
	 * @return
	 */
	public String index2() {
		return "index2";
	}
	
	/**
	 * 首页
	 * 
	 * @return
	 */
	public String foreign() {
		return "foreign";
	}
	
	/**
	 * 首页
	 * 
	 * @return
	 */
	public String firstPic() {
		return "firstPic";
	}
	public String stuindex() {
		return "stuindex";
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
	
	
	/**
	 * 分页查询
	 */
	public void queryHoldMeeting() {
			String page = request.getParameter("page"); // 当前页数
			String rows = request.getParameter("rows"); // 每页显示行数
			try {
				// 加载获奖信息
				THoldmeetingExample tHoldmeetingExample = new THoldmeetingExample();
				Pager pager = localServiceEXProxy.queryHoldMeetingBypage(
						tHoldmeetingExample, Integer.valueOf(rows),
						Integer.valueOf(page));
				super.reponseWriter(JSON.toJSONString(pager));
			} catch (IOException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
	}

	/**
	 * 得到教学成果奖信息
	 * 
	 * @return
	 */
	public THoldmeeting getHoldMeeting() {
		THoldmeeting tHoldmeeting = new THoldmeeting();
		tHoldmeeting.setMeetingbegintime(request
				.getParameter("meetingbegintime"));
		tHoldmeeting.setMeetingendtime(request
				.getParameter("meetingendtime"));
		tHoldmeeting.setMeetingpeoplenum(request.getParameter("meetingpeoplenum"));
		tHoldmeeting.setMeetingname(request.getParameter("meetingname"));
		tHoldmeeting.setMeetingresult(request.getParameter("meetingresult"));
		tHoldmeeting.setMeetingplace(request.getParameter("meetingplace"));
		tHoldmeeting.setMeetingtype(request.getParameter("meetingtype"));
		return tHoldmeeting;
	}

	public void saveHoldMeeting() {
		boolean flag = false;
		try {
			
			// 保存获奖表
			THoldmeeting tHoldmeeting = getHoldMeeting();
			localServiceEXProxy.saveHoldMeeting(tHoldmeeting);
			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		super.reponseWriter(JSON.toJSONString(flag));
	}

	public void updateHoldMeeting() {
		boolean flag = false;
		try {
			String holdId = request.getParameter("id");
			// 保存获奖表
			THoldmeeting tHoldmeeting = getHoldMeeting();
			tHoldmeeting.setHoldid(Long.valueOf(holdId));
			localServiceEXProxy.updateHoldMeeting(tHoldmeeting);
			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		super.reponseWriter(JSON.toJSONString(flag));
	}
	
	/**
	 * 删除
	 */
	public void deleteHoldMeeting() {
		boolean flag = false;
		String id = request.getParameter("id");//
		try {
			Long idL = Long.parseLong(id);
			THoldmeetingExample tpexample = new THoldmeetingExample();
			tpexample.createCriteria().andHoldidEqualTo(idL);
			localServiceEXProxy.deleteHoldMeeting(tpexample);
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
	public void queryForeign() {
			String page = request.getParameter("page"); // 当前页数
			String rows = request.getParameter("rows"); // 每页显示行数
			try {
				// 加载获奖信息
				TForeignExpertsExample tForeignExpertsExample = new TForeignExpertsExample();
				Pager pager = localServiceEXProxy.queryForeignBypage(
						tForeignExpertsExample, Integer.valueOf(rows),
						Integer.valueOf(page));
				super.reponseWriter(JSON.toJSONString(pager));
			} catch (IOException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
	}

	/**
	 * 得到教学成果奖信息
	 * 
	 * @return
	 */
	public TForeignExperts getForeign() {
		TForeignExperts tForeignExperts = new TForeignExperts();
		tForeignExperts.setExpertname(request
				.getParameter("expertname"));
		tForeignExperts.setExpertnationality(request
				.getParameter("expertnationality"));
		tForeignExperts.setFprojectmanager(request
				.getParameter("fprojectmanager"));
		tForeignExperts.setFprojecttype(request
				.getParameter("fprojecttype"));
		tForeignExperts.setOther(request
				.getParameter("other"));
		tForeignExperts.setVisitactivity(request
				.getParameter("visitactivity"));
		tForeignExperts.setVisitgoal(request
				.getParameter("visitgoal"));
		tForeignExperts.setVisittime(request
				.getParameter("visittime"));
		tForeignExperts.setWorkunit(request
				.getParameter("workunit"));
		return tForeignExperts;
	}

	public void saveForeign() {
		boolean flag = false;
		try {
			
			// 保存获奖表
			TForeignExperts tForeignExperts = getForeign();
			localServiceEXProxy.saveForeign(tForeignExperts);
			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		super.reponseWriter(JSON.toJSONString(flag));
	}

	public void updateForeign() {
		boolean flag = false;
		try {
			String foreignid = request.getParameter("id");
			// 保存获奖表
			TForeignExperts tForeignExperts = getForeign();
			tForeignExperts.setForeignid(Long.valueOf(foreignid));
			localServiceEXProxy.updateForeign(tForeignExperts);
			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		super.reponseWriter(JSON.toJSONString(flag));
	}
	
	/**
	 * 删除
	 */
	public void deleteForeign() {
		boolean flag = false;
		String id = request.getParameter("id");//
		try {
			Long idL = Long.parseLong(id);
			TForeignExpertsExample tpexample = new TForeignExpertsExample();
			tpexample.createCriteria().andForeignidEqualTo(idL);
			localServiceEXProxy.deleteForeign(tpexample);
			flag = true;
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			super.reponseWriter(JSON.toJSONString(flag));
		}
	}
	
	public void UpdatePic() {
		boolean flag = false;
		try {
			
			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		super.reponseWriter(JSON.toJSONString(flag));
	}
	
	
	/**
	 * 分页查询
	 */
	public void queryStudentExchange() {
			String page = request.getParameter("page"); // 当前页数
			String rows = request.getParameter("rows"); // 每页显示行数
			try {
				TExchangeStuExample tExchangeStuExample = new TExchangeStuExample();
//				tExchangeStuExample.createCriteria().andTeacheridEqualTo(
//						Long.valueOf(teacherIdLong));
				Pager pager = localServiceEXProxy.queryStudentExchangeBypage(
						tExchangeStuExample, Integer.valueOf(rows),
						Integer.valueOf(page));
				super.reponseWriter(JSON.toJSONString(pager));
			} catch (IOException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
	}

	/**
	 * 得到教学成果奖信息
	 * 
	 * @return
	 */
	public TExchangeStu getstudentExchange() {
		TExchangeStu tExchangeStu = new TExchangeStu();
		tExchangeStu.setExchangebegintime(request.getParameter("exchangebegintime"));
		tExchangeStu.setExchangeendtime(request.getParameter("exchangeendtime"));
		tExchangeStu.setExchangeplace(request.getParameter("exchangeplace"));
		tExchangeStu.setProjectname(request.getParameter("projectname"));
		tExchangeStu.setStuname(request.getParameter("stuname"));
		tExchangeStu.setStutype(request.getParameter("stutype"));
		tExchangeStu.setTimelength(request.getParameter("timelength"));
		return tExchangeStu;
	}

	public void savestudentExchange() {
		boolean flag = false;
		try {
			// 保存获奖表
			TExchangeStu tExchangeStu = getstudentExchange();
			localServiceEXProxy.saveStudentExchange(tExchangeStu);
			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		super.reponseWriter(JSON.toJSONString(flag));
	}
	
	/**
	 * 编辑
	 */
	public void updatestudentExchange() {
		boolean flag = false;
		String id = request.getParameter("id");
		TExchangeStu tExchangeStu = getstudentExchange();
		tExchangeStu.setExchangestuid(Long.valueOf(id));
		try {
			localServiceEXProxy.updateStudentExchange(tExchangeStu);
			flag = true;
			super.reponseWriter(JSON.toJSONString(flag));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 删除
	 */
	public void deletestudentExchange() {
		boolean flag = false;
		String id = request.getParameter("id");//
		try {
			Long idL = Long.parseLong(id);
			TExchangeStuExample tpexample = new TExchangeStuExample();
			tpexample.createCriteria().andExchangestuidEqualTo(idL);
			localServiceEXProxy.deleteStudentExchange(tpexample);
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
	 * 查询国际交流--教师访学
	 * 
	 * @return
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public String doQueryVisit() {
		try {
			TVisitschoolExample tVisitschoolExample = new TVisitschoolExample();
//			tVisitschoolExample.createCriteria().andTeacheridEqualTo(
//					Long.valueOf(teacherIdLong));
			Pager pager = localServiceEXProxy.queryVisitSchoolBypage(
					tVisitschoolExample, Integer.valueOf("1000"),
					Integer.valueOf("1"));
			visitlist = (List<TVisitschool>)pager.getRows();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "exchange_visitresult";
	}

	/**
	 * 查询国际交流--举办会议
	 * 
	 * @return
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public String doQueryHoldMeeting() {
		try {
			// 加载获奖信息
			THoldmeetingExample tHoldmeetingExample = new THoldmeetingExample();
			Pager pager = localServiceEXProxy.queryHoldMeetingBypage(
					tHoldmeetingExample, Integer.valueOf("1000"),
					Integer.valueOf("1"));
			holdmeetingList = (List<THoldmeeting>)pager.getRows();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "exchange_holdMeeting";
	}
	
	/**
	 * 查询国际交流--参加会议
	 * 
	 * @return
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public String doQueryAttMeeting() {
		try {
			// 加载获奖信息
			TAttmeetingExample tAttmeetingExample = new TAttmeetingExample();
//			tAttmeetingExample.createCriteria().andTeacheridEqualTo(
//					Long.valueOf(teacherIdLong));
			Pager pager = localServiceEXProxy.queryAttMeetingBypage(
					tAttmeetingExample, Integer.valueOf("1000"),
					Integer.valueOf("1"));
			attMeetingList = (List<TAttmeeting>)pager.getRows();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "exchange_attMeeting";
	}
	
	/**
	 * 查询国际交流--国外专家来访
	 * 
	 * @return
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public String doQueryForeign() {
		try {
			// 加载获奖信息
			TForeignExpertsExample tForeignExpertsExample = new TForeignExpertsExample();
//			tAttmeetingExample.createCriteria().andTeacheridEqualTo(
//					Long.valueOf(teacherIdLong));
			Pager pager = localServiceEXProxy.queryForeignBypage(
					tForeignExpertsExample, Integer.valueOf("1000"),
					Integer.valueOf("1"));
			foreignList = (List<TForeignExperts>)pager.getRows();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "exchange_foreign";
	}
	
	/**
	 * 查询国际交流--国外专家来访
	 * 
	 * @return
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public String doQueryAttTrain() {
		try {
			// 加载获奖信息
			TAtttrainExample tAtttrainExample = new TAtttrainExample();
//			tAtttrainExample.createCriteria().andTeacheridEqualTo(
//					Long.valueOf(teacherIdLong));
			Pager pager = localServiceEXProxy.queryAttTrainBypage(
					tAtttrainExample, Integer.valueOf("1000"),
					Integer.valueOf("1"));
			atttrainList = (List<TAtttrain>)pager.getRows();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "exchange_attTrain";
	}
	
	/**
	 * 查询国际交流--国外专家来访
	 * 
	 * @return
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public String doQueryExcStu() {
		try {
			// 加载获奖信息
			TExchangeStuExample tExchangeStuExample = new TExchangeStuExample();
//			tAtttrainExample.createCriteria().andTeacheridEqualTo(
//					Long.valueOf(teacherIdLong));
			Pager pager = localServiceEXProxy.queryStudentExchangeBypage(
					tExchangeStuExample, Integer.valueOf("1000"),
					Integer.valueOf("1"));
			excStuList = (List<TExchangeStu>)pager.getRows();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "exchange_excStu";
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

	public List<TVisitschool> getVisitlist() {
		return visitlist;
	}

	public void setVisitlist(List<TVisitschool> visitlist) {
		this.visitlist = visitlist;
	}
	
	

}
