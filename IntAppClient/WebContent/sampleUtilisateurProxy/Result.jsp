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
<TD COLSPAN="2" ALIGN="LEFT">mail:</TD>
<TD>
<%
if(getUtilisateur10mtemp != null){
java.lang.String typemail13 = getUtilisateur10mtemp.getMail();
        String tempResultmail13 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemail13));
        %>
        <%= tempResultmail13 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">nom:</TD>
<TD>
<%
if(getUtilisateur10mtemp != null){
java.lang.String typenom15 = getUtilisateur10mtemp.getNom();
        String tempResultnom15 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenom15));
        %>
        <%= tempResultnom15 %>
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
        java.lang.String getNom29mtemp = sampleUtilisateurProxyid.getNom();
if(getNom29mtemp == null){
%>
<%=getNom29mtemp %>
<%
}else{
        String tempResultreturnp30 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getNom29mtemp));
        %>
        <%= tempResultreturnp30 %>
        <%
}
break;
case 32:
        gotMethod = true;
        String nom_2id=  request.getParameter("nom35");
            java.lang.String nom_2idTemp = null;
        if(!nom_2id.equals("")){
         nom_2idTemp  = nom_2id;
        }
        sampleUtilisateurProxyid.setNom(nom_2idTemp);
break;
case 37:
        gotMethod = true;
        java.lang.String getPrenom37mtemp = sampleUtilisateurProxyid.getPrenom();
if(getPrenom37mtemp == null){
%>
<%=getPrenom37mtemp %>
<%
}else{
        String tempResultreturnp38 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getPrenom37mtemp));
        %>
        <%= tempResultreturnp38 %>
        <%
}
break;
case 40:
        gotMethod = true;
        String prenom_3id=  request.getParameter("prenom43");
            java.lang.String prenom_3idTemp = null;
        if(!prenom_3id.equals("")){
         prenom_3idTemp  = prenom_3id;
        }
        sampleUtilisateurProxyid.setPrenom(prenom_3idTemp);
break;
case 45:
        gotMethod = true;
        String mail_4id=  request.getParameter("mail48");
            java.lang.String mail_4idTemp = null;
        if(!mail_4id.equals("")){
         mail_4idTemp  = mail_4id;
        }
        sampleUtilisateurProxyid.setMail(mail_4idTemp);
break;
case 50:
        gotMethod = true;
        java.lang.String getMail50mtemp = sampleUtilisateurProxyid.getMail();
if(getMail50mtemp == null){
%>
<%=getMail50mtemp %>
<%
}else{
        String tempResultreturnp51 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getMail50mtemp));
        %>
        <%= tempResultreturnp51 %>
        <%
}
break;
case 53:
        gotMethod = true;
        sampleUtilisateurProxyid.voirUser();
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