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
<TD COLSPAN="2" ALIGN="LEFT">mdp:</TD>
<TD>
<%
if(getUtilisateur10mtemp != null){
java.lang.String typemdp15 = getUtilisateur10mtemp.getMdp();
        String tempResultmdp15 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemdp15));
        %>
        <%= tempResultmdp15 %>
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
        java.lang.String getPseudo28mtemp = sampleUtilisateurProxyid.getPseudo();
if(getPseudo28mtemp == null){
%>
<%=getPseudo28mtemp %>
<%
}else{
        String tempResultreturnp29 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getPseudo28mtemp));
        %>
        <%= tempResultreturnp29 %>
        <%
}
break;
case 31:
        gotMethod = true;
        String pseudo_2id=  request.getParameter("pseudo34");
            java.lang.String pseudo_2idTemp = null;
        if(!pseudo_2id.equals("")){
         pseudo_2idTemp  = pseudo_2id;
        }
        sampleUtilisateurProxyid.setPseudo(pseudo_2idTemp);
break;
case 36:
        gotMethod = true;
        java.lang.String getNom36mtemp = sampleUtilisateurProxyid.getNom();
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
        String nom_3id=  request.getParameter("nom42");
            java.lang.String nom_3idTemp = null;
        if(!nom_3id.equals("")){
         nom_3idTemp  = nom_3id;
        }
        sampleUtilisateurProxyid.setNom(nom_3idTemp);
break;
case 44:
        gotMethod = true;
        sampleUtilisateurProxyid.voirUser();
break;
case 47:
        gotMethod = true;
        java.lang.String getMdp47mtemp = sampleUtilisateurProxyid.getMdp();
if(getMdp47mtemp == null){
%>
<%=getMdp47mtemp %>
<%
}else{
        String tempResultreturnp48 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getMdp47mtemp));
        %>
        <%= tempResultreturnp48 %>
        <%
}
break;
case 50:
        gotMethod = true;
        String prenom_4id=  request.getParameter("prenom53");
            java.lang.String prenom_4idTemp = null;
        if(!prenom_4id.equals("")){
         prenom_4idTemp  = prenom_4id;
        }
        sampleUtilisateurProxyid.setPrenom(prenom_4idTemp);
break;
case 55:
        gotMethod = true;
        java.lang.String getPrenom55mtemp = sampleUtilisateurProxyid.getPrenom();
if(getPrenom55mtemp == null){
%>
<%=getPrenom55mtemp %>
<%
}else{
        String tempResultreturnp56 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getPrenom55mtemp));
        %>
        <%= tempResultreturnp56 %>
        <%
}
break;
case 58:
        gotMethod = true;
        String pseudo_5id=  request.getParameter("pseudo61");
            java.lang.String pseudo_5idTemp = null;
        if(!pseudo_5id.equals("")){
         pseudo_5idTemp  = pseudo_5id;
        }
        String mdp_6id=  request.getParameter("mdp63");
            java.lang.String mdp_6idTemp = null;
        if(!mdp_6id.equals("")){
         mdp_6idTemp  = mdp_6id;
        }
        boolean connecUsers58mtemp = sampleUtilisateurProxyid.connecUsers(pseudo_5idTemp,mdp_6idTemp);
        String tempResultreturnp59 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(connecUsers58mtemp));
        %>
        <%= tempResultreturnp59 %>
        <%
break;
case 65:
        gotMethod = true;
        String mdp_7id=  request.getParameter("mdp68");
            java.lang.String mdp_7idTemp = null;
        if(!mdp_7id.equals("")){
         mdp_7idTemp  = mdp_7id;
        }
        sampleUtilisateurProxyid.setMdp(mdp_7idTemp);
break;
case 70:
        gotMethod = true;
        String idu_8id=  request.getParameter("idu73");
        int idu_8idTemp  = Integer.parseInt(idu_8id);
        String idfriend_9id=  request.getParameter("idfriend75");
        int idfriend_9idTemp  = Integer.parseInt(idfriend_9id);
        boolean liaisonFriends70mtemp = sampleUtilisateurProxyid.liaisonFriends(idu_8idTemp,idfriend_9idTemp);
        String tempResultreturnp71 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(liaisonFriends70mtemp));
        %>
        <%= tempResultreturnp71 %>
        <%
