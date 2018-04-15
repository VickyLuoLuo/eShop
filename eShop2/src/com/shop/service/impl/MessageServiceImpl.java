package com.shop.service.impl;

import com.shop.dao.CategoryDao;
import com.shop.dao.impl.BaseDaoImpl;
import com.shop.model.Message;
import com.shop.service.MessageService;
import com.shop.utils.UUIDUtils;
import org.hibernate.Query;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
import com.shop.dao.BaseDao;
import com.shop.dao.MessageDao;

@Transactional
@Service("MessageService")
@Resource
public class MessageServiceImpl extends BaseDaoImpl<Message> implements MessageService{


	@Resource
	private BaseDao baseDao;
	@Resource
	private MessageDao messageDao;

	@Override
	public void add(Message message) {
		baseDao.saveOrUpdate(message);
	}

	@Override
	public  List<Message> getMessageList(Integer userId) {
		return messageDao.getMessageList(userId);
	}

}
