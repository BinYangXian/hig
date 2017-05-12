<%@page contentType="text/html; charset=utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title></title>
<base href="<%=basePath%>">
<link rel="stylesheet" href="assets/css/tabCss.css">
<script src="assets/js/tabjs.js"></script>
<script src="assets/js/jquery-1.4.4.js"></script>
</head>
<body>
<%-- <jsp:include page="/ueditor/demo.jsp" ></jsp:include> --%>
<%--  <jsp:include page="/ueditor/demo.html">
    				<jsp:param value="employeeServlet" name="url"/>
</jsp:include> --%>
 <!-- 加载编辑器的容器 -->

	<table width="100%" border="0" align="center" cellpadding="0"
		cellspacing="0">
		<tr>
			<td height="30"><table width="100%" border="0" cellspacing="0"
					cellpadding="0">
					<tr>
						<td width="15" height="30"><img
							src="assets/images/tab_03.gif" width="15" height="30" /></td>
						<td width="1101" background="assets/images/tab_05.gif"><img
							src="assets/images/311.gif" width="16" height="16" /> <span
							class="STYLE4">客户信息列表</span></td>
						<td width="281" background="assets/images/tab_05.gif"><table
								border="0" align="right" cellpadding="0" cellspacing="0">
								<tr>
									<td width="60"><table width="87%" border="0"
											cellpadding="0" cellspacing="0">
											<tr>
												<td class="STYLE1"><div align="center">
														<input type="checkbox" name="checkbox62" value="checkbox"
															onclick="allselected(this);" />
													</div></td>
												<td class="STYLE1"><div align="center">全选</div></td>
											</tr>
										</table></td>
									<td width="60"><table width="90%" border="0"
											cellpadding="0" cellspacing="0">
											<tr>
												<td class="STYLE1"><div align="center">
														<img src="assets/images/001.gif" width="14" height="14" />
													</div></td>
												<td class="STYLE1"><div align="center">
														<a href="power/frame/customer/customerAction!findAllSelectionInfo.action">新增</a>
													</div></td>
											</tr>
										</table></td>
								
									<td width="52"><table width="88%" border="0"
											cellpadding="0" cellspacing="0">
											<tr>
												<td class="STYLE1"><div align="center">
														<img src="assets/images/083.gif" width="14" height="14" />
													</div></td>
												<td class="STYLE1"><div align="center">
														<a href="javascript:void(0);" id="aDel"
															onclick="delArr();">删除</a>
													</div></td>
											</tr>
										</table></td>
								</tr>
							</table></td>
						<td width="14"><img src="assets/images/tab_07.gif" width="14"
							height="30" /></td>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td>
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="9" height="100%">
							<img alt="" src="assets/images/tab_12.gif" width="9px" height="100%"></td>
						<td bgcolor="#f3ffe3">
							<table width="99%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#c0de98">
								<tr>
									<td width="100%" height="26" background="assets/images/tab_14.gif" class="STYLE1">
										<form action="customer/customerAction!findTermByTermVal" method="get">
											<div style="text-align: center;">
												<span style="margin-left: 20px;">
													<select class="termSelect" name="term">
														<option value="" style="color: red;">按条件筛选</option>
														<option value="cusName">客户名称</option>
														<option value="cusNum">客户编号</option>
														<option value="cusArea.areaName">地区</option>
														<option value="user.usename">客户 经理/负责人</option>
														<option value="cusLevel.levelName">客户等级</option>
													</select>
													<input type="text" class="termVal" name="termVal" /></span>
												<span><input type="submit" value="查询" /></span>
												<!--根 据客户名称、客户编号、地区、客户 经理/负责人、客户等级进行筛选查询-->
											</div>
										</form>
									</td>
							</table></td>
						<td width="9" height="100%">
							<img alt="" src="assets/images/tab_16.gif" width="9px" height="100%"></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td><table width="100%" border="0" cellspacing="0"
					cellpadding="0">
					<tr>
						<td width="9" height="100%"><img alt=""
							src="assets/images/tab_12.gif" width="9px" height="100%"></td>
						<td bgcolor="#f3ffe3">
							<table width="99%" border="0" class="customerInfoTable" align="center" cellpadding="0" cellspacing="1" bgcolor="#c0de98">
								<tr class="biaotou">
									<td width="5%" height="26"
										background="assets/images/tab_14.gif" class="STYLE1"><div
											align="center" class="STYLE2 STYLE1">选择</div></td>
									<td width="10%" height="18"
										background="assets/images/tab_14.gif" class="STYLE1"><div
											align="center" class="STYLE2 STYLE1">序 号</div></td>
									<td width="15%" height="18"
										background="assets/images/tab_14.gif" class="STYLE1"><div
											align="center" class="STYLE2 STYLE1">客户名称</div></td>
									<td width="15%" height="18"
										background="assets/images/tab_14.gif" class="STYLE1"><div
											align="center" class="STYLE2 STYLE1">客户编号</div></td>
									<td width="15%" height="18"
										background="assets/images/tab_14.gif" class="STYLE1"><div
											align="center" class="STYLE2">地区</div></td>
									<td width="10%" height="18"
										background="assets/images/tab_14.gif" class="STYLE1"><div
											align="center" class="STYLE2">客户经理/负责人</div></td>
									<td width="15%" height="18"
										background="assets/images/tab_14.gif" class="STYLE1"><div
											align="center" class="STYLE2">客户等级</div></td>
									<td width="15%" height="18"
										background="assets/images/tab_14.gif" class="STYLE1"><div
											align="center" class="STYLE2">操作</div></td>
								</tr>
								<c:forEach items="${crmCustomers}" var="cus">
									<tr>
										<td height="18" bgcolor="#FFFFFF"><div align="center"
												class="STYLE1">
												<input name="userCb" type="checkbox" class="STYLE2"
													value="${cus.cusId}" />
											</div></td>
										<td height="18" bgcolor="#FFFFFF" class="STYLE2"><div
												align="center" class="STYLE2 STYLE1">${cus.cusId }</div></td>
										<td height="18" bgcolor="#FFFFFF">
											<div align="center" class="STYLE2 STYLE1">${cus.cusName }</div>
										</td>
										<td height="18" bgcolor="#FFFFFF">
											<div align="center" class="STYLE2 STYLE1">${cus.cusNum }</div>
										</td>
										<td height="18" bgcolor="#FFFFFF">
											<div align="center" class="STYLE2 STYLE1">${cus.crmCusArea.areaName }</div>
										</td>
										<td height="18" bgcolor="#FFFFFF">
											<div align="center" class="STYLE2 STYLE1">${cus.cusLinkman.linkmanName }</div>
										</td>
										<td height="18" bgcolor="#FFFFFF">
											<div align="center" class="STYLE2 STYLE1">${cus.crmCusLevel.levelName }</div>
										</td>
										<td height="18" bgcolor="#FFFFFF">
											<div align="center">
												<span class="STYLE1">[</span>
												<img src="assets/images/037.gif" width="9" height="9" />
												<a href="customer/customerAction!findByCusId?customer.cusId=${cus.cusId }">编辑</a>
												<a href="power/frame/customer/customerAction!findCusDetailInfo.action?customer.cusId=${cus.cusId }">详情</a>
												<span class="STYLE1">]</span>
											</div>
										</td>
									</tr>
								</c:forEach>
							</table>
						</td>
						<td width="9" height="100%">
							<img alt="" src="assets/images/tab_16.gif" width="9px" height="100%"></td>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td height="29"><table width="100%" border="0" cellspacing="0"
					cellpadding="0">
					<tr>
						<td width="15" height="29"><img
							src="assets/images/tab_20.gif" width="15" height="29" /></td>
						<td background="assets/images/tab_21.gif"><table width="100%"
								border="0" cellspacing="0" cellpadding="0">
								<tr>
									<!-- 导出Excel表 -->
									<td align="center" width="100%" height="29" nowrap="nowrap"><span
										class="STYLE1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>
								</tr>
							</table></td>
						<td width="14"><img src="assets/images/tab_22.gif" width="14"
							height="29" /></td>
					</tr>
				</table></td>
		</tr>
	</table>
</body>
 
</html>
