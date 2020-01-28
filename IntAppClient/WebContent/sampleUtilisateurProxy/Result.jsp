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
java.lang.String typenom15 = getUtilisateur10mtemp.getNom();
        String tempResultnom15 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typenom15));
        %>
        <%= tempResultnom15 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">mdp:</TD>
<TD>
<%
if(getUtilisateur10mtemp != null){
java.lang.String typemdp17 = getUtilisateur10mtemp.getMdp();
        String tempResultmdp17 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemdp17));
        %>
        <%= tempResultmdp17 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">pseudo:</TD>
<TD>
<%
if(getUtilisateur10mtemp != null){
java.lang.String typepseudo19 = getUtilisateur10mtemp.getPseudo();
        String tempResultpseudo19 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepseudo19));
        %>
        <%= tempResultpseudo19 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">prenom:</TD>
<TD>
<%
if(getUtilisateur10mtemp != null){
java.lang.String typeprenom21 = getUtilisateur10mtemp.getPrenom();
        String tempResultprenom21 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeprenom21));
        %>
        <%= tempResultprenom21 %>
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
case 25:
        gotMethod = true;
        String id_1id=  request.getParameter("id28");
        int id_1idTemp  = Integer.parseInt(id_1id);
        sampleUtilisateurProxyid.setId(id_1idTemp);
break;
case 30:
        gotMethod = true;
        String prenom_2id=  request.getParameter("prenom33");
            java.lang.String prenom_2idTemp = null;
        if(!prenom_2id.equals("")){
         prenom_2idTemp  = prenom_2id;
        }
        sampleUtilisateurProxyid.setPrenom(prenom_2idTemp);
break;
case 35:
        gotMethod = true;
        java.lang.String getMdp35mtemp = sampleUtilisateurProxyid.getMdp();
if(getMdp35mtemp == null){
%>
<%=getMdp35mtemp %>
<%
}else{
        String tempResultreturnp36 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getMdp35mtemp));
        %>
        <%= tempResultreturnp36 %>
        <%
}
break;
case 38:
        gotMethod = true;
        String mdp_3id=  request.getParameter("mdp41");
            java.lang.String mdp_3idTemp = null;
        if(!mdp_3id.equals("")){
         mdp_3idTemp  = mdp_3id;
        }
        sampleUtilisateurProxyid.setMdp(mdp_3idTemp);
break;
case 43:
        gotMethod = true;
        sampleUtilisateurProxyid.voirUser();
break;
case 46:
        gotMethod = true;
        String pseudo_4id=  request.getParameter("pseudo49");
            java.lang.String pseudo_4idTemp = null;
        if(!pseudo_4id.equals("")){
         pseudo_4idTemp  = pseudo_4id;
        }
        String mdp_5id=  request.getParameter("mdp51");
            java.lang.String mdp_5idTemp = null;
        if(!mdp_5id.equals("")){
         mdp_5idTemp  = mdp_5id;
        }
        boolean connecUsers46mtemp = sampleUtilisateurProxyid.connecUsers(pseudo_4idTemp,mdp_5idTemp);
        String tempResultreturnp47 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(connecUsers46mtemp));
        %>
        <%= tempResultreturnp47 %>
        <%
break;
case 53:
        gotMethod = true;
        String mdp_6id=  request.getParameter("mdp56");
            java.lang.String mdp_6idTemp = null;
        if(!mdp_6id.equals("")){
         mdp_6idTemp  = mdp_6id;
        }
        String nom_7id=  request.getParameter("nom58");
            java.lang.String nom_7idTemp = null;
        if(!nom_7id.equals("")){
         nom_7idTemp  = nom_7id;
        }
        String prenom_8id=  request.getParameter("prenom60");
            java.lang.String prenom_8idTemp = null;
        if(!prenom_8id.equals("")){
         prenom_8idTemp  = prenom_8id;
        }
        String pseudo_9id=  request.getParameter("pseudo62");
            java.lang.String pseudo_9idTemp = null;
        if(!pseudo_9id.equals("")){
         pseudo_9idTemp  = pseudo_9id;
        }
        boolean addUtilisateurs53mtemp = sampleUtilisateurProxyid.addUtilisateurs(mdp_6idTemp,nom_7idTemp,prenom_8idTemp,pseudo_9idTemp);
        String tempResultreturnp54 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addUtilisateurs53mtemp));
        %>
        <%= tempResultreturnp54 %>
        <%
break;
case 64:
        gotMethod = true;
        String idfriend_10id=  request.getParameter("idfriend67");
        int idfriend_10idTemp  = Integer.parseInt(idfriend_10id);
        boolean liaisonFriends64mtemp = sampleUtilisateurProxyid.liaisonFriends(idfriend_10idTemp);
        String tempResultreturnp65 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(liaisonFriends64mtemp));
        %>
        <%= tempResultreturnp65 %>
        <%