break;
case 77:
        gotMethod = true;
        String mdp_10id=  request.getParameter("mdp80");
            java.lang.String mdp_10idTemp = null;
        if(!mdp_10id.equals("")){
         mdp_10idTemp  = mdp_10id;
        }
        String nom_11id=  request.getParameter("nom82");
            java.lang.String nom_11idTemp = null;
        if(!nom_11id.equals("")){
         nom_11idTemp  = nom_11id;
        }
        String prenom_12id=  request.getParameter("prenom84");
            java.lang.String prenom_12idTemp = null;
        if(!prenom_12id.equals("")){
         prenom_12idTemp  = prenom_12id;
        }
        String pseudo_13id=  request.getParameter("pseudo86");
            java.lang.String pseudo_13idTemp = null;
        if(!pseudo_13id.equals("")){
         pseudo_13idTemp  = pseudo_13id;
        }
        boolean addUtilisateurs77mtemp = sampleUtilisateurProxyid.addUtilisateurs(mdp_10idTemp,nom_11idTemp,prenom_12idTemp,pseudo_13idTemp);
        String tempResultreturnp78 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addUtilisateurs77mtemp));
        %>
        <%= tempResultreturnp78 %>
        <%
break;
case 88:
        gotMethod = true;
        String idu_14id=  request.getParameter("idu91");
        int idu_14idTemp  = Integer.parseInt(idu_14id);
        String idFriends_15id=  request.getParameter("idFriends93");
        int idFriends_15idTemp  = Integer.parseInt(idFriends_15id);
        boolean verifriends88mtemp = sampleUtilisateurProxyid.verifriends(idu_14idTemp,idFriends_15idTemp);
        String tempResultreturnp89 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(verifriends88mtemp));
        %>
        <%= tempResultreturnp89 %>
        <%
break;
case 95:
        gotMethod = true;
        String idu_16id=  request.getParameter("idu98");
        int idu_16idTemp  = Integer.parseInt(idu_16id);
        String idFriends_17id=  request.getParameter("idFriends100");
        int idFriends_17idTemp  = Integer.parseInt(idFriends_17id);
        java.lang.String[] liremessage95mtemp = sampleUtilisateurProxyid.liremessage(idu_16idTemp,idFriends_17idTemp);
if(liremessage95mtemp == null){
%>
<%=liremessage95mtemp %>
<%
}else{
        String tempreturnp96 = null;
        if(liremessage95mtemp != null){
        java.util.List listreturnp96= java.util.Arrays.asList(liremessage95mtemp);
        tempreturnp96 = listreturnp96.toString();
        }
        %>
        <%=tempreturnp96%>
        <%
}
break;
case 102:
        gotMethod = true;
        String idu_18id=  request.getParameter("idu105");
        int idu_18idTemp  = Integer.parseInt(idu_18id);
        String pseudo_19id=  request.getParameter("pseudo107");
            java.lang.String pseudo_19idTemp = null;
        if(!pseudo_19id.equals("")){
         pseudo_19idTemp  = pseudo_19id;
        }
        boolean addFriend102mtemp = sampleUtilisateurProxyid.addFriend(idu_18idTemp,pseudo_19idTemp);
        String tempResultreturnp103 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addFriend102mtemp));
        %>
        <%= tempResultreturnp103 %>
        <%
break;
case 109:
        gotMethod = true;
        String idu_20id=  request.getParameter("idu112");
        int idu_20idTemp  = Integer.parseInt(idu_20id);
        String message_21id=  request.getParameter("message114");
            java.lang.String message_21idTemp = null;
        if(!message_21id.equals("")){
         message_21idTemp  = message_21id;
        }
        String idfriends_22id=  request.getParameter("idfriends116");
        int idfriends_22idTemp  = Integer.parseInt(idfriends_22id);
        boolean sendmessage109mtemp = sampleUtilisateurProxyid.sendmessage(idu_20idTemp,message_21idTemp,idfriends_22idTemp);
        String tempResultreturnp110 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(sendmessage109mtemp));
        %>
        <%= tempResultreturnp110 %>
        <%
break;
case 118:
        gotMethod = true;
        String name_23id=  request.getParameter("name121");
            java.lang.String name_23idTemp = null;
        if(!name_23id.equals("")){
         name_23idTemp  = name_23id;
        }
        int getIdGroupByName118mtemp = sampleUtilisateurProxyid.getIdGroupByName(name_23idTemp);
        String tempResultreturnp119 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getIdGroupByName118mtemp));
        %>
        <%= tempResultreturnp119 %>
        <%
