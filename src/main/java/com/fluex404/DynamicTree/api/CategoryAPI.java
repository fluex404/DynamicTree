package com.fluex404.DynamicTree.api;

import com.fluex404.DynamicTree.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/category")
public class CategoryAPI {

    @Autowired
    private CategoryService service;

    @GetMapping
    public List<ModelMap> getCategories(){
        return service.getCategories();
    }
}
