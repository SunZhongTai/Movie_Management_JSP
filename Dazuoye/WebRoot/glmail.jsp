<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page contentType="text/html;"%>
<%@ page import="java.util.*, javax.mail.*, javax.mail.internet.*" %>
<html>
<head>
<title>JavaMail 电子邮件发送系统</title>
</head>
<body>

<%
// 以下变量为用户根据自己的情况设置
String smtphost = "smtp.sina.com"; // 发送邮件服务器
String user = "sunzhongtai122"; // 邮件服务器登录用户名
String password = "SZT980122love"; // 邮件服务器登录密码
String from = "sunzhongtai122@sina.com"; // 发送人邮件地址
String to = "15563831078@sina.cn"; // 接受人邮件地址
String subject = "JavaMail 电子邮件发送系统测试"; // 邮件标题
String body =new String(request.getParameter("pingjia").getBytes("ISO-8859-1"),"UTF-8");  // 邮件内容



// 以下为发送程序，用户无需改动
try {
Properties props = new Properties();
props.put("mail.smtp.host", smtphost);
props.put("mail.smtp.auth","true");
Session ssn = Session.getInstance(props, null);

MimeMessage message = new MimeMessage(ssn);

InternetAddress fromAddress = new InternetAddress(from);
message.setFrom(fromAddress);
InternetAddress toAddress = new InternetAddress(to);
message.addRecipient(Message.RecipientType.TO, toAddress);

message.setSubject(subject);
message.setText(body);

Transport transport = ssn.getTransport("smtp");
transport.connect(smtphost, user, password);
transport.sendMessage(message, message.getRecipients(Message.RecipientType.TO));
//transport.send(message);
transport.close();
%>
<p>你的邮件已发送，请返回。</p>
<input type="submit" name="Submit" value="返回" onclick="javascrtpt:window.history.back(-1)"/>
<%
} catch(Exception m) {
out.println(m.toString());
m.printStackTrace();
}%>
</body>
</html>