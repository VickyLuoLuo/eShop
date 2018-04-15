package com.shop.service;

import java.util.List;

import com.shop.model.Article;
import com.shop.model.Reply;

public interface ArticleService {
	
	public List<Article> getArticleList(String type);
	
	public Article getArticleInfo(String articleId);
	
	public void saveArticle(Article a);
	
	
	
}
