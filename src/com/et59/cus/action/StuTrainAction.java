package com.et59.cus.action;

import java.io.IOException;

import org.apache.log4j.Logger;

import com.alibaba.fastjson.JSON;
import com.et59.cus.domain.entity.TBookclub;
import com.et59.cus.domain.entity.TBookclubExample;
import com.et59.cus.domain.entity.THonoraward;
import com.et59.cus.domain.entity.THonorawardExample;
import com.et59.cus.domain.entity.TLearnact;
import com.et59.cus.domain.entity.TLearnactExample;
import com.et59.cus.domain.entity.TSocialevent;
import com.et59.cus.domain.entity.TStudentaward;
import com.et59.cus.domain.entity.ex.Pager;

/**
 * <p>
 * Title: 学生培养
 * </p>
 * <p>
 * Description:
 * </p>
 *
 */
public class StuTrainAction extends BaseAction {
	/**
	 * @Fields serialVersionUID : 序列化ID
	 */
	private static final long serialVersionUID = 1L;

	Logger log = Logger.getLogger(this.getClass());

	/**
	 * 读书会
	 */
	public TBookclub bookclub;

	/**
	 * 荣誉获奖
	 */
	public THonoraward honoraward;

	/**
	 * 学术活动
	 */
	public TLearnact learnact;

	/**
	 * 社会事件
	 */
	public TSocialevent socialevent;

	/**
	 * 学生获奖
	 */
	public TStudentaward studentaward;

	/**
	 * 首页
	 * 
	 * @return
	 */
	public String bookclubindex() {
		return "bookclubindex";
	}

	/**
	 * 首页
	 * 
	 * @return
	 */
	public String honorawardindex() {
		return "honorawardindex";
	}

	/**
	 * 首页
	 * 
	 * @return
	 */
	public String learnactindex() {
		return "learnactindex";
	}

	/**
	 * 首页
	 * 
	 * @return
	 */
	public String socialeventindex() {
		return "socialeventindex";
	}

	/**
	 * 首页
	 * 
	 * @return
	 */
	public String studentawardindex() {
		return "studentawardindex";
	}

