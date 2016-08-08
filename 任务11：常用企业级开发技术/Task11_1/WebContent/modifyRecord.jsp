<%@page import="java.util.Iterator"%>
<%@page import="com.gzj.entity.Consume"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<jsp:include page="isLogin.jsp"></jsp:include>
<body>
	<%		
		request.setCharacterEncoding("utf-8");
		List<Consume> records = (List<Consume>) session.getAttribute("Record");				
		Iterator iter = records.iterator();
	%>
	<center>
		<table>
			<tr>
				<td>VIP编号</td>	
				<td>姓名</td>			
				<td>商品编号</td>
				<td>商品名称</td>	
				<td>商品价格</td>	
				<td>实收金额</td>					
				<td></td>
			</tr>
			<%
				int i = 0;
				while (iter.hasNext()) {
					Consume consume = (Consume) iter.next();
			%>
			<tr <%if (i % 2 == 0) {%> bgcolor="#F0F8FF" <%}%>>
				<td><%=consume.getVip().getVipId()%></td>
				<td><%=consume.getVip().getName() %></td>						
				<td><%=consume.getCommodity().getCommodityId()%></td>	
				<td><%=consume.getCommodity().getCommodityName()%></td>
				<td><%=consume.getCommodity().getPrice()%></td>
				<td><%=(double)Math.round(consume.getCommodity().getPrice()*consume.getCommodity().getAgio()*100)/100 %></td>			
				<td><a href="modifyRecord.action?id=<%=consume.getConsumeId()%>">修改</a></td>
			</tr>
			<%
				i++;
				}
			%>

		</table>
	</center>
</body>
</html>