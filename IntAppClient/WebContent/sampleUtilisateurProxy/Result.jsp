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
        java.lang.String getPrenom28mtemp = sampleUtilisateurProxyid.getPrenom();
if(getPrenom28mtemp == null){
%>
<%=getPrenom28mtemp %>
<%
}else{
        String tempResultreturnp29 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getPrenom28mtemp));
        %>
        <%= tempResultreturnp29 %>
        <%
}
break;
case 31:
        gotMethod = true;
        String prenom_2id=  request.getParameter("prenom34");
            java.lang.String prenom_2idTemp = null;
        if(!prenom_2id.equals("")){
         prenom_2idTemp  = prenom_2id;
        }
        sampleUtilisateurProxyid.setPrenom(prenom_2idTemp);
break;
case 36:
        gotMethod = true;
        sampleUtilisateurProxyid.voirUser();
break;
case 39:
        gotMethod = true;
        java.lang.String getNom39mtemp = sampleUtilisateurProxyid.getNom();
if(getNom39mtemp == null){
%>
<%=getNom39mtemp %>
<%
}else{
        String tempResultreturnp40 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getNom39mtemp));
        %>
        <%= tempResultreturnp40 %>
        <%
}
break;
case 42:
        gotMethod = true;
        String nom_3id=  request.getParameter("nom45");
            java.lang.String nom_3idTemp = null;
        if(!nom_3id.equals("")){
         nom_3idTemp  = nom_3id;
        }
        sampleUtilisateurProxyid.setNom(nom_3idTemp);
break;
case 47:
        gotMethod = true;
        java.lang.String getPseudo47mtemp = sampleUtilisateurProxyid.getPseudo();
if(getPseudo47mtemp == null){
%>
<%=getPseudo47mtemp %>
<%
}else{
        String tempResultreturnp48 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getPseudo47mtemp));
        %>
        <%= tempResultreturnp48 %>
        <%
}
break;
case 50:
        gotMethod = true;
        String pseudo_4id=  request.getParameter("pseudo53");
            java.lang.String pseudo_4idTemp = null;
        if(!pseudo_4id.equals("")){
         pseudo_4idTemp  = pseudo_4id;
        }
        sampleUtilisateurProxyid.setPseudo(pseudo_4idTemp);
break;
case 55:
        gotMethod = true;
        java.lang.String getMdp55mtemp = sampleUtilisateurProxyid.getMdp();
if(getMdp55mtemp == null){
%>
<%=getMdp55mtemp %>
<%
}else{
        String tempResultreturnp56 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getMdp55mtemp));
        %>
        <%= tempResultreturnp56 %>
        <%
}
break;
case 58:
        gotMethod = true;
        String mdp_5id=  request.getParameter("mdp61");
            java.lang.String mdp_5idTemp = null;
        if(!mdp_5id.equals("")){
         mdp_5idTemp  = mdp_5id;
        }
        sampleUtilisateurProxyid.setMdp(mdp_5idTemp);
break;
case 63:
        gotMethod = true;
        String pseudo_6id=  request.getParameter("pseudo66");
            java.lang.String pseudo_6idTemp = null;
        if(!pseudo_6id.equals("")){
         pseudo_6idTemp  = pseudo_6id;
        }
        String mdp_7id=  request.getParameter("mdp68");
            java.lang.String mdp_7idTemp = null;
        if(!mdp_7id.equals("")){
         mdp_7idTemp  = mdp_7id;
        }
        boolean connecUsers63mtemp = sampleUtilisateurProxyid.connecUsers(pseudo_6idTemp,mdp_7idTemp);
        String tempResultreturnp64 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(connecUsers63mtemp));
        %>
        <%= tempResultreturnp64 %>
        <%
break;
case 70:
        gotMethod = true;
        String mdp_8id=  request.getParameter("mdp73");
            java.lang.String mdp_8idTemp = null;
        if(!mdp_8id.equals("")){
         mdp_8idTemp  = mdp_8id;
        }
        String nom_9id=  request.getParameter("nom75");
            java.lang.String nom_9idTemp = null;
        if(!nom_9id.equals("")){
         nom_9idTemp  = nom_9id;
        }
        String prenom_10id=  request.getParameter("prenom77");
            java.lang.String prenom_10idTemp = null;
        if(!prenom_10id.equals("")){
         prenom_10idTemp  = prenom_10id;
        }
        String pseudo_11id=  request.getParameter("pseudo79");
            java.lang.String pseudo_11idTemp = null;
        if(!pseudo_11id.equals("")){
         pseudo_11idTemp  = pseudo_11id;
        }
        boolean addUtilisateurs70mtemp = sampleUtilisateurProxyid.addUtilisateurs(mdp_8idTemp,nom_9idTemp,prenom_10idTemp,pseudo_11idTemp);
        String tempResultreturnp71 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addUtilisateurs70mtemp));
        %>
        <%= tempResultreturnp71 %>
        <%
