package com.et59.cus.domain.dao.ex;

import java.util.List;

import com.et59.cus.domain.entity.BsAddress;
import com.et59.cus.domain.entity.BsAddressExample;
import com.et59.cus.domain.entity.BsArticle;
import com.et59.cus.domain.entity.BsArticleExample;
import com.et59.cus.domain.entity.BsEmail;
import com.et59.cus.domain.entity.BsEmailExample;
import com.et59.cus.domain.entity.BsLeavemessage;
import com.et59.cus.domain.entity.BsLeavemessageExample;
import com.et59.cus.domain.entity.BsMarking;
import com.et59.cus.domain.entity.BsMarkingExample;
import com.et59.cus.domain.entity.BsMenuExample;
import com.et59.cus.domain.entity.BsOrder;
import com.et59.cus.domain.entity.BsOrderExample;
import com.et59.cus.domain.entity.BsProduct;
import com.et59.cus.domain.entity.BsProductExample;
import com.et59.cus.domain.entity.BsProductcategory;
import com.et59.cus.domain.entity.BsProductcategoryExample;
import com.et59.cus.domain.entity.BsResource;
import com.et59.cus.domain.entity.BsResourceExample;
import com.et59.cus.domain.entity.BsRole;
import com.et59.cus.domain.entity.BsRoleExample;
import com.et59.cus.domain.entity.BsSupplier;
import com.et59.cus.domain.entity.BsSupplierExample;
import com.et59.cus.domain.entity.BsUser;
import com.et59.cus.domain.entity.BsUserExample;
import com.et59.cus.domain.entity.BsUserservice;
import com.et59.cus.domain.entity.BsUserserviceExample;
import com.et59.cus.domain.entity.OpenApi;
import com.et59.cus.domain.entity.OpenApiExample;
import com.et59.cus.domain.entity.OpenApp;
import com.et59.cus.domain.entity.OpenAppExample;
import com.et59.cus.domain.entity.OpenLog;
import com.et59.cus.domain.entity.OpenLogExample;
import com.et59.cus.domain.entity.OpenOauth;
import com.et59.cus.domain.entity.OpenOauthExample;
import com.et59.cus.domain.entity.TAttmeeting;
import com.et59.cus.domain.entity.TAttmeetingExample;
import com.et59.cus.domain.entity.TAtttrain;
import com.et59.cus.domain.entity.TAtttrainExample;
import com.et59.cus.domain.entity.TBookclub;
import com.et59.cus.domain.entity.TBookclubExample;
import com.et59.cus.domain.entity.TDepartmentExample;
import com.et59.cus.domain.entity.TDepartmentWithBLOBs;
import com.et59.cus.domain.entity.TDictionary;
import com.et59.cus.domain.entity.TDictionaryExample;
import com.et59.cus.domain.entity.TDownload;
import com.et59.cus.domain.entity.TDownloadExample;
import com.et59.cus.domain.entity.TExchangeStu;
import com.et59.cus.domain.entity.TExchangeStuExample;
import com.et59.cus.domain.entity.TForeignExperts;
import com.et59.cus.domain.entity.TForeignExpertsExample;
import com.et59.cus.domain.entity.THoldmeeting;
import com.et59.cus.domain.entity.THoldmeetingExample;
import com.et59.cus.domain.entity.THonorandother;
import com.et59.cus.domain.entity.THonorandotherExample;
import com.et59.cus.domain.entity.THonoraward;
import com.et59.cus.domain.entity.THonorawardExample;
import com.et59.cus.domain.entity.TLearnact;
import com.et59.cus.domain.entity.TLearnactExample;
import com.et59.cus.domain.entity.TPaper;
import com.et59.cus.domain.entity.TPaperExample;
import com.et59.cus.domain.entity.TPartjob;
import com.et59.cus.domain.entity.TPartjobExample;
import com.et59.cus.domain.entity.TPrize;
import com.et59.cus.domain.entity.TPrizeExample;
import com.et59.cus.domain.entity.TResearch;
import com.et59.cus.domain.entity.TResearchExample;
import com.et59.cus.domain.entity.TSocialevent;
import com.et59.cus.domain.entity.TSocialeventExample;
import com.et59.cus.domain.entity.TStudentaward;
import com.et59.cus.domain.entity.TStudentawardExample;
import com.et59.cus.domain.entity.TSubject;
import com.et59.cus.domain.entity.TSubjectExample;
import com.et59.cus.domain.entity.TTeacher;
import com.et59.cus.domain.entity.TTeacherExample;
import com.et59.cus.domain.entity.TTeacherWithBLOBs;
import com.et59.cus.domain.entity.TVisitschool;
import com.et59.cus.domain.entity.TVisitschoolExample;
import com.et59.cus.domain.entity.TWork;
import com.et59.cus.domain.entity.TWorkExample;

