package com.grimm.paging;

public interface Pageable {
    Integer getPage();
    Integer getLimit();
    Integer getOffset();

}
