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
        int getId23mtemp = sampleUtilisateurProxyid.getId();
        String tempResultreturnp24 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getId23mtemp));
        %>
        <%= tempResultreturnp24 %>
        <%
break;
case 26:
        gotMethod = true;
        String id_1id=  request.getParameter("id29");
        int id_1idTemp  = Integer.parseInt(id_1id);
        sampleUtilisateurProxyid.setId(id_1idTemp);
break;
case 31:
        gotMethod = true;
        String mdp_2id=  request.getParameter("mdp34");
            java.lang.String mdp_2idTemp = null;
        if(!mdp_2id.equals("")){
         mdp_2idTemp  = mdp_2id;
        }
        String nom_3id=  request.getParameter("nom36");
            java.lang.String nom_3idTemp = null;
        if(!nom_3id.equals("")){
         nom_3idTemp  = nom_3id;
        }
        String prenom_4id=  request.getParameter("prenom38");
            java.lang.String prenom_4idTemp = null;
        if(!prenom_4id.equals("")){
         prenom_4idTemp  = prenom_4id;
        }
        String pseudo_5id=  request.getParameter("pseudo40");
            java.lang.String pseudo_5idTemp = null;
        if(!pseudo_5id.equals("")){
         pseudo_5idTemp  = pseudo_5id;
        }
        boolean addUtilisateurs31mtemp = sampleUtilisateurProxyid.addUtilisateurs(mdp_2idTemp,nom_3idTemp,prenom_4idTemp,pseudo_5idTemp);
        String tempResultreturnp32 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addUtilisateurs31mtemp));
        %>
        <%= tempResultreturnp32 %>
        <%
break;
case 42:
        gotMethod = true;
        String message_6id=  request.getParameter("message45");
            java.lang.String message_6idTemp = null;
        if(!message_6id.equals("")){
         message_6idTemp  = message_6id;
        }
        String idfriends_7id=  request.getParameter("idfriends47");
        int idfriends_7idTemp  = Integer.parseInt(idfriends_7id);
        boolean sendmessage42mtemp = sampleUtilisateurProxyid.sendmessage(message_6idTemp,idfriends_7idTemp);
        String tempResultreturnp43 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(sendmessage42mtemp));
        %>
        <%= tempResultreturnp43 %>
        <%
break;
case 49:
        gotMethod = true;
        String pseudo_8id=  request.getParameter("pseudo52");
            java.lang.String pseudo_8idTemp = null;
        if(!pseudo_8id.equals("")){
         pseudo_8idTemp  = pseudo_8id;
        }
        boolean addFriend49mtemp = sampleUtilisateurProxyid.addFriend(pseudo_8idTemp);
        String tempResultreturnp50 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addFriend49mtemp));
        %>
        <%= tempResultreturnp50 %>
        <%
break;
case 54:
        gotMethod = true;
        String idfriend_9id=  request.getParameter("idfriend57");
        int idfriend_9idTemp  = Integer.parseInt(idfriend_9id);
        boolean liaisonFriends54mtemp = sampleUtilisateurProxyid.liaisonFriends(idfriend_9idTemp);
        String tempResultreturnp55 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(liaisonFriends54mtemp));
        %>
        <%= tempResultreturnp55 %>
        <%
break;
case 59:
        gotMethod = true;
        String pseudo_10id=  request.getParameter("pseudo62");
            java.lang.String pseudo_10idTemp = null;
        if(!pseudo_10id.equals("")){
         pseudo_10idTemp  = pseudo_10id;
        }
        String mdp_11id=  request.getParameter("mdp64");
            java.lang.String mdp_11idTemp = null;
        if(!mdp_11id.equals("")){
         mdp_11idTemp  = mdp_11id;
        }
        boolean connecUsers59mtemp = sampleUtilisateurProxyid.connecUsers(pseudo_10idTemp,mdp_11idTemp);
        String tempResultreturnp60 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(connecUsers59mtemp));
        %>
        <%= tempResultreturnp60 %>
        <%
break;
case 66:
        gotMethod = true;
        String idFriends_12id=  request.getParameter("idFriends69");
        int idFriends_12idTemp  = Integer.parseInt(idFriends_12id);
        boolean verifriends66mtemp = sampleUtilisateurProxyid.verifriends(idFriends_12idTemp);
        String tempResultreturnp67 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(verifriends66mtemp));
        %>
        <%= tempResultreturnp67 %>
        <%
break;
case 71:
        gotMethod = true;
        String pseudo_13id=  request.getParameter("pseudo74");
            java.lang.String pseudo_13idTemp = null;
        if(!pseudo_13id.equals("")){
         pseudo_13idTemp  = pseudo_13id;
        }
        sampleUtilisateurProxyid.setPseudo(pseudo_13idTemp);
break;
case 76:
        gotMethod = true;
        java.lang.String getPseudo76mtemp = sampleUtilisateurProxyid.getPseudo();
if(getPseudo76mtemp == null){
%>
<%=getPseudo76mtemp %>
<%
}else{
        String tempResultreturnp77 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getPseudo76mtemp));
        %>
        <%= tempResultreturnp77 %>
        <%
}
break;
case 79:
        gotMethod = true;
        String nom_14id=  request.getParameter("nom82");
            java.lang.String nom_14idTemp = null;
        if(!nom_14id.equals("")){
         nom_14idTemp  = nom_14id;
        }
        sampleUtilisateurProxyid.setNom(nom_14idTemp);
