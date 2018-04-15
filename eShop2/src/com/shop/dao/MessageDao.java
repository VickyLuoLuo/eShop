package com.shop.dao;

import com.shop.model.Message;
import java.util.List;

public interface MessageDao extends BaseDao<Message>{
	public List<Message> getMessageList(Integer userId);
}