break;
case 69:
        gotMethod = true;
        String idFriends_11id=  request.getParameter("idFriends72");
        int idFriends_11idTemp  = Integer.parseInt(idFriends_11id);
        boolean verifriends69mtemp = sampleUtilisateurProxyid.verifriends(idFriends_11idTemp);
        String tempResultreturnp70 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(verifriends69mtemp));
        %>
        <%= tempResultreturnp70 %>
        <%
break;
case 74:
        gotMethod = true;
        String pseudo_12id=  request.getParameter("pseudo77");
            java.lang.String pseudo_12idTemp = null;
        if(!pseudo_12id.equals("")){
         pseudo_12idTemp  = pseudo_12id;
        }
        boolean addFriend74mtemp = sampleUtilisateurProxyid.addFriend(pseudo_12idTemp);
        String tempResultreturnp75 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addFriend74mtemp));
        %>
        <%= tempResultreturnp75 %>
        <%
break;
case 79:
        gotMethod = true;
        String message_13id=  request.getParameter("message82");
            java.lang.String message_13idTemp = null;
        if(!message_13id.equals("")){
         message_13idTemp  = message_13id;
        }
        String idfriends_14id=  request.getParameter("idfriends84");
        int idfriends_14idTemp  = Integer.parseInt(idfriends_14id);
        boolean sendmessage79mtemp = sampleUtilisateurProxyid.sendmessage(message_13idTemp,idfriends_14idTemp);
        String tempResultreturnp80 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(sendmessage79mtemp));
        %>
        <%= tempResultreturnp80 %>
        <%
break;
case 86:
        gotMethod = true;
        String idFriends_15id=  request.getParameter("idFriends89");
        int idFriends_15idTemp  = Integer.parseInt(idFriends_15id);
        model.Message[] liremessage86mtemp = sampleUtilisateurProxyid.liremessage(idFriends_15idTemp);
if(liremessage86mtemp == null){
%>
<%=liremessage86mtemp %>
<%
}else{
        String tempreturnp87 = null;
        if(liremessage86mtemp != null){
        java.util.List listreturnp87= java.util.Arrays.asList(liremessage86mtemp);
        tempreturnp87 = listreturnp87.toString();
        }
        %>
        <%=tempreturnp87%>
        <%
}
break;
case 91:
        gotMethod = true;
        model.Friend[] getFriendList91mtemp = sampleUtilisateurProxyid.getFriendList();
if(getFriendList91mtemp == null){
%>
<%=getFriendList91mtemp %>
<%
}else{
        String tempreturnp92 = null;
        if(getFriendList91mtemp != null){
        java.util.List listreturnp92= java.util.Arrays.asList(getFriendList91mtemp);
        tempreturnp92 = listreturnp92.toString();
        }
        %>
        <%=tempreturnp92%>
        <%
}
break;
case 94:
        gotMethod = true;
        java.lang.String getPseudo94mtemp = sampleUtilisateurProxyid.getPseudo();
if(getPseudo94mtemp == null){
%>
<%=getPseudo94mtemp %>
<%
}else{
        String tempResultreturnp95 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getPseudo94mtemp));
        %>
        <%= tempResultreturnp95 %>
        <%
}
break;
case 97:
        gotMethod = true;
        String nom_16id=  request.getParameter("nom100");
            java.lang.String nom_16idTemp = null;
        if(!nom_16id.equals("")){
         nom_16idTemp  = nom_16id;
        }
        sampleUtilisateurProxyid.setNom(nom_16idTemp);
break;
case 102:
        gotMethod = true;
        String pseudo_17id=  request.getParameter("pseudo105");
            java.lang.String pseudo_17idTemp = null;
        if(!pseudo_17id.equals("")){
         pseudo_17idTemp  = pseudo_17id;
        }
        sampleUtilisateurProxyid.setPseudo(pseudo_17idTemp);
break;
case 107:
        gotMethod = true;
        java.lang.String getNom107mtemp = sampleUtilisateurProxyid.getNom();
if(getNom107mtemp == null){
%>
<%=getNom107mtemp %>
<%
}else{
        String tempResultreturnp108 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getNom107mtemp));
        %>
        <%= tempResultreturnp108 %>
        <%
}
break;
case 110:
        gotMethod = true;
        java.lang.String getPrenom110mtemp = sampleUtilisateurProxyid.getPrenom();
if(getPrenom110mtemp == null){
%>
<%=getPrenom110mtemp %>
<%
}else{
        String tempResultreturnp111 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getPrenom110mtemp));
        %>
        <%= tempResultreturnp111 %>
        <%
}
break;
case 113:
        gotMethod = true;
        int getId113mtemp = sampleUtilisateurProxyid.getId();
        String tempResultreturnp114 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getId113mtemp));
        %>
        <%= tempResultreturnp114 %>
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