/**
 * <p>
 * Title: ProductDuctDAOImplEx.java
 * </p>
 * <p>
 * Description:
 * </p>
 *
 */
/**
 * @author Neusoft
 *
 */
public class CommonDAOImplEx extends BaseDaoiBatis implements CommonDAOEx {
	/**
	 * 查询产品信息分页
	 * 
	 * @param example
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<BsProduct> queryProductForListByPage(BsProductExample example,
			int startrecord, int endrecord) {
		List<BsProduct> list = (List<BsProduct>) getSqlMapClientTemplate()
				.queryForList("bs_product.abatorgenerated_selectByExample",
						example, startrecord, endrecord);
		return list;
	}

	/**
	 * 查询订单信息分页
	 * 
	 * @param example
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<BsOrder> queryOrderForListByPage(BsOrderExample example,
			int startrecord, int endrecord) {
		List<BsOrder> list = (List<BsOrder>) getSqlMapClientTemplate()
				.queryForList("bs_order.abatorgenerated_selectByExample",
						example, startrecord, endrecord);
		return list;
	}

	/**
	 * 分页查询用户订购产品服务
	 */
	@SuppressWarnings("unchecked")
	public List<BsUserservice> queryUserServiceForListByPage(
			BsUserserviceExample example, int startrecord, int endrecord) {
		List<BsUserservice> list = (List<BsUserservice>) getSqlMapClientTemplate()
				.queryForList("bs_userservice.abatorgenerated_selectByExample",
						example, startrecord, endrecord);
		return list;
	}

