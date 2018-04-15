package com.shop.service;

import com.shop.model.Message;

import java.util.List;

public interface MessageService {

	public void add(Message message);

	public List<Message> getMessageList(Integer userId);
	
}
