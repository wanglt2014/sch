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
 * Title: ProductDAOEx.java
 * </p>
 * <p>
 * Description: 物理分页
 * </p>
 *
 */
public interface CommonDAOEx {
	public List<BsProduct> queryProductForListByPage(BsProductExample example,
			int startrecord, int endrecord) throws Exception;

	public List<BsOrder> queryOrderForListByPage(BsOrderExample example,
			int startrecord, int endrecord) throws Exception;

	public List<BsUserservice> queryUserServiceForListByPage(
			BsUserserviceExample example, int startrecord, int endrecord)
			throws Exception;

	public List<BsArticle> queryArticleByTypeForPage(BsArticleExample example,
			int startrecord, int endrecord) throws Exception;

	public List<BsEmail> selectEmailByExampleForPage(BsEmailExample example,
			int startrecord, int endrecord) throws Exception;

	public List<BsUser> selectUserByExampleForPage(BsUserExample example,
			int startrecord, int endrecord) throws Exception;

	public List<BsSupplier> selectBsSupplierByExampleForPage(
			BsSupplierExample example, int startrecord, int endrecord)
			throws Exception;

	public List<BsProductcategory> selectBsProductcategoryForPage(
			BsProductcategoryExample example, int startrecord, int endrecord)
			throws Exception;

	public List<BsMarking> selectBsMarkingForPage(BsMarkingExample example,
			int startrecord, int endrecord) throws Exception;

	public List<BsResource> selectBsResourceForPage(BsResourceExample example,
			int startrecord, int endrecord) throws Exception;

	public List<BsRole> selectBsRoleForPage(BsRoleExample example,
			int startrecord, int endrecord) throws Exception;

	public List<OpenApp> selectOpenAppForPage(OpenAppExample example,
			int startrecord, int endrecord) throws Exception;

	public List<OpenLog> selectOpenLogForPage(OpenLogExample example,
			int startrecord, int endrecord) throws Exception;

	public List<OpenApi> selectOpenApiForPage(OpenApiExample example,
			int startrecord, int endrecord) throws Exception;

	public List<OpenOauth> selectOpenOauthForPage(OpenOauthExample example,
			int startrecord, int endrecord) throws Exception;

	public List<BsLeavemessage> selectleavemessageForPage(
			BsLeavemessageExample example, int startrecord, int endrecord)
			throws Exception;

	public List<BsAddress> selectBsAddressForPage(BsAddressExample example,
			int startrecord, int endrecord) throws Exception;

	public List<TDownload> selectTDownloadForPage(TDownloadExample example,
			int startrecord, int endrecord) throws Exception;

	/**
	 * 分页查询课程列表
	 */
	public List<TSubject> selectTSubjectForPage(TSubjectExample example,
			int startrecord, int endrecord) throws Exception;

	/**
	 * 分页查询Menu列表
	 */
	public List<BsResource> selectBsMenuForPage(BsMenuExample example,
			int startrecord, int endrecord) throws Exception;

	/**
	 * 分页查询数据字典
	 */
	public List<TDictionary> selectDictionaryForPage(
			TDictionaryExample example, int startrecord, int endrecord)
			throws Exception;

	/**
	 * 分页查询师资队伍
	 */
	public List<TTeacherWithBLOBs> selectTeacherForPage(
			TTeacherExample example, int startrecord, int endrecord)
			throws Exception;

	/**
	 * 分页查询专业
	 */
	public List<TDepartmentWithBLOBs> selectTDepartmentForPage(
			TDepartmentExample example, int startrecord, int endrecord)
			throws Exception;

	/**
	 * 分页查询师资队伍
	 */
	public List<TTeacher> selectTeacherForPageNOBLOB(TTeacherExample example,
			int startrecord, int endrecord) throws Exception;

	public List<TResearch> selectTResearchForPage(TResearchExample example,
			int startrecord, int endrecord) throws Exception;

	public List<TPaper> selectTPaperForPage(TPaperExample example,
			int startrecord, int endrecord) throws Exception;

	/**
	 * 分页查询著作
	 */
	public List<TWork> selectWorkForPage(TWorkExample example, int startrecord,
			int endrecord) throws Exception;

	/**
	 * 分页查询获奖
	 */
	public List<TPrize> selectPrizeForPage(TPrizeExample example,
			int startrecord, int endrecord) throws Exception;

	public List<TPartjob> selectPartJobForPage(TPartjobExample example,
			int startrecord, int endrecord) throws Exception;

	public List<THonorandother> selectHonorForPage(
			THonorandotherExample example, int startrecord, int endrecord)
			throws Exception;

	/**
	 * 分页查询
	 */
	public List<TVisitschool> selectVisitSchoolForPage(
			TVisitschoolExample example, int startrecord, int endrecord)
			throws Exception;

	public List<TAttmeeting> selectAttMeetingForPage(
			TAttmeetingExample example, int startrecord, int endrecord)
			throws Exception;

	public List<TAtttrain> selectAtttrainForPage(TAtttrainExample example,
			int startrecord, int endrecord) throws Exception;

	public List<THoldmeeting> selectHoldMeetingForPage(
			THoldmeetingExample example, int startrecord, int endrecord)
			throws Exception;

	public List<TForeignExperts> selectForeignForPage(
			TForeignExpertsExample example, int startrecord, int endrecord)
			throws Exception;

	public List<TBookclub> selectbookclubForPage(TBookclubExample example,
			int startrecord, int endrecord) throws Exception;

	public List<THonoraward> selecthonorawardForPage(
			THonorawardExample example, int startrecord, int endrecord)
			throws Exception;

	public List<TLearnact> selectlearnactForPage(TLearnactExample example,
			int startrecord, int endrecord) throws Exception;
	
	public List<TSocialevent> selectsocialeventForPage(TSocialeventExample example,
			int startrecord, int endrecord) throws Exception;
	
	public List<TStudentaward> selectstudentawardForPage(TStudentawardExample example,
			int startrecord, int endrecord) throws Exception;
}
