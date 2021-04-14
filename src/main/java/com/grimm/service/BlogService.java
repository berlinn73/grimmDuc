package com.grimm.service;

import com.grimm.model.entity.BlogEntity;
import com.grimm.model.entity.ProductEntity;
import com.grimm.model.request.BlogRequest;
import com.grimm.model.response.BlogResponse;

import java.util.List;

public interface BlogService {
    void insert(BlogRequest request);

    void update(BlogRequest request);

    void delete (int id);

    List<BlogResponse> findAll();

    BlogEntity findById(Integer id);
}
