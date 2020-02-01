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
        String idu_6id=  request.getParameter("idu45");
        int idu_6idTemp  = Integer.parseInt(idu_6id);
        String message_7id=  request.getParameter("message47");
            java.lang.String message_7idTemp = null;
        if(!message_7id.equals("")){
         message_7idTemp  = message_7id;
        }
        String idfriends_8id=  request.getParameter("idfriends49");
        int idfriends_8idTemp  = Integer.parseInt(idfriends_8id);
        boolean sendmessage42mtemp = sampleUtilisateurProxyid.sendmessage(idu_6idTemp,message_7idTemp,idfriends_8idTemp);
        String tempResultreturnp43 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(sendmessage42mtemp));
        %>
        <%= tempResultreturnp43 %>
        <%
break;
case 51:
        gotMethod = true;
        String idu_9id=  request.getParameter("idu54");
        int idu_9idTemp  = Integer.parseInt(idu_9id);
        String pseudo_10id=  request.getParameter("pseudo56");
            java.lang.String pseudo_10idTemp = null;
        if(!pseudo_10id.equals("")){
         pseudo_10idTemp  = pseudo_10id;
        }
        boolean addFriend51mtemp = sampleUtilisateurProxyid.addFriend(idu_9idTemp,pseudo_10idTemp);
        String tempResultreturnp52 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addFriend51mtemp));
        %>
        <%= tempResultreturnp52 %>
        <%
break;
case 58:
        gotMethod = true;
        String idu_11id=  request.getParameter("idu61");
        int idu_11idTemp  = Integer.parseInt(idu_11id);
        String idfriend_12id=  request.getParameter("idfriend63");
        int idfriend_12idTemp  = Integer.parseInt(idfriend_12id);
        boolean liaisonFriends58mtemp = sampleUtilisateurProxyid.liaisonFriends(idu_11idTemp,idfriend_12idTemp);
        String tempResultreturnp59 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(liaisonFriends58mtemp));
        %>
        <%= tempResultreturnp59 %>
        <%
break;
case 65:
        gotMethod = true;
        String pseudo_13id=  request.getParameter("pseudo68");
            java.lang.String pseudo_13idTemp = null;
        if(!pseudo_13id.equals("")){
         pseudo_13idTemp  = pseudo_13id;
        }
        String mdp_14id=  request.getParameter("mdp70");
            java.lang.String mdp_14idTemp = null;
        if(!mdp_14id.equals("")){
         mdp_14idTemp  = mdp_14id;
        }
        boolean connecUsers65mtemp = sampleUtilisateurProxyid.connecUsers(pseudo_13idTemp,mdp_14idTemp);
        String tempResultreturnp66 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(connecUsers65mtemp));
        %>
        <%= tempResultreturnp66 %>
        <%
break;
case 72:
        gotMethod = true;
        String idu_15id=  request.getParameter("idu75");
        int idu_15idTemp  = Integer.parseInt(idu_15id);
        String idFriends_16id=  request.getParameter("idFriends77");
        int idFriends_16idTemp  = Integer.parseInt(idFriends_16id);
        boolean verifriends72mtemp = sampleUtilisateurProxyid.verifriends(idu_15idTemp,idFriends_16idTemp);
        String tempResultreturnp73 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(verifriends72mtemp));
        %>
        <%= tempResultreturnp73 %>
        <%
break;
case 79:
        gotMethod = true;
        String pseudo_17id=  request.getParameter("pseudo82");
            java.lang.String pseudo_17idTemp = null;
        if(!pseudo_17id.equals("")){
         pseudo_17idTemp  = pseudo_17id;
        }
        sampleUtilisateurProxyid.setPseudo(pseudo_17idTemp);
break;
case 84:
        gotMethod = true;
        java.lang.String getPseudo84mtemp = sampleUtilisateurProxyid.getPseudo();
if(getPseudo84mtemp == null){
%>
<%=getPseudo84mtemp %>
<%
}else{
        String tempResultreturnp85 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getPseudo84mtemp));
        %>
        <%= tempResultreturnp85 %>
        <%
}
break;
case 87:
        gotMethod = true;
        String nom_18id=  request.getParameter("nom90");
            java.lang.String nom_18idTemp = null;
        if(!nom_18id.equals("")){
         nom_18idTemp  = nom_18id;
        }
        sampleUtilisateurProxyid.setNom(nom_18idTemp);
