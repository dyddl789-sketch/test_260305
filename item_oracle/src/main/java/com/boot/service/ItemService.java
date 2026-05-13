package com.boot.service;

import java.util.List;

import com.boot.dto.ItemDTO;

public interface ItemService {

    public void insert(ItemDTO dto);

    public List<ItemDTO> select();

}