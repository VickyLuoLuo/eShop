package com.shop.dao;

import com.shop.model.Ticket;

import java.util.List;


public interface TicketDao extends BaseDao<Ticket> {

    public Integer findTicketByCid(Integer cid);
}
