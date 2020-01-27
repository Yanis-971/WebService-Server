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
<TD COLSPAN="2" ALIGN="LEFT">pseudo:</TD>
<TD>
<%
if(getUtilisateur10mtemp != null){
java.lang.String typepseudo17 = getUtilisateur10mtemp.getPseudo();
        String tempResultpseudo17 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepseudo17));
        %>
        <%= tempResultpseudo17 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">prenom:</TD>
<TD>
<%
if(getUtilisateur10mtemp != null){
java.lang.String typeprenom19 = getUtilisateur10mtemp.getPrenom();
        String tempResultprenom19 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeprenom19));
        %>
        <%= tempResultprenom19 %>
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
case 23:
        gotMethod = true;
        String id_1id=  request.getParameter("id26");
        int id_1idTemp  = Integer.parseInt(id_1id);
        sampleUtilisateurProxyid.setId(id_1idTemp);
break;
case 28:
        gotMethod = true;
        sampleUtilisateurProxyid.voirUser();
break;
case 31:
        gotMethod = true;
        java.lang.String getNom31mtemp = sampleUtilisateurProxyid.getNom();
if(getNom31mtemp == null){
%>
<%=getNom31mtemp %>
<%
}else{
        String tempResultreturnp32 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getNom31mtemp));
        %>
        <%= tempResultreturnp32 %>
        <%
}
break;
case 34:
        gotMethod = true;
        String prenom_2id=  request.getParameter("prenom37");
            java.lang.String prenom_2idTemp = null;
        if(!prenom_2id.equals("")){
         prenom_2idTemp  = prenom_2id;
        }
        sampleUtilisateurProxyid.setPrenom(prenom_2idTemp);
break;
case 39:
        gotMethod = true;
        String nom_3id=  request.getParameter("nom42");
            java.lang.String nom_3idTemp = null;
        if(!nom_3id.equals("")){
         nom_3idTemp  = nom_3id;
        }
        sampleUtilisateurProxyid.setNom(nom_3idTemp);
break;
case 44:
        gotMethod = true;
        java.lang.String getPrenom44mtemp = sampleUtilisateurProxyid.getPrenom();
if(getPrenom44mtemp == null){
%>
<%=getPrenom44mtemp %>
<%
}else{
        String tempResultreturnp45 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getPrenom44mtemp));
        %>
        <%= tempResultreturnp45 %>
        <%
}
break;
case 47:
        gotMethod = true;
        String idFriends_4id=  request.getParameter("idFriends50");
        int idFriends_4idTemp  = Integer.parseInt(idFriends_4id);
        boolean verifriends47mtemp = sampleUtilisateurProxyid.verifriends(idFriends_4idTemp);
        String tempResultreturnp48 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(verifriends47mtemp));
        %>
        <%= tempResultreturnp48 %>
        <%
break;
case 52:
        gotMethod = true;
        String idfriend_5id=  request.getParameter("idfriend55");
        int idfriend_5idTemp  = Integer.parseInt(idfriend_5id);
        boolean liaisonFriends52mtemp = sampleUtilisateurProxyid.liaisonFriends(idfriend_5idTemp);
        String tempResultreturnp53 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(liaisonFriends52mtemp));
        %>
        <%= tempResultreturnp53 %>
        <%
break;
case 57:
        gotMethod = true;
        String mdp_6id=  request.getParameter("mdp60");
            java.lang.String mdp_6idTemp = null;
        if(!mdp_6id.equals("")){
         mdp_6idTemp  = mdp_6id;
        }
        String nom_7id=  request.getParameter("nom62");
            java.lang.String nom_7idTemp = null;
        if(!nom_7id.equals("")){
         nom_7idTemp  = nom_7id;
        }
        String prenom_8id=  request.getParameter("prenom64");
            java.lang.String prenom_8idTemp = null;
        if(!prenom_8id.equals("")){
         prenom_8idTemp  = prenom_8id;
        }
        String pseudo_9id=  request.getParameter("pseudo66");
            java.lang.String pseudo_9idTemp = null;
        if(!pseudo_9id.equals("")){
         pseudo_9idTemp  = pseudo_9id;
        }
        boolean addUtilisateurs57mtemp = sampleUtilisateurProxyid.addUtilisateurs(mdp_6idTemp,nom_7idTemp,prenom_8idTemp,pseudo_9idTemp);
        String tempResultreturnp58 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addUtilisateurs57mtemp));
        %>
        <%= tempResultreturnp58 %>
        <%
