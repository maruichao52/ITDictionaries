<%@page import="com.tool.MysqlLianJie"%>
<%@page import="com.itimpl.zhishiImpl"%>
<%@page import="com.itdao.IzhishiDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
IzhishiDao zhishi = new zhishiImpl();
try {

	out.print(zhishi.paiHang());
	} catch (Exception e) {
		out.write(e.getMessage());
	}
	finally{
		
		MysqlLianJie.sqlreClose();
	}



%>