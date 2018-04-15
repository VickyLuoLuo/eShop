package com.shop.dao.impl;

import com.shop.dao.MessageDao;
import com.shop.model.Message;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository("messageDao")
@SuppressWarnings("all")
public class MessageDaoImpl extends BaseDaoImpl<Message> implements MessageDao{
	@Override
   public List<Message> getMessageList(Integer userId) {
		String hql="from Message where sellerId=?";
		Query query=this.getCurrentSession().createQuery(hql);
		query.setParameter(0, userId);
		List<Message> messages = query.list();
		return messages;
	}
}
