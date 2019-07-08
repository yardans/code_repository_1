package org.happybuy.service;

import org.happybuy.pojo.Category;
import org.happybuy.pojo.CategoryExample;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("CateService")
public interface CateService {
    public List<Category> selectByExample(CategoryExample example);
    public void insertSelective(Category category);

    public List<Category> selectByExampleLimit(CategoryExample digCategoryExample);

    public Category selectById(Integer category);

    public void updateByPrimaryKeySelective(Category category);

    public void deleteByPrimaryKey(Integer cateid);
}