break;
case 68:
        gotMethod = true;
        String pseudo_10id=  request.getParameter("pseudo71");
            java.lang.String pseudo_10idTemp = null;
        if(!pseudo_10id.equals("")){
         pseudo_10idTemp  = pseudo_10id;
        }
        boolean addFriend68mtemp = sampleUtilisateurProxyid.addFriend(pseudo_10idTemp);
        String tempResultreturnp69 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addFriend68mtemp));
        %>
        <%= tempResultreturnp69 %>
        <%
break;
case 73:
        gotMethod = true;
        String message_11id=  request.getParameter("message76");
            java.lang.String message_11idTemp = null;
        if(!message_11id.equals("")){
         message_11idTemp  = message_11id;
        }
        String idfriends_12id=  request.getParameter("idfriends78");
        int idfriends_12idTemp  = Integer.parseInt(idfriends_12id);
        boolean sendmessage73mtemp = sampleUtilisateurProxyid.sendmessage(message_11idTemp,idfriends_12idTemp);
        String tempResultreturnp74 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(sendmessage73mtemp));
        %>
        <%= tempResultreturnp74 %>
        <%
break;
case 80:
        gotMethod = true;
        String pseudo_13id=  request.getParameter("pseudo83");
            java.lang.String pseudo_13idTemp = null;
        if(!pseudo_13id.equals("")){
         pseudo_13idTemp  = pseudo_13id;
        }
        String mdp_14id=  request.getParameter("mdp85");
            java.lang.String mdp_14idTemp = null;
        if(!mdp_14id.equals("")){
         mdp_14idTemp  = mdp_14id;
        }
        boolean connecUsers80mtemp = sampleUtilisateurProxyid.connecUsers(pseudo_13idTemp,mdp_14idTemp);
        String tempResultreturnp81 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(connecUsers80mtemp));
        %>
        <%= tempResultreturnp81 %>
        <%
break;
case 87:
        gotMethod = true;
        String idFriends_15id=  request.getParameter("idFriends90");
        int idFriends_15idTemp  = Integer.parseInt(idFriends_15id);
        model.Message[] liremessage87mtemp = sampleUtilisateurProxyid.liremessage(idFriends_15idTemp);
if(liremessage87mtemp == null){
%>
<%=liremessage87mtemp %>
<%
}else{
        String tempreturnp88 = null;
        if(liremessage87mtemp != null){
        java.util.List listreturnp88= java.util.Arrays.asList(liremessage87mtemp);
        tempreturnp88 = listreturnp88.toString();
        }
        %>
        <%=tempreturnp88%>
        <%
}
break;
case 92:
        gotMethod = true;
        String pseudo_16id=  request.getParameter("pseudo95");
            java.lang.String pseudo_16idTemp = null;
        if(!pseudo_16id.equals("")){
         pseudo_16idTemp  = pseudo_16id;
        }
        sampleUtilisateurProxyid.setPseudo(pseudo_16idTemp);
break;
case 97:
        gotMethod = true;
        java.lang.String getPseudo97mtemp = sampleUtilisateurProxyid.getPseudo();
if(getPseudo97mtemp == null){
%>
<%=getPseudo97mtemp %>
<%
}else{
        String tempResultreturnp98 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getPseudo97mtemp));
        %>
        <%= tempResultreturnp98 %>
        <%
}
break;
case 100:
        gotMethod = true;
        model.Friend[] getFriendList100mtemp = sampleUtilisateurProxyid.getFriendList();
if(getFriendList100mtemp == null){
%>
<%=getFriendList100mtemp %>
<%
}else{
        String tempreturnp101 = null;
        if(getFriendList100mtemp != null){
        java.util.List listreturnp101= java.util.Arrays.asList(getFriendList100mtemp);
        tempreturnp101 = listreturnp101.toString();
        }
        %>
        <%=tempreturnp101%>
        <%
}
break;
case 103:
        gotMethod = true;
        int getId103mtemp = sampleUtilisateurProxyid.getId();
        String tempResultreturnp104 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getId103mtemp));
        %>
        <%= tempResultreturnp104 %>
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