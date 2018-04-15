package com.shop.service;

import java.util.List;

import com.shop.model.Reply;

public interface ReplyService {
	public void saveReply(Reply r);
	
	public void firstReply(Reply r);
	
	public void deleteReply(Reply r);
	//public void deleteReply(String r);
	public List<Reply> getReplyList(String articleId);
	
	public Reply findReply(String r);
	
}
