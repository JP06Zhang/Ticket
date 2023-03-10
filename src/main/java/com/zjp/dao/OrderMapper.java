package com.zjp.dao;

import com.zjp.entity.Order;
import java.util.List;

public interface OrderMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Order record);

    Order selectByPrimaryKey(Long id);

    List<Order> selectAll();

    int updateByPrimaryKey(Order record);

    List<Order> getOrdersByPlayId(String playId);
}