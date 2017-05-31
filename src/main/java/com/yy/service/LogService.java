package com.yy.service;

import com.yy.model.SysLog;
import com.yy.utils.PageInfo;

/**
 * 
 * @author yf
 * @创建时间 2016年3月13日 上午9:47:54
 */
public interface LogService {

    void insertLog(SysLog sysLog);

    void findDataGrid(PageInfo pageInfo);
}
