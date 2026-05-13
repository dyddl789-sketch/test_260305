package com.boot.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.boot.dao.ItemDAO;
import com.boot.dto.ItemDTO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ItemServiceImpl implements ItemService {

    private final ItemDAO itemDAO;

    @Override
    public void insert(ItemDTO dto) {
        itemDAO.insert(dto);
    }

    @Override
    public List<ItemDTO> select() {
        return itemDAO.select();
    }

}