package com.fluex404.DynamicTree.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;

import java.util.ArrayList;
import java.util.List;

@Component
public class CategoryService {
    @Autowired
    private JdbcTemplate jdbcTemplate;

    public List<ModelMap> getCategories(){
        List<ModelMap> list = new ArrayList<>();

        categoryTree(null, list);

        return list;
    }
    private void categoryTree(Long parentId, List<ModelMap> list){
        String sql = "";
        if(parentId == null)
            sql = "SELECT c.`id`, c.`parent_id`, c.`name` FROM `category` c WHERE c.`parent_id` IS NULL ";
        else
            sql = "SELECT c.`id`, c.`parent_id`, c.`name` FROM `category` c WHERE c.`parent_id` ="+parentId;

        jdbcTemplate.query(sql, rs -> {
            ModelMap m = new ModelMap();

//            m.put("id", rs.getLong("id"));
            m.put("text", rs.getString("name"));
            m.put("icon", "fa fa-list-alt");

            List<ModelMap> nodes = new ArrayList<>();
            categoryTree(rs.getLong("id"), nodes);

            m.put("nodes", nodes);

            list.add(m);
        });
    }
}
