<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleMessageProxyid" scope="session" class="model.MessageProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleMessageProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        java.lang.String getEndpoint2mtemp = sampleMessageProxyid.getEndpoint();
if(getEndpoint2mtemp == null){
%>
<%=getEndpoint2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getEndpoint2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 5:
        gotMethod = true;
        String endpoint_0id=  request.getParameter("endpoint8");
            java.lang.String endpoint_0idTemp = null;
        if(!endpoint_0id.equals("")){
         endpoint_0idTemp  = endpoint_0id;
        }
        sampleMessageProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        model.Message getMessage10mtemp = sampleMessageProxyid.getMessage();
if(getMessage10mtemp == null){
%>
<%=getMessage10mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">date:</TD>
<TD>
<%
if(getMessage10mtemp != null){
java.lang.String typedate13 = getMessage10mtemp.getDate();
        String tempResultdate13 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typedate13));
        %>
        <%= tempResultdate13 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">contenu:</TD>
<TD>
<%
if(getMessage10mtemp != null){
java.lang.String typecontenu15 = getMessage10mtemp.getContenu();
        String tempResultcontenu15 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecontenu15));
        %>
        <%= tempResultcontenu15 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(getMessage10mtemp != null){
%>
<%=getMessage10mtemp.getId()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 19:
        gotMethod = true;
        int getId19mtemp = sampleMessageProxyid.getId();
        String tempResultreturnp20 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getId19mtemp));
        %>
        <%= tempResultreturnp20 %>
        <%
break;
case 22:
        gotMethod = true;
        String date_1id=  request.getParameter("date25");
            java.lang.String date_1idTemp = null;
        if(!date_1id.equals("")){
         date_1idTemp  = date_1id;
        }
        sampleMessageProxyid.setDate(date_1idTemp);
break;
case 27:
        gotMethod = true;
        java.lang.String getDate27mtemp = sampleMessageProxyid.getDate();
if(getDate27mtemp == null){
%>
<%=getDate27mtemp %>
<%
}else{
        String tempResultreturnp28 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getDate27mtemp));
        %>
        <%= tempResultreturnp28 %>
        <%
}
break;
case 30:
        gotMethod = true;
        String id_2id=  request.getParameter("id33");
        int id_2idTemp  = Integer.parseInt(id_2id);
        sampleMessageProxyid.setId(id_2idTemp);
break;
case 35:
        gotMethod = true;
        java.lang.String getContenu35mtemp = sampleMessageProxyid.getContenu();
if(getContenu35mtemp == null){
%>
<%=getContenu35mtemp %>
<%
}else{
        String tempResultreturnp36 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getContenu35mtemp));
        %>
        <%= tempResultreturnp36 %>
        <%
}
break;
case 38:
        gotMethod = true;
        String contenu_3id=  request.getParameter("contenu41");
            java.lang.String contenu_3idTemp = null;
        if(!contenu_3id.equals("")){
         contenu_3idTemp  = contenu_3id;
        }
        sampleMessageProxyid.setContenu(contenu_3idTemp);
break;
}
} catch (Exception e) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>