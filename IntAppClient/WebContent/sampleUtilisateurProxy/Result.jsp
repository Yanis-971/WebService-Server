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
        String prenom_2id=  request.getParameter("prenom31");
            java.lang.String prenom_2idTemp = null;
        if(!prenom_2id.equals("")){
         prenom_2idTemp  = prenom_2id;
        }
        sampleUtilisateurProxyid.setPrenom(prenom_2idTemp);
break;
case 33:
        gotMethod = true;
        String nom_3id=  request.getParameter("nom36");
            java.lang.String nom_3idTemp = null;
        if(!nom_3id.equals("")){
         nom_3idTemp  = nom_3id;
        }
        sampleUtilisateurProxyid.setNom(nom_3idTemp);
break;
case 38:
        gotMethod = true;
        java.lang.String getNom38mtemp = sampleUtilisateurProxyid.getNom();
if(getNom38mtemp == null){
%>
<%=getNom38mtemp %>
<%
}else{
        String tempResultreturnp39 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getNom38mtemp));
        %>
        <%= tempResultreturnp39 %>
        <%
}
break;
case 41:
        gotMethod = true;
        java.lang.String getPrenom41mtemp = sampleUtilisateurProxyid.getPrenom();
if(getPrenom41mtemp == null){
%>
<%=getPrenom41mtemp %>
<%
}else{
        String tempResultreturnp42 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getPrenom41mtemp));
        %>
        <%= tempResultreturnp42 %>
        <%
}
break;
case 44:
        gotMethod = true;
        java.lang.String getPseudo44mtemp = sampleUtilisateurProxyid.getPseudo();
if(getPseudo44mtemp == null){
%>
<%=getPseudo44mtemp %>
<%
}else{
        String tempResultreturnp45 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getPseudo44mtemp));
        %>
        <%= tempResultreturnp45 %>
        <%
}
break;
case 47:
        gotMethod = true;
        String pseudo_4id=  request.getParameter("pseudo50");
            java.lang.String pseudo_4idTemp = null;
        if(!pseudo_4id.equals("")){
         pseudo_4idTemp  = pseudo_4id;
        }
        sampleUtilisateurProxyid.setPseudo(pseudo_4idTemp);
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
        java.lang.String getMdp68mtemp = sampleUtilisateurProxyid.getMdp();
if(getMdp68mtemp == null){
%>
<%=getMdp68mtemp %>
<%
}else{
        String tempResultreturnp69 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getMdp68mtemp));
        %>
        <%= tempResultreturnp69 %>
        <%
}
break;
case 71:
        gotMethod = true;
        String mdp_10id=  request.getParameter("mdp74");
            java.lang.String mdp_10idTemp = null;
        if(!mdp_10id.equals("")){
         mdp_10idTemp  = mdp_10id;
        }
        sampleUtilisateurProxyid.setMdp(mdp_10idTemp);
break;
case 76:
        gotMethod = true;
        String pseudo_11id=  request.getParameter("pseudo79");
            java.lang.String pseudo_11idTemp = null;
        if(!pseudo_11id.equals("")){
         pseudo_11idTemp  = pseudo_11id;
        }
        boolean addFriend76mtemp = sampleUtilisateurProxyid.addFriend(pseudo_11idTemp);
        String tempResultreturnp77 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addFriend76mtemp));
        %>
        <%= tempResultreturnp77 %>
        <%
break;
case 81:
        gotMethod = true;
        String pseudo_12id=  request.getParameter("pseudo84");
            java.lang.String pseudo_12idTemp = null;
        if(!pseudo_12id.equals("")){
         pseudo_12idTemp  = pseudo_12id;
        }
        String mdp_13id=  request.getParameter("mdp86");
            java.lang.String mdp_13idTemp = null;
        if(!mdp_13id.equals("")){
         mdp_13idTemp  = mdp_13id;
        }
        boolean connecUsers81mtemp = sampleUtilisateurProxyid.connecUsers(pseudo_12idTemp,mdp_13idTemp);
        String tempResultreturnp82 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(connecUsers81mtemp));
        %>
        <%= tempResultreturnp82 %>
        <%
break;
case 88:
        gotMethod = true;
        sampleUtilisateurProxyid.voirUser();
break;
case 91:
        gotMethod = true;
        String idFriends_14id=  request.getParameter("idFriends94");
        int idFriends_14idTemp  = Integer.parseInt(idFriends_14id);
        boolean verifriends91mtemp = sampleUtilisateurProxyid.verifriends(idFriends_14idTemp);
        String tempResultreturnp92 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(verifriends91mtemp));
        %>
        <%= tempResultreturnp92 %>
        <%
break;
case 96:
        gotMethod = true;
        String message_15id=  request.getParameter("message99");
            java.lang.String message_15idTemp = null;
        if(!message_15id.equals("")){
         message_15idTemp  = message_15id;
        }
        String idfriends_16id=  request.getParameter("idfriends101");
        int idfriends_16idTemp  = Integer.parseInt(idfriends_16id);
        boolean sendmessage96mtemp = sampleUtilisateurProxyid.sendmessage(message_15idTemp,idfriends_16idTemp);
        String tempResultreturnp97 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(sendmessage96mtemp));
        %>
        <%= tempResultreturnp97 %>
        <%
