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
        java.lang.String getPrenom32mtemp = sampleUtilisateurProxyid.getPrenom();
if(getPrenom32mtemp == null){
%>
<%=getPrenom32mtemp %>
<%
}else{
        String tempResultreturnp33 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getPrenom32mtemp));
        %>
        <%= tempResultreturnp33 %>
        <%
}
break;
case 35:
        gotMethod = true;
        String nom_2id=  request.getParameter("nom38");
            java.lang.String nom_2idTemp = null;
        if(!nom_2id.equals("")){
         nom_2idTemp  = nom_2id;
        }
        sampleUtilisateurProxyid.setNom(nom_2idTemp);
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
        sampleUtilisateurProxyid.voirUser();
break;
case 48:
        gotMethod = true;
        java.lang.String getMail48mtemp = sampleUtilisateurProxyid.getMail();
if(getMail48mtemp == null){
%>
<%=getMail48mtemp %>
<%
}else{
        String tempResultreturnp49 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getMail48mtemp));
        %>
        <%= tempResultreturnp49 %>
        <%
}
break;
case 51:
        gotMethod = true;
        String mail_4id=  request.getParameter("mail54");
            java.lang.String mail_4idTemp = null;
        if(!mail_4id.equals("")){
         mail_4idTemp  = mail_4id;
        }
        sampleUtilisateurProxyid.setMail(mail_4idTemp);
break;
case 56:
        gotMethod = true;
        String mdp_5id=  request.getParameter("mdp59");
            java.lang.String mdp_5idTemp = null;
        if(!mdp_5id.equals("")){
         mdp_5idTemp  = mdp_5id;
        }
        String nom_6id=  request.getParameter("nom61");
            java.lang.String nom_6idTemp = null;
        if(!nom_6id.equals("")){
         nom_6idTemp  = nom_6id;
        }
        String prenom_7id=  request.getParameter("prenom63");
            java.lang.String prenom_7idTemp = null;
        if(!prenom_7id.equals("")){
         prenom_7idTemp  = prenom_7id;
        }
        String pseudo_8id=  request.getParameter("pseudo65");
            java.lang.String pseudo_8idTemp = null;
        if(!pseudo_8id.equals("")){
         pseudo_8idTemp  = pseudo_8id;
        }
        boolean addUtilisateurs56mtemp = sampleUtilisateurProxyid.addUtilisateurs(mdp_5idTemp,nom_6idTemp,prenom_7idTemp,pseudo_8idTemp);
        String tempResultreturnp57 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addUtilisateurs56mtemp));
        %>
        <%= tempResultreturnp57 %>
        <%
break;
case 67:
        gotMethod = true;
        String pseudo_9id=  request.getParameter("pseudo70");
            java.lang.String pseudo_9idTemp = null;
        if(!pseudo_9id.equals("")){
         pseudo_9idTemp  = pseudo_9id;
        }
        String mdp_10id=  request.getParameter("mdp72");
            java.lang.String mdp_10idTemp = null;
        if(!mdp_10id.equals("")){
         mdp_10idTemp  = mdp_10id;
        }
        boolean connecUsers67mtemp = sampleUtilisateurProxyid.connecUsers(pseudo_9idTemp,mdp_10idTemp);
        String tempResultreturnp68 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(connecUsers67mtemp));
        %>
        <%= tempResultreturnp68 %>
        <%
break;
case 74:
        gotMethod = true;
        String pseudo_11id=  request.getParameter("pseudo77");
            java.lang.String pseudo_11idTemp = null;
        if(!pseudo_11id.equals("")){
         pseudo_11idTemp  = pseudo_11id;
        }
        boolean addFriend74mtemp = sampleUtilisateurProxyid.addFriend(pseudo_11idTemp);
        String tempResultreturnp75 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addFriend74mtemp));
        %>
        <%= tempResultreturnp75 %>
        <%
break;
case 79:
        gotMethod = true;
        String idfriend_12id=  request.getParameter("idfriend82");
        int idfriend_12idTemp  = Integer.parseInt(idfriend_12id);
        boolean liaisonFriends79mtemp = sampleUtilisateurProxyid.liaisonFriends(idfriend_12idTemp);
        String tempResultreturnp80 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(liaisonFriends79mtemp));
        %>
        <%= tempResultreturnp80 %>
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