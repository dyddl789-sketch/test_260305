package com.boot.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.boot.dto.ItemDTO;

@Mapper
public interface ItemDAO {

    public void insert(ItemDTO dto);

    public List<ItemDTO> select();

}