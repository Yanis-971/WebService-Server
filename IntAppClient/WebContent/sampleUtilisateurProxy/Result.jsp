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
        java.lang.String getPrenom29mtemp = sampleUtilisateurProxyid.getPrenom();
if(getPrenom29mtemp == null){
%>
<%=getPrenom29mtemp %>
<%
}else{
        String tempResultreturnp30 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getPrenom29mtemp));
        %>
        <%= tempResultreturnp30 %>
        <%
}
break;
case 32:
        gotMethod = true;
        String prenom_2id=  request.getParameter("prenom35");
            java.lang.String prenom_2idTemp = null;
        if(!prenom_2id.equals("")){
         prenom_2idTemp  = prenom_2id;
        }
        sampleUtilisateurProxyid.setPrenom(prenom_2idTemp);
break;
case 37:
        gotMethod = true;
        String mail_3id=  request.getParameter("mail40");
            java.lang.String mail_3idTemp = null;
        if(!mail_3id.equals("")){
         mail_3idTemp  = mail_3id;
        }
        sampleUtilisateurProxyid.setMail(mail_3idTemp);
break;
case 42:
        gotMethod = true;
        sampleUtilisateurProxyid.voirUser();
break;
case 45:
        gotMethod = true;
        java.lang.String getMail45mtemp = sampleUtilisateurProxyid.getMail();
if(getMail45mtemp == null){
%>
<%=getMail45mtemp %>
<%
}else{
        String tempResultreturnp46 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getMail45mtemp));
        %>
        <%= tempResultreturnp46 %>
        <%
}
break;
case 48:
        gotMethod = true;
        java.lang.String getNom48mtemp = sampleUtilisateurProxyid.getNom();
if(getNom48mtemp == null){
%>
<%=getNom48mtemp %>
<%
}else{
        String tempResultreturnp49 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getNom48mtemp));
        %>
        <%= tempResultreturnp49 %>
        <%
}
break;
case 51:
        gotMethod = true;
        String nom_4id=  request.getParameter("nom54");
            java.lang.String nom_4idTemp = null;
        if(!nom_4id.equals("")){
         nom_4idTemp  = nom_4id;
        }
        sampleUtilisateurProxyid.setNom(nom_4idTemp);
break;
case 56:
        gotMethod = true;
        String pseudo_5id=  request.getParameter("pseudo59");
            java.lang.String pseudo_5idTemp = null;
        if(!pseudo_5id.equals("")){
         pseudo_5idTemp  = pseudo_5id;
        }
        String mdp_6id=  request.getParameter("mdp61");
            java.lang.String mdp_6idTemp = null;
        if(!mdp_6id.equals("")){
         mdp_6idTemp  = mdp_6id;
        }
        boolean connecUsers56mtemp = sampleUtilisateurProxyid.connecUsers(pseudo_5idTemp,mdp_6idTemp);
        String tempResultreturnp57 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(connecUsers56mtemp));
        %>
        <%= tempResultreturnp57 %>
        <%
break;
case 63:
        gotMethod = true;
        String mdp_7id=  request.getParameter("mdp66");
            java.lang.String mdp_7idTemp = null;
        if(!mdp_7id.equals("")){
         mdp_7idTemp  = mdp_7id;
        }
        String nom_8id=  request.getParameter("nom68");
            java.lang.String nom_8idTemp = null;
        if(!nom_8id.equals("")){
         nom_8idTemp  = nom_8id;
        }
        String prenom_9id=  request.getParameter("prenom70");
            java.lang.String prenom_9idTemp = null;
        if(!prenom_9id.equals("")){
         prenom_9idTemp  = prenom_9id;
        }
        String pseudo_10id=  request.getParameter("pseudo72");
            java.lang.String pseudo_10idTemp = null;
        if(!pseudo_10id.equals("")){
         pseudo_10idTemp  = pseudo_10id;
        }
        boolean addUtilisateurs63mtemp = sampleUtilisateurProxyid.addUtilisateurs(mdp_7idTemp,nom_8idTemp,prenom_9idTemp,pseudo_10idTemp);
        String tempResultreturnp64 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addUtilisateurs63mtemp));
        %>
        <%= tempResultreturnp64 %>
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