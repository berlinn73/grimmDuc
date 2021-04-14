package com.grimm.repository;


import com.grimm.model.entity.CheckOutEntity;

public interface CheckOutRepository extends JpaRepository<CheckOutEntity, Integer> {
    int tongTien();
}
