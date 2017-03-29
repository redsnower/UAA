<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form id="rppaysubmit" name="rppaysubmit" action="http://localhost:8083/scanPay/initPay" method="get">

<input type="hidden" name="returnUrl" value="http://www.roncoo.com"/>
<input type="hidden" name="orderIp" value="192.168.1.13"/>
<input type="hidden" name="payKey" value="64efebf7eb5b439d8fa213de9028392e"/>
<input type="hidden" name="remark" value=""/>
<input type="hidden" name="orderDate" value="20170313"/>
<input type="hidden" name="orderTime" value="20170313130559"/>
<input type="hidden" name="payWayCode" value=""/>
<input type="hidden" name="sign" value="7502ADD9160A98EEEAD4C6BCA38FDB99"/>
<input type="hidden" name="field5" value="扩展字段5"/>
<input type="hidden" name="field4" value="扩展字段4"/>
<input type="hidden" name="field3" value="扩展字段3"/>
<input type="hidden" name="field2" value="扩展字段2"/>
<input type="hidden" name="orderNo" value="1489381556682"/>
<input type="hidden" name="orderPeriod" value="5"/>
<input type="hidden" name="orderPrice" value=""/>
<input type="hidden" name="field1" value="扩展字段1"/>
<input type="hidden" name="notifyUrl" value="http://www.roncoo.com"/>
<input type="hidden" name="productName" value=""/>
<input type="submit" value="确定" style="display:none;"></form>
</body>
</html>