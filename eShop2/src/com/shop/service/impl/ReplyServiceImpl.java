package com.shop.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shop.dao.impl.BaseDaoImpl;
import com.shop.model.Article;
import com.shop.model.Reply;
import com.shop.model.User;
import com.shop.service.ReplyService;
import com.shop.utils.UUIDUtils;

@Transactional
@Service("replyService")
@Resource
public class ReplyServiceImpl extends BaseDaoImpl<Reply> implements ReplyService{
	
	public void saveReply(Reply r) {
		String code = UUIDUtils.getUUID()+UUIDUtils.getUUID();
		r.setCode(code);
		this.save(r);
	}

	public void firstReply(Reply r) {
		this.update(r);
	}

	public void deleteReply(Reply r) {
		
		this.delete(r);
		//delete(r);
		
	}

	public List<Reply> getReplyList(String article) {
		String hql = "from Reply r where r.firstFlag='y' and r.articleId='"+article+"'  order by date desc";
		List<Reply> r = find(hql);
		hql = "from Reply r where r.firstFlag='n'  and r.articleId='"+article+"'   order by date desc";
		r.addAll(find(hql));
		
		return r;
	}
	
	
	public Reply findReply(String r){
		
		String hql = "from Reply a where a.code = ?";
		Query query = this.getCurrentSession().createQuery(hql);
		query.setParameter(0, r);
		return (Reply)query.uniqueResult(); 
	}
}
