package com.grimm.converter.impl;

import com.grimm.converter.Converter;
import com.grimm.util.ObjectUtil;

import java.util.List;

// request , response, entity
public class ConverterImpl<U,V,T> implements Converter<U,V,T> {

    @Override
    public T converToEntity(T t,U u) {
        ObjectUtil.copyProperties(u,t);
        return t;
    }
    @Override
    public V converToResponse(V v, T t) {
        ObjectUtil.copyProperties(t,v);
        return v;
    }

    @Override
    public List<V> convertToListResponse(List<T> ts) {
        return null;
    }
}
