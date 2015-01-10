package com.et59.cus.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;

import com.et59.cus.domain.dao.TDownloadDAO;
import com.et59.cus.domain.dao.TSubjectDAO;
import com.et59.cus.domain.dao.ex.CommonDAOEx;
import com.et59.cus.domain.entity.TDownload;
import com.et59.cus.domain.entity.TDownloadExample;
import com.et59.cus.domain.entity.TSubject;
import com.et59.cus.domain.entity.TSubjectExample;
import com.et59.cus.tools.ComonUtil;
import com.et59.cus.tools.Constant;

/**
 * <p>
 * Title: LocalServiceEXImpl.java
 * </p>
 * <p>
 * Description:
 * </p>
 * 
 */
public class LocalServiceEXImpl implements LocalServiceEX {
	Logger log = Logger.getLogger(LocalServiceEXImpl.class);

	@Autowired
	private TDownloadDAO tdownloadDAO;

	@Autowired
	private TSubjectDAO tSubjectDAO;

	@Autowired
	private CommonDAOEx commonDAOEx;

	/**
	 * 查询资料下载
	 */
	@Override
	public Map queryDownloadInfoForLimit(TDownload download, int pagesize,
			int currentpage) throws Exception {
		Map map = new HashMap();
		TDownloadExample bae = new TDownloadExample();
		com.et59.cus.domain.entity.TDownloadExample.Criteria criteria = bae
				.createCriteria();
		bae.setOrderByClause(" createdate desc ");
		criteria.andFileisvalidEqualTo(Constant.ISVALID_1);

		// if (null != bsUserservice.getOrderIccard()
		// && !bsUserservice.getOrderIccard().equals("")) {
		// criteria.andOrderIccardEqualTo(bsUserservice.getOrderIccard());
		// }
		// if (null != bsUserservice.getUserId()) {
		// criteria.andUserIdEqualTo(bsUserservice.getUserId());
		// }
		int startrecord = (currentpage - 1) * pagesize;
		List<TDownload> list = commonDAOEx.selectTDownloadForPage(bae,
				startrecord, pagesize);
		int totalCount = tdownloadDAO.countByExample(bae);
		map.put(Constant.TOTALCOUNT, totalCount);
		map.put(Constant.TOTALPAGECOUNT,
				ComonUtil.computusTotalPage(totalCount, pagesize));
		map.put(Constant.ACTION_RESULT, Constant.RESULT_SUCCESS);
		map.put(Constant.DOWNLOAD_LIST, list);
		return map;

	}

	/**
	 * 查询资料byid
	 */
	@Override
	public TDownload queryDownloadById(long id) throws Exception {
		TDownload download = new TDownload();
		if (id == 0) {
			throw new Exception("id错误!");
		} else {
			download = tdownloadDAO.selectByPrimaryKey(id);
			if (null != download) {
				if (log.isDebugEnabled()) {
					log.debug("数据库里面存在该资料！");
				}
			} else {
				if (log.isDebugEnabled()) {
					log.debug("数据库里面不存在该资料，校验失败");
				}
			}
		}
		return download;
	}

	/**
	 * 查询课程列表
	 */
	@Override
	public Map querySubjectForLimit(TSubject subject, int pagesize,
			int currentpage) throws Exception {
		Map map = new HashMap();
		TSubjectExample bae = new TSubjectExample();
		com.et59.cus.domain.entity.TSubjectExample.Criteria criteria = bae
				.createCriteria();
		bae.setOrderByClause(" createdate desc ");
		criteria.andSubjectisvalidEqualTo(Constant.ISVALID_1);

		// if (null != bsUserservice.getOrderIccard()
		// && !bsUserservice.getOrderIccard().equals("")) {
		// criteria.andOrderIccardEqualTo(bsUserservice.getOrderIccard());
		// }
		// if (null != bsUserservice.getUserId()) {
		// criteria.andUserIdEqualTo(bsUserservice.getUserId());
		// }
		int startrecord = (currentpage - 1) * pagesize;
		List<TSubject> list = commonDAOEx.selectTSubjectForPage(bae,
				startrecord, pagesize);
		int totalCount = tSubjectDAO.countByExample(bae);
		map.put(Constant.TOTALCOUNT, totalCount);
		map.put(Constant.TOTALPAGECOUNT,
				ComonUtil.computusTotalPage(totalCount, pagesize));
		map.put(Constant.ACTION_RESULT, Constant.RESULT_SUCCESS);
		map.put(Constant.SUBJECT_LIST, list);
		return map;

	}

	/**
	 * 查询课程byid
	 */
	@Override
	public TSubject querySubjectById(long id) throws Exception {
		TSubject subject = new TSubject();
		if (id == 0) {
			throw new Exception("id错误!");
		} else {
			subject = tSubjectDAO.selectByPrimaryKey(id);
			if (null != subject) {
				if (log.isDebugEnabled()) {
					log.debug("数据库里面存在该资料！");
				}
			} else {
				if (log.isDebugEnabled()) {
					log.debug("数据库里面不存在该资料，校验失败");
				}
			}
		}
		return subject;
	}

}
