package com.grimm.model.entity;

import com.grimm.common.annotation.Column;
import com.grimm.common.annotation.Entity;
import com.grimm.common.annotation.Id;

@Entity(name = "DANHSACHYEUTHICH")
public class WishListEntity {
    @Id(value = "maSp")
    private Integer id;
    @Column(value = "soLuongBan")
    private Integer soLuongBan;
    @Column(value = "id")
    private Integer idUser;

    public WishListEntity(Integer id, Integer soLuongBan, Integer idUser) {
        this.id = id;
        this.soLuongBan = soLuongBan;
        this.idUser = idUser;
    }

    public WishListEntity() {
    }

    public Integer getSoLuongBan() {
        return soLuongBan;
    }

    public void setSoLuongBan(Integer soLuongBan) {
        this.soLuongBan = soLuongBan;
    }

    public Integer getIdUser() {
        return idUser;
    }

    public void setIdUser(Integer idUser) {
        this.idUser = idUser;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "WishListEntity{" +
                "soLuongBan=" + soLuongBan +
                ", idUser=" + idUser +
                ", id=" + id +
                '}';
    }
}
