package com.shop.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.text.AbstractDocument.Content;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shop.model.Article;
import com.shop.model.Cart;
import com.shop.model.Reply;
import com.shop.model.User;
import com.shop.service.ArticleService;
import com.shop.service.ReplyService;

@Controller
public class ArticleController {
	@Resource
	private ArticleService articleService;
	@Resource
	private ReplyService replyService;
	@RequestMapping("/getArticleList")
	public String getArticleList(HttpSession session,HttpServletRequest request){
		List<Article> a = articleService.getArticleList();
		request.setAttribute("articleList", a);
		
		return "article_list";
	}
	
	
	@RequestMapping(value="getArticleInfo/{aid}")
	public String getArticleInfo(@PathVariable("aid") String aid,HttpServletRequest request){
		
		
		Article article = articleService.getArticleInfo(aid);
		List<Reply> r = replyService.getReplyList(aid);
		request.setAttribute("article", article);
		request.setAttribute("replyList", r);
		return "article_info";
	}
	
	
	@RequestMapping("/addArticle")
	public String addArticle(HttpSession session,HttpServletRequest request){
		User user = (User) session.getAttribute("user");
		Article article = new Article();
		 String title = request.getParameter("title");
		 String content = request.getParameter("content");
		article.setContent(content);
		article.setTitle(title);
		article.setUserName(user.getName());
		article.setUserId(user.getCode());
		article.setDate(getNowDate());
		article.setStrDate(getNowStrDate());
		articleService.saveArticle(article);
		List<Article> a = articleService.getArticleList();
		request.setAttribute("articleList", a);
		//返回articleInfo
		return "article_list";
	}

	@RequestMapping(value="saveArticle")
	public String saveArticle(HttpSession session,Map<String,Object> map){
		//判断用户是否登陆,
		User user = (User) session.getAttribute("user");
		if(user == null){
			map.put("notLogin","noLogin");
			return "msg";
		}
		return null;
	}
	@RequestMapping("/deleteReply/{rid}")
	public ModelAndView deleteReply(@PathVariable("rid") String rid,HttpSession session,HttpServletRequest request){
		Reply r = replyService.findReply(rid);
		String aid = r.getArticleId();
		//返回articleInfo
		
		Article article = articleService.getArticleInfo(aid);
		List<Reply> replyList = replyService.getReplyList(aid);
		ModelAndView modelAndView = new ModelAndView("redirect:/getArticleInfo/"+aid);
		modelAndView.addObject("replyList", replyList);
		modelAndView.addObject("article", article);
		replyService.deleteReply(r);
		return modelAndView;
	}
	
	@RequestMapping("/addReply/{aid}")
	public String addReply(@PathVariable("aid") String aid,HttpSession session,HttpServletRequest request){
		String content = request.getParameter("content");
		User user = (User) session.getAttribute("user");
		Reply r = new Reply();
		r.setArticleId(aid);
		r.setContent(content);
		r.setDate(getNowDate());
		r.setStrDate(getNowStrDate());
		r.setFirstFlag("n");
		r.setUserId(user.getCode());
		r.setUserName(user.getName());
		replyService.saveReply(r);
		Article a = articleService.getArticleInfo(aid);
		List<Reply> replyList = replyService.getReplyList(aid);
		request.setAttribute("replyList", replyList);
		request.setAttribute("article", a);
		//返回articleInfo
		return "article_info";
	}
	
	@RequestMapping("/firstReply/{rid}")
	public ModelAndView firstReply(@PathVariable("rid") String rid,HttpSession session,HttpServletRequest request){
		Reply r = replyService.findReply(rid);
		String aid = r.getArticleId();
		//返回articleInfo
		
		Article article = articleService.getArticleInfo(aid);
		List<Reply> replyList = replyService.getReplyList(aid);
		ModelAndView modelAndView = new ModelAndView("redirect:/getArticleInfo/"+aid);
		modelAndView.addObject("replyList", replyList);
		modelAndView.addObject("article", article);
		r.setFirstFlag("y");
		replyService.firstReply(r);
		//返回articleInfo
		return modelAndView;
	}
	public static String getNowDate() {
		   Date currentTime = new Date();
		   SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmm");
		   String dateString = formatter.format(currentTime);
		   return dateString;
		}
	public static String getNowStrDate() {
		   Date currentTime = new Date();
		   SimpleDateFormat formatter = new SimpleDateFormat("yyyy年MM月dd日HH时");
		   String dateString = formatter.format(currentTime);
		   return dateString;
		}
}
