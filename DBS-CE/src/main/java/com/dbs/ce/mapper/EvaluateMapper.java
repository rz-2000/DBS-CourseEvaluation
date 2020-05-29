package com.dbs.ce.mapper;

import com.dbs.ce.entity.Evaluate;

public interface EvaluateMapper {
    int deleteByPrimaryKey(EvaluateKey key);

    int insert(Evaluate record);

    int insertSelective(Evaluate record);

    Evaluate selectByPrimaryKey(EvaluateKey key);

    int updateByPrimaryKeySelective(Evaluate record);

    int updateByPrimaryKey(Evaluate record);
}