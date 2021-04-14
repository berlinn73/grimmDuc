package com.grimm.service.impl;

import com.grimm.autowire.BeanFactory;
import com.grimm.common.annotation.Service;
import com.grimm.converter.extend.BlogConverter;
import com.grimm.model.entity.BlogEntity;
import com.grimm.model.request.BlogRequest;
import com.grimm.model.response.BlogResponse;
import com.grimm.repository.BlogRepository;
import com.grimm.repository.impl.BlogRepositoryImpl;
import com.grimm.service.BlogService;

import java.sql.SQLException;
import java.util.List;
@Service
public class BlogServiceImpl implements BlogService {
    private BlogRepository blogRepository;
    private BlogConverter blogConverter;
    public BlogServiceImpl() {
        blogRepository = (BlogRepository) BeanFactory.getBeans().get("blogRepository");
        blogConverter = new BlogConverter();
    }
    @Override
    public void insert(BlogRequest request) {
        BlogEntity blogEntity = new BlogEntity();
        BlogEntity entity = blogConverter.converToEntity(blogEntity,request);
        try {
            new BlogRepositoryImpl().insert(entity);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void update(BlogRequest request) {
        BlogEntity blogEntity = new BlogEntity();
        BlogEntity entity = blogConverter.converToEntity(blogEntity,request);
        new BlogRepositoryImpl().update(entity);
    }

    @Override
    public void delete(int id) {
        try {
            blogRepository.delete(id);
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<BlogResponse> findAll() {
        List<BlogEntity> blogEntities= new BlogRepositoryImpl().findAll();
        return blogConverter.convertToListResponse(blogEntities);
    }

    @Override
    public BlogEntity findById(Integer id) {
        return new BlogRepositoryImpl().findById(id);
    }
}