break;
case 81:
        gotMethod = true;
        String idu_12id=  request.getParameter("idu84");
        int idu_12idTemp  = Integer.parseInt(idu_12id);
        String idFriends_13id=  request.getParameter("idFriends86");
        int idFriends_13idTemp  = Integer.parseInt(idFriends_13id);
        boolean verifriends81mtemp = sampleUtilisateurProxyid.verifriends(idu_12idTemp,idFriends_13idTemp);
        String tempResultreturnp82 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(verifriends81mtemp));
        %>
        <%= tempResultreturnp82 %>
        <%
break;
case 88:
        gotMethod = true;
        String idu_14id=  request.getParameter("idu91");
        int idu_14idTemp  = Integer.parseInt(idu_14id);
        String message_15id=  request.getParameter("message93");
            java.lang.String message_15idTemp = null;
        if(!message_15id.equals("")){
         message_15idTemp  = message_15id;
        }
        String idfriends_16id=  request.getParameter("idfriends95");
        int idfriends_16idTemp  = Integer.parseInt(idfriends_16id);
        boolean sendmessage88mtemp = sampleUtilisateurProxyid.sendmessage(idu_14idTemp,message_15idTemp,idfriends_16idTemp);
        String tempResultreturnp89 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(sendmessage88mtemp));
        %>
        <%= tempResultreturnp89 %>
        <%
break;
case 97:
        gotMethod = true;
        String idu_17id=  request.getParameter("idu100");
        int idu_17idTemp  = Integer.parseInt(idu_17id);
        String pseudo_18id=  request.getParameter("pseudo102");
            java.lang.String pseudo_18idTemp = null;
        if(!pseudo_18id.equals("")){
         pseudo_18idTemp  = pseudo_18id;
        }
        boolean addFriend97mtemp = sampleUtilisateurProxyid.addFriend(idu_17idTemp,pseudo_18idTemp);
        String tempResultreturnp98 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addFriend97mtemp));
        %>
        <%= tempResultreturnp98 %>
        <%
break;
case 104:
        gotMethod = true;
        String idu_19id=  request.getParameter("idu107");
        int idu_19idTemp  = Integer.parseInt(idu_19id);
        String idfriend_20id=  request.getParameter("idfriend109");
        int idfriend_20idTemp  = Integer.parseInt(idfriend_20id);
        boolean liaisonFriends104mtemp = sampleUtilisateurProxyid.liaisonFriends(idu_19idTemp,idfriend_20idTemp);
        String tempResultreturnp105 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(liaisonFriends104mtemp));
        %>
        <%= tempResultreturnp105 %>
        <%
break;
case 111:
        gotMethod = true;
        String pseudo_21id=  request.getParameter("pseudo114");
            java.lang.String pseudo_21idTemp = null;
        if(!pseudo_21id.equals("")){
         pseudo_21idTemp  = pseudo_21id;
        }
        int idBypseudo111mtemp = sampleUtilisateurProxyid.idBypseudo(pseudo_21idTemp);
        String tempResultreturnp112 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(idBypseudo111mtemp));
        %>
        <%= tempResultreturnp112 %>
        <%
break;
case 116:
        gotMethod = true;
        String name_22id=  request.getParameter("name119");
            java.lang.String name_22idTemp = null;
        if(!name_22id.equals("")){
         name_22idTemp  = name_22id;
        }
        int getIdGroupByName116mtemp = sampleUtilisateurProxyid.getIdGroupByName(name_22idTemp);
        String tempResultreturnp117 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getIdGroupByName116mtemp));
        %>
        <%= tempResultreturnp117 %>
        <%