	/**
	 * 分页查询文章
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<BsArticle> queryArticleByTypeForPage(BsArticleExample example,
			int startrecord, int endrecord) throws Exception {
		List<BsArticle> list = (List<BsArticle>) getSqlMapClientTemplate()
				.queryForList(
						"bs_article.ibatorgenerated_selectByExampleWithBLOBs",
						example, startrecord, endrecord);
		return list;
	}

	/**
	 * 分页查询邮件
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<BsEmail> selectEmailByExampleForPage(BsEmailExample example,
			int startrecord, int endrecord) throws Exception {
		List<BsEmail> list = (List<BsEmail>) getSqlMapClientTemplate()
				.queryForList("bs_email.abatorgenerated_selectByExample",
						example, startrecord, endrecord);
		return list;
	}

	/**
	 * 分页查询用户信息
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<BsUser> selectUserByExampleForPage(BsUserExample example,
			int startrecord, int endrecord) throws Exception {
		List<BsUser> list = (List<BsUser>) getSqlMapClientTemplate()
				.queryForList("bs_user.abatorgenerated_selectByExample",
						example, startrecord, endrecord);
		return list;
	}

	/**
	 * 分页查询供应商信息
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<BsSupplier> selectBsSupplierByExampleForPage(
			BsSupplierExample example, int startrecord, int endrecord)
			throws Exception {
		List<BsSupplier> list = (List<BsSupplier>) getSqlMapClientTemplate()
				.queryForList("bs_supplier.abatorgenerated_selectByExample",
						example, startrecord, endrecord);
		return list;
	}

	/**
	 * 分页查询商品分类
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<BsProductcategory> selectBsProductcategoryForPage(
			BsProductcategoryExample example, int startrecord, int endrecord)
			throws Exception {
		List<BsProductcategory> list = (List<BsProductcategory>) getSqlMapClientTemplate()
				.queryForList(
						"bs_productcategory.abatorgenerated_selectByExample",
						example, startrecord, endrecord);
		return list;
	}

	/**
	 * 分页查询市场情况
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<BsMarking> selectBsMarkingForPage(BsMarkingExample example,
			int startrecord, int endrecord) throws Exception {
		List<BsMarking> list = (List<BsMarking>) getSqlMapClientTemplate()
				.queryForList("bs_marking.abatorgenerated_selectByExample",
						example, startrecord, endrecord);
		return list;
	}

	/**
	 * 分页查询资源
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<BsResource> selectBsResourceForPage(BsResourceExample example,
			int startrecord, int endrecord) throws Exception {
		List<BsResource> list = (List<BsResource>) getSqlMapClientTemplate()
				.queryForList("bs_resource.abatorgenerated_selectByExample",
						example, startrecord, endrecord);
		return list;
	}

	/**
	 * 分页查询角色
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<BsRole> selectBsRoleForPage(BsRoleExample example,
			int startrecord, int endrecord) throws Exception {
		List<BsRole> list = (List<BsRole>) getSqlMapClientTemplate()
				.queryForList("bs_role.abatorgenerated_selectByExample",
						example, startrecord, endrecord);
		return list;
	}

	/**
	 * 分页查询app
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<OpenApp> selectOpenAppForPage(OpenAppExample example,
			int startrecord, int endrecord) throws Exception {
		List<OpenApp> list = (List<OpenApp>) getSqlMapClientTemplate()
				.queryForList("open_app.abatorgenerated_selectByExample",
						example, startrecord, endrecord);
		return list;
	}

	/**
	 * 分页查询日志
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<OpenLog> selectOpenLogForPage(OpenLogExample example,
			int startrecord, int endrecord) throws Exception {
		List<OpenLog> list = (List<OpenLog>) getSqlMapClientTemplate()
				.queryForList("open_log.abatorgenerated_selectByExample",
						example, startrecord, endrecord);
		return list;
	}

	/**
	 * 分页查询openapi
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<OpenApi> selectOpenApiForPage(OpenApiExample example,
			int startrecord, int endrecord) throws Exception {
		List<OpenApi> list = (List<OpenApi>) getSqlMapClientTemplate()
				.queryForList(
						"open_api.abatorgenerated_selectByExampleWithBLOBs",
						example, startrecord, endrecord);
		return list;
	}

	/**
	 * 分页查询授权
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<OpenOauth> selectOpenOauthForPage(OpenOauthExample example,
			int startrecord, int endrecord) throws Exception {
		List<OpenOauth> list = (List<OpenOauth>) getSqlMapClientTemplate()
				.queryForList("open_oauth.abatorgenerated_selectByExample",
						example, startrecord, endrecord);
		return list;
	}

	/**
	 * 分页查询留言
	 */
	@Override
	public List<BsLeavemessage> selectleavemessageForPage(
			BsLeavemessageExample example, int startrecord, int endrecord)
			throws Exception {
		@SuppressWarnings("unchecked")
		List<BsLeavemessage> list = (List<BsLeavemessage>) getSqlMapClientTemplate()
				.queryForList(
						"bs_leavemessage.abatorgenerated_selectByExample",
						example, startrecord, endrecord);
		return list;
	}

	/**
	 * 分页查询发货地址
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<BsAddress> selectBsAddressForPage(BsAddressExample example,
			int startrecord, int endrecord) throws Exception {
		List<BsAddress> list = (List<BsAddress>) getSqlMapClientTemplate()
				.queryForList("bs_address.abatorgenerated_selectByExample",
						example, startrecord, endrecord);
		return list;
	}

	/**
	 * 分页查询资料下载
	 */
	@Override
	public List<TDownload> selectTDownloadForPage(TDownloadExample example,
			int startrecord, int endrecord) throws Exception {
		List<TDownload> list = (List<TDownload>) getSqlMapClientTemplate()
				.queryForList("t_download.ibatorgenerated_selectByExample",
						example, startrecord, endrecord);
		return list;
	}

	/**
	 * 分页查询课程列表
	 */
	@Override
	public List<TSubject> selectTSubjectForPage(TSubjectExample example,
			int startrecord, int endrecord) throws Exception {
		List<TSubject> list = (List<TSubject>) getSqlMapClientTemplate()
				.queryForList("t_subject.ibatorgenerated_selectByExample",
						example, startrecord, endrecord);
		return list;
	}

