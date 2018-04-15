package com.shop.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shop.dao.BaseDao;
import com.shop.dao.UserDao;
import com.shop.dao.impl.BaseDaoImpl;
import com.shop.model.Article;
import com.shop.model.Reply;
import com.shop.model.User;
import com.shop.service.ArticleService;
import com.shop.utils.UUIDUtils;
@Transactional
@Service("ArticleService")
@Resource
public class ArticleServiceImpl extends BaseDaoImpl<Article> implements ArticleService{

	
	public List<Article> getArticleList() {
		String hql = "from Article  order by date desc";
		
		return find(hql);
	}

	@Override
	public Article getArticleInfo(String code) {
		String hql = "from Article a where a.code = ?";
		Query query = this.getCurrentSession().createQuery(hql);
		query.setParameter(0, code);
		return (Article)query.uniqueResult(); 
	}

	public void saveArticle(Article a) {
		String code = UUIDUtils.getUUID()+UUIDUtils.getUUID();
		a.setCode(code);
		this.save(a);
	}



}
