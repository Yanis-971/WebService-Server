<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleFriendProxyid" scope="session" class="model.FriendProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleFriendProxyid.setEndpoint(request.getParameter("endpoint"));
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
        java.lang.String getEndpoint2mtemp = sampleFriendProxyid.getEndpoint();
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
        sampleFriendProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        model.Friend getFriend10mtemp = sampleFriendProxyid.getFriend();
if(getFriend10mtemp == null){
%>
<%=getFriend10mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nom:</TD>
<TD>
<%
if(getFriend10mtemp != null){
java.lang.String typenom13 = getFriend10mtemp.getNom();
        String tempResultnom13 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenom13));
        %>
        <%= tempResultnom13 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">pseudo:</TD>
<TD>
<%
if(getFriend10mtemp != null){
java.lang.String typepseudo15 = getFriend10mtemp.getPseudo();
        String tempResultpseudo15 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepseudo15));
        %>
        <%= tempResultpseudo15 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">prenom:</TD>
<TD>
<%
if(getFriend10mtemp != null){
java.lang.String typeprenom17 = getFriend10mtemp.getPrenom();
        String tempResultprenom17 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeprenom17));
        %>
        <%= tempResultprenom17 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(getFriend10mtemp != null){
%>
<%=getFriend10mtemp.getId()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 21:
        gotMethod = true;
        String id_1id=  request.getParameter("id24");
        int id_1idTemp  = Integer.parseInt(id_1id);
        sampleFriendProxyid.setId(id_1idTemp);
break;
case 26:
        gotMethod = true;
        String prenom_2id=  request.getParameter("prenom29");
            java.lang.String prenom_2idTemp = null;
        if(!prenom_2id.equals("")){
         prenom_2idTemp  = prenom_2id;
        }
        sampleFriendProxyid.setPrenom(prenom_2idTemp);
break;
case 31:
        gotMethod = true;
        String nom_3id=  request.getParameter("nom34");
            java.lang.String nom_3idTemp = null;
        if(!nom_3id.equals("")){
         nom_3idTemp  = nom_3id;
        }
        sampleFriendProxyid.setNom(nom_3idTemp);
break;
case 36:
        gotMethod = true;
        java.lang.String getNom36mtemp = sampleFriendProxyid.getNom();
if(getNom36mtemp == null){
%>
<%=getNom36mtemp %>
<%
}else{
        String tempResultreturnp37 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getNom36mtemp));
        %>
        <%= tempResultreturnp37 %>
        <%
}
break;
case 39:
        gotMethod = true;
        java.lang.String getPrenom39mtemp = sampleFriendProxyid.getPrenom();
if(getPrenom39mtemp == null){
%>
<%=getPrenom39mtemp %>
<%
}else{
        String tempResultreturnp40 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getPrenom39mtemp));
        %>
        <%= tempResultreturnp40 %>
        <%
}
break;
case 42:
        gotMethod = true;
        java.lang.String getPseudo42mtemp = sampleFriendProxyid.getPseudo();
if(getPseudo42mtemp == null){
%>
<%=getPseudo42mtemp %>
<%
}else{
        String tempResultreturnp43 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getPseudo42mtemp));
        %>
        <%= tempResultreturnp43 %>
        <%
}
break;
case 45:
        gotMethod = true;
        String pseudo_4id=  request.getParameter("pseudo48");
            java.lang.String pseudo_4idTemp = null;
        if(!pseudo_4id.equals("")){
         pseudo_4idTemp  = pseudo_4id;
        }
        sampleFriendProxyid.setPseudo(pseudo_4idTemp);
break;
case 50:
        gotMethod = true;
        int getId50mtemp = sampleFriendProxyid.getId();
        String tempResultreturnp51 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getId50mtemp));
        %>
        <%= tempResultreturnp51 %>
        <%
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