break;
case 121:
        gotMethod = true;
        String idu_23id=  request.getParameter("idu124");
        int idu_23idTemp  = Integer.parseInt(idu_23id);
        String idFriends_24id=  request.getParameter("idFriends126");
        int idFriends_24idTemp  = Integer.parseInt(idFriends_24id);
        java.lang.String[] liremessage121mtemp = sampleUtilisateurProxyid.liremessage(idu_23idTemp,idFriends_24idTemp);
if(liremessage121mtemp == null){
%>
<%=liremessage121mtemp %>
<%
}else{
        String tempreturnp122 = null;
        if(liremessage121mtemp != null){
        java.util.List listreturnp122= java.util.Arrays.asList(liremessage121mtemp);
        tempreturnp122 = listreturnp122.toString();
        }
        %>
        <%=tempreturnp122%>
        <%
}
break;
case 128:
        gotMethod = true;
        String idu_25id=  request.getParameter("idu131");
        int idu_25idTemp  = Integer.parseInt(idu_25id);
        String pseudo_26id=  request.getParameter("pseudo133");
            java.lang.String pseudo_26idTemp = null;
        if(!pseudo_26id.equals("")){
         pseudo_26idTemp  = pseudo_26id;
        }
        String idgroup_27id=  request.getParameter("idgroup135");
        int idgroup_27idTemp  = Integer.parseInt(idgroup_27id);
        boolean addUserToGroup128mtemp = sampleUtilisateurProxyid.addUserToGroup(idu_25idTemp,pseudo_26idTemp,idgroup_27idTemp);
        String tempResultreturnp129 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addUserToGroup128mtemp));
        %>
        <%= tempResultreturnp129 %>
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
        java.lang.String[] getFriendList144mtemp = sampleUtilisateurProxyid.getFriendList(idu_30idTemp);
if(getFriendList144mtemp == null){
%>
<%=getFriendList144mtemp %>
<%
}else{
        String tempreturnp145 = null;
        if(getFriendList144mtemp != null){
        java.util.List listreturnp145= java.util.Arrays.asList(getFriendList144mtemp);
        tempreturnp145 = listreturnp145.toString();
        }
        %>
        <%=tempreturnp145%>
        <%
}
break;
case 149:
        gotMethod = true;
        String idu_31id=  request.getParameter("idu152");
        int idu_31idTemp  = Integer.parseInt(idu_31id);
        String groupname_32id=  request.getParameter("groupname154");
            java.lang.String groupname_32idTemp = null;
        if(!groupname_32id.equals("")){
         groupname_32idTemp  = groupname_32id;
        }
        String description_33id=  request.getParameter("description156");
            java.lang.String description_33idTemp = null;
        if(!description_33id.equals("")){
         description_33idTemp  = description_33id;
        }
        boolean addgroup149mtemp = sampleUtilisateurProxyid.addgroup(idu_31idTemp,groupname_32idTemp,description_33idTemp);
        String tempResultreturnp150 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addgroup149mtemp));
        %>
        <%= tempResultreturnp150 %>
        <%
break;
case 158:
        gotMethod = true;
        String id_34id=  request.getParameter("id161");
        int id_34idTemp  = Integer.parseInt(id_34id);
        java.lang.String pseudoById158mtemp = sampleUtilisateurProxyid.pseudoById(id_34idTemp);
if(pseudoById158mtemp == null){
%>
<%=pseudoById158mtemp %>
<%
}else{
        String tempResultreturnp159 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(pseudoById158mtemp));
        %>
        <%= tempResultreturnp159 %>
        <%
}
break;
case 163:
        gotMethod = true;
        int getId163mtemp = sampleUtilisateurProxyid.getId();
        String tempResultreturnp164 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getId163mtemp));
        %>
        <%= tempResultreturnp164 %>
        <%
break;
case 166:
        gotMethod = true;
        String idu_35id=  request.getParameter("idu169");
        int idu_35idTemp  = Integer.parseInt(idu_35id);
        java.lang.String[] getGrouplist166mtemp = sampleUtilisateurProxyid.getGrouplist(idu_35idTemp);
if(getGrouplist166mtemp == null){
%>
<%=getGrouplist166mtemp %>
<%
}else{
        String tempreturnp167 = null;
        if(getGrouplist166mtemp != null){
        java.util.List listreturnp167= java.util.Arrays.asList(getGrouplist166mtemp);
        tempreturnp167 = listreturnp167.toString();
        }
        %>
        <%=tempreturnp167%>
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