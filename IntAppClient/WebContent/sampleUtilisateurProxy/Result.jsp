<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleUtilisateurProxyid" scope="session" class="model.UtilisateurProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleUtilisateurProxyid.setEndpoint(request.getParameter("endpoint"));
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
        java.lang.String getEndpoint2mtemp = sampleUtilisateurProxyid.getEndpoint();
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
        sampleUtilisateurProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        model.Utilisateur getUtilisateur10mtemp = sampleUtilisateurProxyid.getUtilisateur();
if(getUtilisateur10mtemp == null){
%>
<%=getUtilisateur10mtemp %>
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
if(getUtilisateur10mtemp != null){
java.lang.String typenom13 = getUtilisateur10mtemp.getNom();
        String tempResultnom13 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenom13));
        %>
        <%= tempResultnom13 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">mail:</TD>
<TD>
<%
if(getUtilisateur10mtemp != null){
java.lang.String typemail15 = getUtilisateur10mtemp.getMail();
        String tempResultmail15 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemail15));
        %>
        <%= tempResultmail15 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">prenom:</TD>
<TD>
<%
if(getUtilisateur10mtemp != null){
java.lang.String typeprenom17 = getUtilisateur10mtemp.getPrenom();
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
if(getUtilisateur10mtemp != null){
%>
<%=getUtilisateur10mtemp.getId()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 21:
        gotMethod = true;
        int getId21mtemp = sampleUtilisateurProxyid.getId();
        String tempResultreturnp22 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getId21mtemp));
        %>
        <%= tempResultreturnp22 %>
        <%
break;
case 24:
        gotMethod = true;
        String id_1id=  request.getParameter("id27");
        int id_1idTemp  = Integer.parseInt(id_1id);
        sampleUtilisateurProxyid.setId(id_1idTemp);
break;
case 29:
        gotMethod = true;
        String mail_2id=  request.getParameter("mail32");
            java.lang.String mail_2idTemp = null;
        if(!mail_2id.equals("")){
         mail_2idTemp  = mail_2id;
        }
        sampleUtilisateurProxyid.setMail(mail_2idTemp);
break;
case 34:
        gotMethod = true;
        java.lang.String getMail34mtemp = sampleUtilisateurProxyid.getMail();
if(getMail34mtemp == null){
%>
<%=getMail34mtemp %>
<%
}else{
        String tempResultreturnp35 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getMail34mtemp));
        %>
        <%= tempResultreturnp35 %>
        <%
}
break;
case 37:
        gotMethod = true;
        String prenom_3id=  request.getParameter("prenom40");
            java.lang.String prenom_3idTemp = null;
        if(!prenom_3id.equals("")){
         prenom_3idTemp  = prenom_3id;
        }
        sampleUtilisateurProxyid.setPrenom(prenom_3idTemp);
break;
case 42:
        gotMethod = true;
        java.lang.String getPrenom42mtemp = sampleUtilisateurProxyid.getPrenom();
if(getPrenom42mtemp == null){
%>
<%=getPrenom42mtemp %>
<%
}else{
        String tempResultreturnp43 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getPrenom42mtemp));
        %>
        <%= tempResultreturnp43 %>
        <%
}
break;
case 45:
        gotMethod = true;
        String nom_4id=  request.getParameter("nom48");
            java.lang.String nom_4idTemp = null;
        if(!nom_4id.equals("")){
         nom_4idTemp  = nom_4id;
        }
        sampleUtilisateurProxyid.setNom(nom_4idTemp);
break;
case 50:
        gotMethod = true;
        java.lang.String getNom50mtemp = sampleUtilisateurProxyid.getNom();
if(getNom50mtemp == null){
%>
<%=getNom50mtemp %>
<%
}else{
        String tempResultreturnp51 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getNom50mtemp));
        %>
        <%= tempResultreturnp51 %>
        <%
}
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