package com.grimm.model.entity;

import com.grimm.common.annotation.Column;
import com.grimm.common.annotation.Entity;
import com.grimm.common.annotation.Id;

@Entity(name = "coupon")
public class CouponEntity {
    @Id(value = "Id_Coupon")
    private String id;
    @Column(value = "name_Coupon")
    private String nameCoupon;
    @Column(value = "discount")
    private Integer slGiam;
    public CouponEntity(String id, String nameCoupon, Integer slGiam) {
        this.id = id;
        this.nameCoupon = nameCoupon;
        this.slGiam = slGiam;
    }

    public CouponEntity() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNameCoupon() {
        return nameCoupon;
    }

    public void setNameCoupon(String nameCoupon) {
        this.nameCoupon = nameCoupon;
    }

    public Integer getSlGiam() {
        return slGiam;
    }

    public void setSlGiam(Integer slGiam) {
        this.slGiam = slGiam;
    }

    @Override
    public String toString() {
        return "CouponEntity{" +
                "id='" + id + '\'' +
                ", nameCoupon='" + nameCoupon + '\'' +
                ", slGiam=" + slGiam +
                '}';
    }
}