break;
case 103:
        gotMethod = true;
        String groupname_17id=  request.getParameter("groupname106");
            java.lang.String groupname_17idTemp = null;
        if(!groupname_17id.equals("")){
         groupname_17idTemp  = groupname_17id;
        }
        boolean addAdmin103mtemp = sampleUtilisateurProxyid.addAdmin(groupname_17idTemp);
        String tempResultreturnp104 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addAdmin103mtemp));
        %>
        <%= tempResultreturnp104 %>
        <%
break;
case 108:
        gotMethod = true;
        String pseudo_18id=  request.getParameter("pseudo111");
            java.lang.String pseudo_18idTemp = null;
        if(!pseudo_18id.equals("")){
         pseudo_18idTemp  = pseudo_18id;
        }
        int idBypseudo108mtemp = sampleUtilisateurProxyid.idBypseudo(pseudo_18idTemp);
        String tempResultreturnp109 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(idBypseudo108mtemp));
        %>
        <%= tempResultreturnp109 %>
        <%
break;
case 113:
        gotMethod = true;
        String idFriends_19id=  request.getParameter("idFriends116");
        int idFriends_19idTemp  = Integer.parseInt(idFriends_19id);
        model.Message[] liremessage113mtemp = sampleUtilisateurProxyid.liremessage(idFriends_19idTemp);
if(liremessage113mtemp == null){
%>
<%=liremessage113mtemp %>
<%
}else{
        String tempreturnp114 = null;
        if(liremessage113mtemp != null){
        java.util.List listreturnp114= java.util.Arrays.asList(liremessage113mtemp);
        tempreturnp114 = listreturnp114.toString();
        }
        %>
        <%=tempreturnp114%>
        <%
}
break;
case 118:
        gotMethod = true;
        String pseudo_20id=  request.getParameter("pseudo121");
            java.lang.String pseudo_20idTemp = null;
        if(!pseudo_20id.equals("")){
         pseudo_20idTemp  = pseudo_20id;
        }
        String idgroup_21id=  request.getParameter("idgroup123");
        int idgroup_21idTemp  = Integer.parseInt(idgroup_21id);
        boolean addUserToGroup118mtemp = sampleUtilisateurProxyid.addUserToGroup(pseudo_20idTemp,idgroup_21idTemp);
        String tempResultreturnp119 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addUserToGroup118mtemp));
        %>
        <%= tempResultreturnp119 %>
        <%
break;
case 125:
        gotMethod = true;
        String name_22id=  request.getParameter("name128");
            java.lang.String name_22idTemp = null;
        if(!name_22id.equals("")){
         name_22idTemp  = name_22id;
        }
        int getIdGroupByName125mtemp = sampleUtilisateurProxyid.getIdGroupByName(name_22idTemp);
        String tempResultreturnp126 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getIdGroupByName125mtemp));
        %>
        <%= tempResultreturnp126 %>
        <%
break;
case 130:
        gotMethod = true;
        String groupname_23id=  request.getParameter("groupname133");
            java.lang.String groupname_23idTemp = null;
        if(!groupname_23id.equals("")){
         groupname_23idTemp  = groupname_23id;
        }
        String description_24id=  request.getParameter("description135");
            java.lang.String description_24idTemp = null;
        if(!description_24id.equals("")){
         description_24idTemp  = description_24id;
        }
        boolean addgroup130mtemp = sampleUtilisateurProxyid.addgroup(groupname_23idTemp,description_24idTemp);
        String tempResultreturnp131 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addgroup130mtemp));
        %>
        <%= tempResultreturnp131 %>
        <%
break;
case 137:
        gotMethod = true;
        int getId137mtemp = sampleUtilisateurProxyid.getId();
        String tempResultreturnp138 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getId137mtemp));
        %>
        <%= tempResultreturnp138 %>
        <%
break;
case 140:
        gotMethod = true;
        String idu_25id=  request.getParameter("idu143");
        int idu_25idTemp  = Integer.parseInt(idu_25id);
        java.lang.String[] getFriendList140mtemp = sampleUtilisateurProxyid.getFriendList(idu_25idTemp);
if(getFriendList140mtemp == null){
%>
<%=getFriendList140mtemp %>
<%
}else{
        String tempreturnp141 = null;
        if(getFriendList140mtemp != null){
        java.util.List listreturnp141= java.util.Arrays.asList(getFriendList140mtemp);
        tempreturnp141 = listreturnp141.toString();
        }
        %>
        <%=tempreturnp141%>
        <%
}
break;
case 145:
        gotMethod = true;
        String id_26id=  request.getParameter("id148");
        int id_26idTemp  = Integer.parseInt(id_26id);
        java.lang.String pseudoById145mtemp = sampleUtilisateurProxyid.pseudoById(id_26idTemp);
if(pseudoById145mtemp == null){
%>
<%=pseudoById145mtemp %>
<%
}else{
        String tempResultreturnp146 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(pseudoById145mtemp));
        %>
        <%= tempResultreturnp146 %>
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