break;
case 92:
        gotMethod = true;
        java.lang.String getNom92mtemp = sampleUtilisateurProxyid.getNom();
if(getNom92mtemp == null){
%>
<%=getNom92mtemp %>
<%
}else{
        String tempResultreturnp93 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getNom92mtemp));
        %>
        <%= tempResultreturnp93 %>
        <%
}
break;
case 95:
        gotMethod = true;
        java.lang.String getPrenom95mtemp = sampleUtilisateurProxyid.getPrenom();
if(getPrenom95mtemp == null){
%>
<%=getPrenom95mtemp %>
<%
}else{
        String tempResultreturnp96 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getPrenom95mtemp));
        %>
        <%= tempResultreturnp96 %>
        <%
}
break;
case 98:
        gotMethod = true;
        sampleUtilisateurProxyid.voirUser();
break;
case 101:
        gotMethod = true;
        String prenom_19id=  request.getParameter("prenom104");
            java.lang.String prenom_19idTemp = null;
        if(!prenom_19id.equals("")){
         prenom_19idTemp  = prenom_19id;
        }
        sampleUtilisateurProxyid.setPrenom(prenom_19idTemp);
break;
case 106:
        gotMethod = true;
        String pseudo_20id=  request.getParameter("pseudo109");
            java.lang.String pseudo_20idTemp = null;
        if(!pseudo_20id.equals("")){
         pseudo_20idTemp  = pseudo_20id;
        }
        int idBypseudo106mtemp = sampleUtilisateurProxyid.idBypseudo(pseudo_20idTemp);
        String tempResultreturnp107 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(idBypseudo106mtemp));
        %>
        <%= tempResultreturnp107 %>
        <%
break;
case 111:
        gotMethod = true;
        String idu_21id=  request.getParameter("idu114");
        int idu_21idTemp  = Integer.parseInt(idu_21id);
        String pseudo_22id=  request.getParameter("pseudo116");
            java.lang.String pseudo_22idTemp = null;
        if(!pseudo_22id.equals("")){
         pseudo_22idTemp  = pseudo_22id;
        }
        String idgroup_23id=  request.getParameter("idgroup118");
        int idgroup_23idTemp  = Integer.parseInt(idgroup_23id);
        boolean addUserToGroup111mtemp = sampleUtilisateurProxyid.addUserToGroup(idu_21idTemp,pseudo_22idTemp,idgroup_23idTemp);
        String tempResultreturnp112 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addUserToGroup111mtemp));
        %>
        <%= tempResultreturnp112 %>
        <%
break;
case 120:
        gotMethod = true;
        String idu_24id=  request.getParameter("idu123");
        int idu_24idTemp  = Integer.parseInt(idu_24id);
        String idFriends_25id=  request.getParameter("idFriends125");
        int idFriends_25idTemp  = Integer.parseInt(idFriends_25id);
        java.lang.String[] liremessage120mtemp = sampleUtilisateurProxyid.liremessage(idu_24idTemp,idFriends_25idTemp);
if(liremessage120mtemp == null){
%>
<%=liremessage120mtemp %>
<%
}else{
        String tempreturnp121 = null;
        if(liremessage120mtemp != null){
        java.util.List listreturnp121= java.util.Arrays.asList(liremessage120mtemp);
        tempreturnp121 = listreturnp121.toString();
        }
        %>
        <%=tempreturnp121%>
        <%
}
break;
case 127:
        gotMethod = true;
        String idu_26id=  request.getParameter("idu130");
        int idu_26idTemp  = Integer.parseInt(idu_26id);
        java.lang.String[] getFriendList127mtemp = sampleUtilisateurProxyid.getFriendList(idu_26idTemp);
if(getFriendList127mtemp == null){
%>
<%=getFriendList127mtemp %>
<%
}else{
        String tempreturnp128 = null;
        if(getFriendList127mtemp != null){
        java.util.List listreturnp128= java.util.Arrays.asList(getFriendList127mtemp);
        tempreturnp128 = listreturnp128.toString();
        }
        %>
        <%=tempreturnp128%>
        <%
}
break;
case 132:
        gotMethod = true;
        String name_27id=  request.getParameter("name135");
            java.lang.String name_27idTemp = null;
        if(!name_27id.equals("")){
         name_27idTemp  = name_27id;
        }
        int getIdGroupByName132mtemp = sampleUtilisateurProxyid.getIdGroupByName(name_27idTemp);
        String tempResultreturnp133 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getIdGroupByName132mtemp));
        %>
        <%= tempResultreturnp133 %>
        <%