break;
case 84:
        gotMethod = true;
        java.lang.String getNom84mtemp = sampleUtilisateurProxyid.getNom();
if(getNom84mtemp == null){
%>
<%=getNom84mtemp %>
<%
}else{
        String tempResultreturnp85 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getNom84mtemp));
        %>
        <%= tempResultreturnp85 %>
        <%
}
break;
case 87:
        gotMethod = true;
        java.lang.String getPrenom87mtemp = sampleUtilisateurProxyid.getPrenom();
if(getPrenom87mtemp == null){
%>
<%=getPrenom87mtemp %>
<%
}else{
        String tempResultreturnp88 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getPrenom87mtemp));
        %>
        <%= tempResultreturnp88 %>
        <%
}
break;
case 90:
        gotMethod = true;
        sampleUtilisateurProxyid.voirUser();
break;
case 93:
        gotMethod = true;
        String prenom_15id=  request.getParameter("prenom96");
            java.lang.String prenom_15idTemp = null;
        if(!prenom_15id.equals("")){
         prenom_15idTemp  = prenom_15id;
        }
        sampleUtilisateurProxyid.setPrenom(prenom_15idTemp);
break;
case 98:
        gotMethod = true;
        String pseudo_16id=  request.getParameter("pseudo101");
            java.lang.String pseudo_16idTemp = null;
        if(!pseudo_16id.equals("")){
         pseudo_16idTemp  = pseudo_16id;
        }
        int idBypseudo98mtemp = sampleUtilisateurProxyid.idBypseudo(pseudo_16idTemp);
        String tempResultreturnp99 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(idBypseudo98mtemp));
        %>
        <%= tempResultreturnp99 %>
        <%
break;
case 103:
        gotMethod = true;
        String pseudo_17id=  request.getParameter("pseudo106");
            java.lang.String pseudo_17idTemp = null;
        if(!pseudo_17id.equals("")){
         pseudo_17idTemp  = pseudo_17id;
        }
        String idgroup_18id=  request.getParameter("idgroup108");
        int idgroup_18idTemp  = Integer.parseInt(idgroup_18id);
        boolean addUserToGroup103mtemp = sampleUtilisateurProxyid.addUserToGroup(pseudo_17idTemp,idgroup_18idTemp);
        String tempResultreturnp104 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addUserToGroup103mtemp));
        %>
        <%= tempResultreturnp104 %>
        <%
break;
case 110:
        gotMethod = true;
        String idFriends_19id=  request.getParameter("idFriends113");
        int idFriends_19idTemp  = Integer.parseInt(idFriends_19id);
        model.Message[] liremessage110mtemp = sampleUtilisateurProxyid.liremessage(idFriends_19idTemp);
if(liremessage110mtemp == null){
%>
<%=liremessage110mtemp %>
<%
}else{
        String tempreturnp111 = null;
        if(liremessage110mtemp != null){
        java.util.List listreturnp111= java.util.Arrays.asList(liremessage110mtemp);
        tempreturnp111 = listreturnp111.toString();
        }
        %>
        <%=tempreturnp111%>
        <%
}
break;
case 115:
        gotMethod = true;
        model.Friend[] getFriendList115mtemp = sampleUtilisateurProxyid.getFriendList();
if(getFriendList115mtemp == null){
%>
<%=getFriendList115mtemp %>
<%
}else{
        String tempreturnp116 = null;
        if(getFriendList115mtemp != null){
        java.util.List listreturnp116= java.util.Arrays.asList(getFriendList115mtemp);
        tempreturnp116 = listreturnp116.toString();
        }
        %>
        <%=tempreturnp116%>
        <%
}
break;
case 118:
        gotMethod = true;
        String name_20id=  request.getParameter("name121");
            java.lang.String name_20idTemp = null;
        if(!name_20id.equals("")){
         name_20idTemp  = name_20id;
        }
        int getIdGroupByName118mtemp = sampleUtilisateurProxyid.getIdGroupByName(name_20idTemp);
        String tempResultreturnp119 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getIdGroupByName118mtemp));
        %>
        <%= tempResultreturnp119 %>
        <%
break;
case 123:
        gotMethod = true;
        String groupname_21id=  request.getParameter("groupname126");
            java.lang.String groupname_21idTemp = null;
        if(!groupname_21id.equals("")){
         groupname_21idTemp  = groupname_21id;
        }
        boolean addAdmin123mtemp = sampleUtilisateurProxyid.addAdmin(groupname_21idTemp);
        String tempResultreturnp124 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addAdmin123mtemp));
        %>
        <%= tempResultreturnp124 %>
        <%
break;
case 128:
        gotMethod = true;
        String groupname_22id=  request.getParameter("groupname131");
            java.lang.String groupname_22idTemp = null;
        if(!groupname_22id.equals("")){
         groupname_22idTemp  = groupname_22id;
        }
        String description_23id=  request.getParameter("description133");
            java.lang.String description_23idTemp = null;
        if(!description_23id.equals("")){
         description_23idTemp  = description_23id;
        }
        boolean addgroup128mtemp = sampleUtilisateurProxyid.addgroup(groupname_22idTemp,description_23idTemp);
        String tempResultreturnp129 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addgroup128mtemp));
        %>
        <%= tempResultreturnp129 %>
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