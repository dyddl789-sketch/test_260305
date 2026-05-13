package com.boot.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.boot.dto.ItemDTO;
import com.boot.service.ItemService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class ItemController {

    private final ItemService itemService;


    @GetMapping("/write")
    public String writeForm() {
        return "item_write";
    }

    @PostMapping("/write")
    public String write(ItemDTO dto) {
        itemService.insert(dto);
        return "write_result";
    }

    @GetMapping("/list")
    public String list(Model model) {
        List<ItemDTO> list = itemService.select();
        model.addAttribute("list", list);
        return "content_view";
    }

}