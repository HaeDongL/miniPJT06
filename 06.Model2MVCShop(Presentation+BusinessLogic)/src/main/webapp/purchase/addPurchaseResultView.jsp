
<%@page import="com.model2.mvc.service.domain.Purchase"%>
<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%
	Purchase purchase = (Purchase)request.getAttribute("purchase");
	System.out.println("addPurchaseResultView.jsp purchaseVO : "+purchase);
%><%--������ �̵� Ȯ�ο� --%>




<html>
<head>
<title>Insert title here</title>
</head>

<body>

<form name="updatePurchase" action="/updatePurchaseView.do?tranNo=0" method="post">

������ ���� ���Ű� �Ǿ����ϴ�.

<table border=1>
	<tr>
		<td>��ǰ��ȣ</td>
		<td>${purchase.purchaseProd.prodNo }</td>
		<td></td>
	</tr>
	<tr>
		<td>�����ھ��̵�</td>
		<td>${purchase.buyer.userId }</td>
		<td></td>
	</tr>
	<tr>
		<td>���Ź��</td>
		<td>
			<c:if test="${purchase.paymentOption == 1 }">
				���ݱ���
			</c:if>
			<c:if test="${purchase.paymentOption == 2 }">
				�ſ뱸��
			</c:if>
		</td>
		<td></td>
	</tr>
	<tr>
		<td>�������̸�</td>
		<td>${purchase.receiverName }</td>
		<td></td>
	</tr>
	<tr>
		<td>�����ڿ���ó</td>
		<td>${purchase.receiverPhone }</td>
		<td></td>
	</tr>
	<tr>
		<td>�������ּ�</td>
		<td>${purchase.receiverAddr }</td>
		<td></td>
	</tr>
		<tr>
		<td>���ſ�û����</td>
		<td>${purchase.receiverRequest }</td>
		<td></td>
	</tr>
	<tr>
		<td>����������</td>
		<td>${purchase.receiverDate }</td>
		<td></td>
	</tr>
</table>
</form>

</body>
</html>