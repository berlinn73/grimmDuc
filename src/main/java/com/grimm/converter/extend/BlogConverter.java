package com.grimm.converter.extend;

import com.grimm.converter.impl.ConverterImpl;
import com.grimm.model.entity.BlogEntity;
import com.grimm.model.entity.ProductEntity;
import com.grimm.model.request.BlogRequest;
import com.grimm.model.request.ProductRequest;
import com.grimm.model.response.BlogResponse;
import com.grimm.model.response.ProductResponse;

import java.util.ArrayList;
import java.util.List;

public class BlogConverter extends ConverterImpl<BlogRequest, BlogResponse, BlogEntity> {
    @Override
    public BlogEntity converToEntity(BlogEntity blogEntity, BlogRequest blogRequest) {
        return super.converToEntity(blogEntity, blogRequest);
    }

    @Override
    public BlogResponse converToResponse(BlogResponse blogResponse, BlogEntity blogEntity) {
        return super.converToResponse(blogResponse, blogEntity);
    }

    @Override
    public List<BlogResponse> convertToListResponse(List<BlogEntity> blogEntities) {
        List<BlogResponse> vs = new ArrayList<>();
        for (BlogEntity blogEntity: blogEntities) {
            BlogResponse blogResponse = new BlogResponse();
            blogResponse= converToResponse(blogResponse,blogEntity);
            vs.add(blogResponse);
        }
        return vs;
    }
}
