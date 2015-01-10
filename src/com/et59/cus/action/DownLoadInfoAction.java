package com.et59.cus.action;

import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

import com.alibaba.fastjson.JSON;
import com.et59.cus.domain.entity.BsArticle;
import com.et59.cus.domain.entity.TDownload;
import com.et59.cus.domain.entity.ex.BsArticleQuery;
import com.et59.cus.domain.entity.ex.Pager;
import com.et59.cus.tools.ComonUtil;
import com.et59.cus.tools.Constant;
import com.et59.cus.tools.DateUtil;

/**
 * <p>
 * Title: 资料下载
 * </p>
 * <p>
 * Description:
 * </p>
 *
 */
public class DownLoadInfoAction extends BaseAction {
	/**
	 * @Fields serialVersionUID : 序列化ID
	 */
	private static final long serialVersionUID = -8219690726666214883L;

	Logger log = Logger.getLogger(this.getClass());

	/**
	 * 资料下载详情
	 */
	protected TDownload downloaddetail;

	/**
	 * @Title: toNewsPage
	 * @Description: 跳转到新闻中心
	 * @param @return /news/news.jsp
	 * @return String 返回类型
	 * @throws
	 */

	public String toDownloadPage() {
		super.commonqueryDownload();
		return "to_download_index";
	}

	/**
	 * 查询资料下载
	 * 
	 * @return
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public String doqueryDownload() {
		if (log.isDebugEnabled()) {
			log.debug("查询交易信息currentPage>>>>:" + currentPage);
		}
		try {
			// TDownload download = new TDownload();
			// download.setFileisvalid(Constant.ISVALID_1);
			Map map = localServiceEXProxy.queryDownloadInfoForLimit(
					new TDownload(), Constant.PAGESIZE, currentPage);
			if (ComonUtil.validateMapResult(map)) {
				downloadlist = (List<TDownload>) map
						.get(Constant.DOWNLOAD_LIST);
				totalCount = (Integer) map.get(Constant.TOTALCOUNT);
				totalPageCount = (Integer) map.get(Constant.TOTALPAGECOUNT);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "download_result";
	}

	/**
	 * @Title: downloaddetail
	 * @Description: 跳转到资料下载详细页面
	 * @param @return 设定文件
	 * @return String 返回类型
	 * @throws
	 */
	public String downloaddetail() {
		super.commonqueryDownload();
		String id = request.getParameter("id");
		try {
			downloaddetail = localServiceEXProxy.queryDownloadById(Long
					.valueOf(id));
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "download_detail";
	}

	/**
	 * 新闻后台首页
	 * 
	 * @return
	 */
	public String index() {
		return "index";
	}

	/**
	 * 查询新闻
	 */
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public void query() {
		String startdatacreatenew = request.getParameter("startdatacreatenew");
		String enddatacreatenew = request.getParameter("enddatacreatenew");
		String newtype = request.getParameter("newtype");
		String newauthor = request.getParameter("newauthor");
		String newtitle = request.getParameter("newtitle");
		String page = request.getParameter("page"); // 当前页数
		String rows = request.getParameter("rows"); // 每页显示行数
		try {
			BsArticleQuery bsArticle = new BsArticleQuery();
			if (null != startdatacreatenew && !startdatacreatenew.equals("")) {
				bsArticle.setStartdatacreatenew(DateUtil
						.strToDate(startdatacreatenew));
			}
			if (null != enddatacreatenew && !enddatacreatenew.equals("")) {
				bsArticle.setEnddatacreatenew(DateUtil
						.strToDate(enddatacreatenew));
			}
			if (null != newtype && !newtype.equals("")) {
				bsArticle.setType(newtype);
			}
			if (null != newauthor && !newauthor.equals("")) {
				bsArticle.setAuthor(newauthor);
			}
			if (null != newtitle && !newtitle.equals("")) {
				bsArticle.setTitle(newtitle);
			}
			Pager pager = new Pager();
			Map map = localServiceProxy.queryArticleByTypeForPage(bsArticle,
					Integer.valueOf(rows), Integer.valueOf(page));
			if (ComonUtil.validateMapResult(map)) {
				bsArticlelist = (List<BsArticle>) map
						.get(Constant.ARTICLE_LIST);
				totalCount = (Integer) map.get(Constant.TOTALCOUNT);
				totalPageCount = (Integer) map.get(Constant.TOTALPAGECOUNT);
				pager.setTotal(totalCount);
				pager.setRows(bsArticlelist);
			}
			super.reponseWriter(JSON.toJSONString(pager));
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 保存文章
	 */
	public void save() {
		boolean flag = false;
		BsArticle bsArticle = getBsArticle();
		try {
			localServiceProxy.saveArticle(bsArticle);
			flag = true;
			super.reponseWriter(JSON.toJSONString(flag));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 编辑文章
	 */
	public void update() {
		boolean flag = false;
		String id = request.getParameter("id");
		BsArticle bsArticle = getBsArticle();
		bsArticle.setId(Long.valueOf(id));
		try {
			localServiceProxy.updateArticle(bsArticle);
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
	public BsArticle getBsArticle() {
		String title = request.getParameter("title");
		String createdate = request.getParameter("createdate");
		String author = request.getParameter("author");
		String type = request.getParameter("type");
		String summary = request.getParameter("summary");
		String content = request.getParameter("content");
		BsArticle bsArticle = new BsArticle();
		bsArticle.setTitle(title);
		bsArticle.setSummary(summary);
		bsArticle.setType(type);
		bsArticle.setContent(content);
		bsArticle.setUpdatedate(new Date());
		bsArticle.setCreatedate(DateUtil.strToDate(createdate));
		bsArticle.setAuthor(author);
		return bsArticle;
	}

	/**
	 * 删除文章
	 */
	public void deleteArticle() {
		boolean flag = false;
		String id = request.getParameter("id");
		try {
			localServiceProxy.deleteArticle(Long.valueOf(id));
			flag = true;
			super.reponseWriter(JSON.toJSONString(flag));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public TDownload getDownloaddetail() {
		return downloaddetail;
	}

	public void setDownloaddetail(TDownload downloaddetail) {
		this.downloaddetail = downloaddetail;
	}

}