	/**
	 * 分页查询Menu
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<BsResource> selectBsMenuForPage(BsMenuExample example,
			int startrecord, int endrecord) throws Exception {
		// String isAdmin = (String) map.get("isAdmin");
		// String sql = null;
		List<BsResource> list = null;
		// if ("yes".equals(isAdmin)) {
		// list = (List<BsResource>) getSqlMapClientTemplate().queryForList(
		// "bs_menu.selectMenuByUserId", map, startrecord, endrecord);
		// } else {
		list = (List<BsResource>) getSqlMapClientTemplate().queryForList(
				"bs_menu.abatorgenerated_selectByExample", example,
				startrecord, endrecord);
		// }

		return list;
	}

	/**
	 * 分页查询数据字典
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<TDictionary> selectDictionaryForPage(
			TDictionaryExample example, int startrecord, int endrecord)
			throws Exception {
		List<TDictionary> list = (List<TDictionary>) getSqlMapClientTemplate()
				.queryForList("t_dictionary.ibatorgenerated_selectByExample",
						example, startrecord, endrecord);
		return list;
	}

	/**
	 * 分页查询师资队伍
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<TTeacherWithBLOBs> selectTeacherForPage(
			TTeacherExample example, int startrecord, int endrecord)
			throws Exception {
		List<TTeacherWithBLOBs> list = (List<TTeacherWithBLOBs>) getSqlMapClientTemplate()
				.queryForList(
						"t_teacher.ibatorgenerated_selectByExampleWithBLOBs",
						example, startrecord, endrecord);
		return list;
	}

	/**
	 * 分页查询师资队伍
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<TTeacher> selectTeacherForPageNOBLOB(TTeacherExample example,
			int startrecord, int endrecord) throws Exception {
		List<TTeacher> list = (List<TTeacher>) getSqlMapClientTemplate()
				.queryForList("t_teacher.ibatorgenerated_selectByExample",
						example, startrecord, endrecord);
		return list;
	}

	/**
	 * 分页查询专业
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<TDepartmentWithBLOBs> selectTDepartmentForPage(
			TDepartmentExample example, int startrecord, int endrecord)
			throws Exception {
		List<TDepartmentWithBLOBs> list = (List<TDepartmentWithBLOBs>) getSqlMapClientTemplate()
				.queryForList(
						"t_department.ibatorgenerated_selectByExampleWithBLOBs",
						example, startrecord, endrecord);
		return list;
	}

	/**
	 * 分页查询立项
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<TResearch> selectTResearchForPage(TResearchExample example,
			int startrecord, int endrecord) throws Exception {
		List<TResearch> list = (List<TResearch>) getSqlMapClientTemplate()
				.queryForList("t_research.ibatorgenerated_selectByExample",
						example, startrecord, endrecord);
		return list;
	}

	/**
	 * 分页查询论文
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<TPaper> selectTPaperForPage(TPaperExample example,
			int startrecord, int endrecord) throws Exception {
		List<TPaper> list = (List<TPaper>) getSqlMapClientTemplate()
				.queryForList("t_paper.ibatorgenerated_selectByExample",
						example, startrecord, endrecord);
		return list;
	}

	/**
	 * 分页查询论文
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<TWork> selectWorkForPage(TWorkExample example, int startrecord,
			int endrecord) throws Exception {
		List<TWork> list = (List<TWork>) getSqlMapClientTemplate()
				.queryForList("t_work.ibatorgenerated_selectByExample",
						example, startrecord, endrecord);
		return list;
	}

	/**
	 * 分页查询获奖
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<TPrize> selectPrizeForPage(TPrizeExample example,
			int startrecord, int endrecord) throws Exception {
		List<TPrize> list = (List<TPrize>) getSqlMapClientTemplate()
				.queryForList("t_prize.ibatorgenerated_selectByExample",
						example, startrecord, endrecord);
		return list;
	}

	/**
	 * 分页查询获奖
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<TPartjob> selectPartJobForPage(TPartjobExample example,
			int startrecord, int endrecord) throws Exception {
		List<TPartjob> list = (List<TPartjob>) getSqlMapClientTemplate()
				.queryForList("t_partjob.ibatorgenerated_selectByExample",
						example, startrecord, endrecord);
		return list;
	}

	/**
	 * 分页查询获奖
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<THonorandother> selectHonorForPage(
			THonorandotherExample example, int startrecord, int endrecord)
			throws Exception {
		List<THonorandother> list = (List<THonorandother>) getSqlMapClientTemplate()
				.queryForList(
						"t_honorandother.ibatorgenerated_selectByExample",
						example, startrecord, endrecord);
		return list;
	}

	/**
	 * 分页查询
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<TVisitschool> selectVisitSchoolForPage(
			TVisitschoolExample example, int startrecord, int endrecord)
			throws Exception {
		List<TVisitschool> list = (List<TVisitschool>) getSqlMapClientTemplate()
				.queryForList("t_visitschool.ibatorgenerated_selectByExample",
						example, startrecord, endrecord);
		return list;
	}

	/**
	 * 分页查询
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<TAttmeeting> selectAttMeetingForPage(
			TAttmeetingExample example, int startrecord, int endrecord)
			throws Exception {
		List<TAttmeeting> list = (List<TAttmeeting>) getSqlMapClientTemplate()
				.queryForList("t_attmeeting.ibatorgenerated_selectByExample",
						example, startrecord, endrecord);
		return list;
	}

	/**
	 * 分页查询
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<TAtttrain> selectAtttrainForPage(TAtttrainExample example,
			int startrecord, int endrecord) throws Exception {
		List<TAtttrain> list = (List<TAtttrain>) getSqlMapClientTemplate()
				.queryForList("t_atttrain.ibatorgenerated_selectByExample",
						example, startrecord, endrecord);
		return list;
	}

	/**
	 * 分页查询
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<THoldmeeting> selectHoldMeetingForPage(
			THoldmeetingExample example, int startrecord, int endrecord)
			throws Exception {
		List<THoldmeeting> list = (List<THoldmeeting>) getSqlMapClientTemplate()
				.queryForList("t_holdmeeting.ibatorgenerated_selectByExample",
						example, startrecord, endrecord);
		return list;
	}

	/**
	 * 分页查询
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<TForeignExperts> selectForeignForPage(
			TForeignExpertsExample example, int startrecord, int endrecord)
			throws Exception {
		List<TForeignExperts> list = (List<TForeignExperts>) getSqlMapClientTemplate()
				.queryForList(
						"t_foreign_experts.ibatorgenerated_selectByExample",
						example, startrecord, endrecord);
		return list;
	}

	/**
	 * 分页查询
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<TBookclub> selectbookclubForPage(TBookclubExample example,
			int startrecord, int endrecord) throws Exception {
		List<TBookclub> list = (List<TBookclub>) getSqlMapClientTemplate()
				.queryForList("t_bookclub.ibatorgenerated_selectByExample",
						example, startrecord, endrecord);
		return list;
	}

	/**
	 * 分页查询
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<THonoraward> selecthonorawardForPage(
			THonorawardExample example, int startrecord, int endrecord)
			throws Exception {
		List<THonoraward> list = (List<THonoraward>) getSqlMapClientTemplate()
				.queryForList("t_honoraward.ibatorgenerated_selectByExample",
						example, startrecord, endrecord);
		return list;
	}

	/**
	 * 分页查询
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<TLearnact> selectlearnactForPage(TLearnactExample example,
			int startrecord, int endrecord) throws Exception {
		List<TLearnact> list = (List<TLearnact>) getSqlMapClientTemplate()
				.queryForList("t_learnact.ibatorgenerated_selectByExample",
						example, startrecord, endrecord);
		return list;
	}
	
	/**
	 * 分页查询
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<TSocialevent> selectsocialeventForPage(TSocialeventExample example,
			int startrecord, int endrecord) throws Exception {
		List<TSocialevent> list = (List<TSocialevent>) getSqlMapClientTemplate()
				.queryForList("t_socialevent.ibatorgenerated_selectByExample",
						example, startrecord, endrecord);
		return list;
	}
	
	/**
	 * 分页查询
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<TStudentaward> selectstudentawardForPage(TStudentawardExample example,
			int startrecord, int endrecord) throws Exception {
		List<TStudentaward> list = (List<TStudentaward>) getSqlMapClientTemplate()
				.queryForList("t_studentaward.ibatorgenerated_selectByExample",
						example, startrecord, endrecord);
		return list;
	}
	/**
	 * 分页查询
	 */
	@SuppressWarnings("unchecked")
	@Override
	  public List<TExchangeStu> selectStudentExchangeForPage(TExchangeStuExample example, int startrecord, int endrecord)
			    throws Exception
			  {
			    List<TExchangeStu> list = getSqlMapClientTemplate()
			      .queryForList("t_exchange_stu.ibatorgenerated_selectByExample", 
			      example, startrecord, endrecord);
			    return list;
			  }
}
