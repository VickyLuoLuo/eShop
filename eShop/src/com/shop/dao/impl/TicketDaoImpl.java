package com.shop.dao.impl;

import com.shop.dao.TicketDao;
import com.shop.model.Product;
import com.shop.model.Ticket;
import com.shop.service.TicketService;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository("ticketDao")
@SuppressWarnings("all")
public class TicketDaoImpl extends BaseDaoImpl<Ticket> implements TicketDao {

    @Override
    public Integer findTicketByCid(Integer cid) {

//        String hql = "from Ticket t where t.tid = ?";
        String hql = "select tid from Ticket t where t.cid = ?";
        Query query = this.getCurrentSession().createQuery(hql);
        query.setParameter(0, cid);
        return  (Integer) query.uniqueResult();

    }

}