	/**
	 * 分页查询
	 */
	public void querybookclub() {
		String page = request.getParameter("page"); // 当前页数
		String rows = request.getParameter("rows"); // 每页显示行数
		try {
			// 加载获奖信息
			TBookclubExample tBookclubExample = new TBookclubExample();
			Pager pager = localServiceEXProxy.querybookclub(tBookclubExample,
					Integer.valueOf(rows), Integer.valueOf(page));
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
	public TBookclub getbookclub() {
		TBookclub tBookclub = new TBookclub();
		tBookclub.setBookclubname(request.getParameter("bookclubname"));
		tBookclub.setComments(request.getParameter("comments"));
		tBookclub.setConvener(request.getParameter("convener"));
		tBookclub.setMaincomment(request.getParameter("maincomment"));
		tBookclub.setParticipants(request.getParameter("participants"));
		tBookclub.setPlace(request.getParameter("place"));
		tBookclub.setRemark(request.getParameter("remark"));
		tBookclub.setSpeaker(request.getParameter("speaker"));
		tBookclub.setSubjects(request.getParameter("subjects"));
		tBookclub.setTime(request.getParameter("time"));
		return tBookclub;
	}

	public void savebookclub() {
		boolean flag = false;
		try {

			// 保存获奖表
			TBookclub tBookclub = getbookclub();
			localServiceEXProxy.savebookclub(tBookclub);
			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		super.reponseWriter(JSON.toJSONString(flag));
	}

	public void updatebookclub() {
		boolean flag = false;
		try {
			String bookclubid = request.getParameter("id");
			// 保存获奖表
			TBookclub tBookclub = getbookclub();
			tBookclub.setBookclubid(Long.valueOf(bookclubid));
			localServiceEXProxy.updatebookclub(tBookclub);
			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		super.reponseWriter(JSON.toJSONString(flag));
	}

	/**
	 * 删除
	 */
	public void deletebookclub() {
		boolean flag = false;
		String id = request.getParameter("id");//
		try {
			Long idL = Long.parseLong(id);
			TBookclubExample tpexample = new TBookclubExample();
			tpexample.createCriteria().andBookclubidEqualTo(idL);
			localServiceEXProxy.deletebookclub(tpexample);
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
	public void queryhonoraward() {
		String page = request.getParameter("page"); // 当前页数
		String rows = request.getParameter("rows"); // 每页显示行数
		try {
			// 加载获奖信息
			THonorawardExample tHonorawardExample = new THonorawardExample();
			Pager pager = localServiceEXProxy.queryhonoraward(
					tHonorawardExample, Integer.valueOf(rows),
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
	public THonoraward gethonoraward() {
		THonoraward tHonoraward = new THonoraward();
		tHonoraward.setGrantorg(request.getParameter("grantorg"));
		tHonoraward.setGranttime(request.getParameter("granttime"));
		tHonoraward.setHonorname(request.getParameter("honorname"));
		tHonoraward.setHonortype(request.getParameter("honortype"));
		tHonoraward.setRemark(request.getParameter("remark"));
		tHonoraward.setTeachernames(request.getParameter("teachernames"));
		tHonoraward.setTeammember(request.getParameter("teammember"));
		return tHonoraward;
	}

	public void savehonoraward() {
		boolean flag = false;
		try {

			// 保存获奖表
			THonoraward tHonoraward = gethonoraward();
			localServiceEXProxy.savehonoraward(tHonoraward);
			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		super.reponseWriter(JSON.toJSONString(flag));
	}

	public void updatehonoraward() {
		boolean flag = false;
		try {
			String honorawardid = request.getParameter("id");
			// 保存获奖表
			THonoraward tHonoraward = gethonoraward();
			tHonoraward.setHonorawardid(Long.valueOf(honorawardid));
			localServiceEXProxy.updatehonoraward(tHonoraward);
			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		super.reponseWriter(JSON.toJSONString(flag));
	}

	/**
	 * 删除
	 */
	public void deletehonoraward() {
		boolean flag = false;
		String id = request.getParameter("id");//
		try {
			Long idL = Long.parseLong(id);
			THonorawardExample tpexample = new THonorawardExample();
			tpexample.createCriteria().andHonorawardidEqualTo(idL);
			localServiceEXProxy.deletehonoraward(tpexample);
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
	public void querylearnact() {
		String page = request.getParameter("page"); // 当前页数
		String rows = request.getParameter("rows"); // 每页显示行数
		try {
			// 加载获奖信息
			TLearnactExample tLearnactExample = new TLearnactExample();
			Pager pager = localServiceEXProxy.querylearnact(tLearnactExample,
					Integer.valueOf(rows), Integer.valueOf(page));
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
	public TLearnact getlearnact() {
		TLearnact tLearnact = new TLearnact();
		tLearnact.setActname(request.getParameter("actname"));
		tLearnact.setActplace(request.getParameter("actplace"));
		tLearnact.setActtime(request.getParameter("acttime"));
		tLearnact.setExpertnames(request.getParameter("expertnames"));
		tLearnact.setRemark(request.getParameter("remark"));
		tLearnact.setStudentnames(request.getParameter("studentnames"));
		tLearnact.setSubjects(request.getParameter("subjects"));
		tLearnact.setTeachernames(request.getParameter("teachernames"));
		return tLearnact;
	}

	public void savelearnact() {
		boolean flag = false;
		try {
			// 保存获奖表
			TLearnact tLearnact = getlearnact();
			localServiceEXProxy.savelearnact(tLearnact);
			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		super.reponseWriter(JSON.toJSONString(flag));
	}

	public void updatelearnact() {
		boolean flag = false;
		try {
			String learnactid = request.getParameter("id");
			// 保存获奖表
			TLearnact tLearnact = getlearnact();
			tLearnact.setActid(Long.valueOf(learnactid));
			localServiceEXProxy.updatelearnact(tLearnact);
			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		super.reponseWriter(JSON.toJSONString(flag));
	}

	/**
	 * 删除
	 */
	public void deletelearnact() {
		boolean flag = false;
		String id = request.getParameter("id");//
		try {
			Long idL = Long.parseLong(id);
			TLearnactExample tpexample = new TLearnactExample();
			tpexample.createCriteria().andActidEqualTo(idL);
			localServiceEXProxy.deletelearnact(tpexample);
			flag = true;
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			super.reponseWriter(JSON.toJSONString(flag));
		}
	}

	public TBookclub getBookclub() {
		return bookclub;
	}

	public void setBookclub(TBookclub bookclub) {
		this.bookclub = bookclub;
	}

	public THonoraward getHonoraward() {
		return honoraward;
	}

	public void setHonoraward(THonoraward honoraward) {
		this.honoraward = honoraward;
	}

	public TLearnact getLearnact() {
		return learnact;
	}

	public void setLearnact(TLearnact learnact) {
		this.learnact = learnact;
	}

	public TSocialevent getSocialevent() {
		return socialevent;
	}

	public void setSocialevent(TSocialevent socialevent) {
		this.socialevent = socialevent;
	}

	public TStudentaward getStudentaward() {
		return studentaward;
	}

	public void setStudentaward(TStudentaward studentaward) {
		this.studentaward = studentaward;
	}

}
