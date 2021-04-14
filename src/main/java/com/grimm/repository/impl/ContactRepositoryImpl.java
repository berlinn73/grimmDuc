package com.grimm.repository.impl;

import com.grimm.model.entity.ContactEntity;
import com.grimm.model.entity.CouponEntity;
import com.grimm.repository.ContactRepository;
import com.grimm.repository.CouponRepository;
import com.grimm.util.MySqlConnectionUtil;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ContactRepositoryImpl extends BasicQuery<ContactEntity, Integer> implements ContactRepository {
}