break;
case 123:
        gotMethod = true;
        String idu_24id=  request.getParameter("idu126");
        int idu_24idTemp  = Integer.parseInt(idu_24id);
        String groupname_25id=  request.getParameter("groupname128");
            java.lang.String groupname_25idTemp = null;
        if(!groupname_25id.equals("")){
         groupname_25idTemp  = groupname_25id;
        }
        boolean addAdmin123mtemp = sampleUtilisateurProxyid.addAdmin(idu_24idTemp,groupname_25idTemp);
        String tempResultreturnp124 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addAdmin123mtemp));
        %>
        <%= tempResultreturnp124 %>
        <%
break;
case 130:
        gotMethod = true;
        String idu_26id=  request.getParameter("idu133");
        int idu_26idTemp  = Integer.parseInt(idu_26id);
        String groupname_27id=  request.getParameter("groupname135");
            java.lang.String groupname_27idTemp = null;
        if(!groupname_27id.equals("")){
         groupname_27idTemp  = groupname_27id;
        }
        String description_28id=  request.getParameter("description137");
            java.lang.String description_28idTemp = null;
        if(!description_28id.equals("")){
         description_28idTemp  = description_28id;
        }
        boolean addgroup130mtemp = sampleUtilisateurProxyid.addgroup(idu_26idTemp,groupname_27idTemp,description_28idTemp);
        String tempResultreturnp131 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addgroup130mtemp));
        %>
        <%= tempResultreturnp131 %>
        <%
break;
case 139:
        gotMethod = true;
        String pseudo_29id=  request.getParameter("pseudo142");
            java.lang.String pseudo_29idTemp = null;
        if(!pseudo_29id.equals("")){
         pseudo_29idTemp  = pseudo_29id;
        }
        int idBypseudo139mtemp = sampleUtilisateurProxyid.idBypseudo(pseudo_29idTemp);
        String tempResultreturnp140 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(idBypseudo139mtemp));
        %>
        <%= tempResultreturnp140 %>
        <%
break;
case 144:
        gotMethod = true;
        String id_30id=  request.getParameter("id147");
        int id_30idTemp  = Integer.parseInt(id_30id);
        java.lang.String pseudoById144mtemp = sampleUtilisateurProxyid.pseudoById(id_30idTemp);
if(pseudoById144mtemp == null){
%>
<%=pseudoById144mtemp %>
<%
}else{
        String tempResultreturnp145 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(pseudoById144mtemp));
        %>
        <%= tempResultreturnp145 %>
        <%
}
break;
case 149:
        gotMethod = true;
        String idu_31id=  request.getParameter("idu152");
        int idu_31idTemp  = Integer.parseInt(idu_31id);
        java.lang.String[] getFriendList149mtemp = sampleUtilisateurProxyid.getFriendList(idu_31idTemp);
if(getFriendList149mtemp == null){
%>
<%=getFriendList149mtemp %>
<%
}else{
        String tempreturnp150 = null;
        if(getFriendList149mtemp != null){
        java.util.List listreturnp150= java.util.Arrays.asList(getFriendList149mtemp);
        tempreturnp150 = listreturnp150.toString();
        }
        %>
        <%=tempreturnp150%>
        <%
}
break;
case 154:
        gotMethod = true;
        String idu_32id=  request.getParameter("idu157");
        int idu_32idTemp  = Integer.parseInt(idu_32id);
        String pseudo_33id=  request.getParameter("pseudo159");
            java.lang.String pseudo_33idTemp = null;
        if(!pseudo_33id.equals("")){
         pseudo_33idTemp  = pseudo_33id;
        }
        String idgroup_34id=  request.getParameter("idgroup161");
        int idgroup_34idTemp  = Integer.parseInt(idgroup_34id);
        boolean addUserToGroup154mtemp = sampleUtilisateurProxyid.addUserToGroup(idu_32idTemp,pseudo_33idTemp,idgroup_34idTemp);
        String tempResultreturnp155 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addUserToGroup154mtemp));
        %>
        <%= tempResultreturnp155 %>
        <%
break;
case 163:
        gotMethod = true;
        int getId163mtemp = sampleUtilisateurProxyid.getId();
        String tempResultreturnp164 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getId163mtemp));
        %>
        <%= tempResultreturnp164 %>
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