package com.grimm.repository;

import com.grimm.model.entity.BlogEntity;
import com.grimm.model.entity.CardEntity;

public interface BlogRepository extends JpaRepository<BlogEntity, Integer> {
}