break;
case 137:
        gotMethod = true;
        String idu_28id=  request.getParameter("idu140");
        int idu_28idTemp  = Integer.parseInt(idu_28id);
        String groupname_29id=  request.getParameter("groupname142");
            java.lang.String groupname_29idTemp = null;
        if(!groupname_29id.equals("")){
         groupname_29idTemp  = groupname_29id;
        }
        boolean addAdmin137mtemp = sampleUtilisateurProxyid.addAdmin(idu_28idTemp,groupname_29idTemp);
        String tempResultreturnp138 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addAdmin137mtemp));
        %>
        <%= tempResultreturnp138 %>
        <%
break;
case 144:
        gotMethod = true;
        String idu_30id=  request.getParameter("idu147");
        int idu_30idTemp  = Integer.parseInt(idu_30id);
        String groupname_31id=  request.getParameter("groupname149");
            java.lang.String groupname_31idTemp = null;
        if(!groupname_31id.equals("")){
         groupname_31idTemp  = groupname_31id;
        }
        String description_32id=  request.getParameter("description151");
            java.lang.String description_32idTemp = null;
        if(!description_32id.equals("")){
         description_32idTemp  = description_32id;
        }
        boolean addgroup144mtemp = sampleUtilisateurProxyid.addgroup(idu_30idTemp,groupname_31idTemp,description_32idTemp);
        String tempResultreturnp145 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addgroup144mtemp));
        %>
        <%= tempResultreturnp145 %>
        <%
break;
case 153:
        gotMethod = true;
        String id_33id=  request.getParameter("id156");
        int id_33idTemp  = Integer.parseInt(id_33id);
        java.lang.String pseudoById153mtemp = sampleUtilisateurProxyid.pseudoById(id_33idTemp);
if(pseudoById153mtemp == null){
%>
<%=pseudoById153mtemp %>
<%
}else{
        String tempResultreturnp154 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(pseudoById153mtemp));
        %>
        <%= tempResultreturnp154 %>
        <%
}
break;
case 158:
        gotMethod = true;
        java.lang.String getMdp158mtemp = sampleUtilisateurProxyid.getMdp();
if(getMdp158mtemp == null){
%>
<%=getMdp158mtemp %>
<%
}else{
        String tempResultreturnp159 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getMdp158mtemp));
        %>
        <%= tempResultreturnp159 %>
        <%
}
break;
case 161:
        gotMethod = true;
        String idu_34id=  request.getParameter("idu164");
        int idu_34idTemp  = Integer.parseInt(idu_34id);
        java.lang.String[] getGrouplist161mtemp = sampleUtilisateurProxyid.getGrouplist(idu_34idTemp);
if(getGrouplist161mtemp == null){
%>
<%=getGrouplist161mtemp %>
<%
}else{
        String tempreturnp162 = null;
        if(getGrouplist161mtemp != null){
        java.util.List listreturnp162= java.util.Arrays.asList(getGrouplist161mtemp);
        tempreturnp162 = listreturnp162.toString();
        }
        %>
        <%=tempreturnp162%>
        <%
}
break;
case 166:
        gotMethod = true;
        String mdp_35id=  request.getParameter("mdp169");
            java.lang.String mdp_35idTemp = null;
        if(!mdp_35id.equals("")){
         mdp_35idTemp  = mdp_35id;
        }
        sampleUtilisateurProxyid.setMdp(mdp_35idTemp);
break;
case 171:
        gotMethod = true;
        String idu_36id=  request.getParameter("idu174");
        int idu_36idTemp  = Integer.parseInt(idu_36id);
        String idgroupe_37id=  request.getParameter("idgroupe176");
        int idgroupe_37idTemp  = Integer.parseInt(idgroupe_37id);
        java.lang.String[][] liregroupe171mtemp = sampleUtilisateurProxyid.liregroupe(idu_36idTemp,idgroupe_37idTemp);
if(liregroupe171mtemp == null){
%>
<%=liregroupe171mtemp %>
<%
}else{
        String tempreturnp172 = null;
        if(liregroupe171mtemp != null){
        java.util.List listreturnp172= java.util.Arrays.asList(liregroupe171mtemp);
        tempreturnp172 = listreturnp172.toString();
        }
        %>
        <%=tempreturnp172%>
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