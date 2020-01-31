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
        java.lang.String getPrenom36mtemp = sampleUtilisateurProxyid.getPrenom();
if(getPrenom36mtemp == null){
%>
<%=getPrenom36mtemp %>
<%
}else{
        String tempResultreturnp37 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getPrenom36mtemp));
        %>
        <%= tempResultreturnp37 %>
        <%
}
break;
case 39:
        gotMethod = true;
        String prenom_3id=  request.getParameter("prenom42");
            java.lang.String prenom_3idTemp = null;
        if(!prenom_3id.equals("")){
         prenom_3idTemp  = prenom_3id;
        }
        sampleUtilisateurProxyid.setPrenom(prenom_3idTemp);
break;
case 44:
        gotMethod = true;
        String nom_4id=  request.getParameter("nom47");
            java.lang.String nom_4idTemp = null;
        if(!nom_4id.equals("")){
         nom_4idTemp  = nom_4id;
        }
        sampleUtilisateurProxyid.setNom(nom_4idTemp);
break;
case 49:
        gotMethod = true;
        java.lang.String getNom49mtemp = sampleUtilisateurProxyid.getNom();
if(getNom49mtemp == null){
%>
<%=getNom49mtemp %>
<%
}else{
        String tempResultreturnp50 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getNom49mtemp));
        %>
        <%= tempResultreturnp50 %>
        <%
}
break;
case 52:
        gotMethod = true;
        java.lang.String getMdp52mtemp = sampleUtilisateurProxyid.getMdp();
if(getMdp52mtemp == null){
%>
<%=getMdp52mtemp %>
<%
}else{
        String tempResultreturnp53 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getMdp52mtemp));
        %>
        <%= tempResultreturnp53 %>
        <%
}
break;
case 55:
        gotMethod = true;
        String pseudo_5id=  request.getParameter("pseudo58");
            java.lang.String pseudo_5idTemp = null;
        if(!pseudo_5id.equals("")){
         pseudo_5idTemp  = pseudo_5id;
        }
        String mdp_6id=  request.getParameter("mdp60");
            java.lang.String mdp_6idTemp = null;
        if(!mdp_6id.equals("")){
         mdp_6idTemp  = mdp_6id;
        }
        boolean connecUsers55mtemp = sampleUtilisateurProxyid.connecUsers(pseudo_5idTemp,mdp_6idTemp);
        String tempResultreturnp56 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(connecUsers55mtemp));
        %>
        <%= tempResultreturnp56 %>
        <%
break;
case 62:
        gotMethod = true;
        String idu_7id=  request.getParameter("idu65");
        int idu_7idTemp  = Integer.parseInt(idu_7id);
        String pseudo_8id=  request.getParameter("pseudo67");
            java.lang.String pseudo_8idTemp = null;
        if(!pseudo_8id.equals("")){
         pseudo_8idTemp  = pseudo_8id;
        }
        boolean addFriend62mtemp = sampleUtilisateurProxyid.addFriend(idu_7idTemp,pseudo_8idTemp);
        String tempResultreturnp63 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addFriend62mtemp));
        %>
        <%= tempResultreturnp63 %>
        <%
break;
case 69:
        gotMethod = true;
        String idu_9id=  request.getParameter("idu72");
        int idu_9idTemp  = Integer.parseInt(idu_9id);
        String idFriends_10id=  request.getParameter("idFriends74");
        int idFriends_10idTemp  = Integer.parseInt(idFriends_10id);
        boolean verifriends69mtemp = sampleUtilisateurProxyid.verifriends(idu_9idTemp,idFriends_10idTemp);
        String tempResultreturnp70 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(verifriends69mtemp));
        %>
        <%= tempResultreturnp70 %>
        <%
break;
case 76:
        gotMethod = true;
        String idu_11id=  request.getParameter("idu79");
        int idu_11idTemp  = Integer.parseInt(idu_11id);
        String idfriend_12id=  request.getParameter("idfriend81");
        int idfriend_12idTemp  = Integer.parseInt(idfriend_12id);
        boolean liaisonFriends76mtemp = sampleUtilisateurProxyid.liaisonFriends(idu_11idTemp,idfriend_12idTemp);
        String tempResultreturnp77 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(liaisonFriends76mtemp));
        %>
        <%= tempResultreturnp77 %>
        <%
break;
case 83:
        gotMethod = true;
        String mdp_13id=  request.getParameter("mdp86");
            java.lang.String mdp_13idTemp = null;
        if(!mdp_13id.equals("")){
         mdp_13idTemp  = mdp_13id;
        }
        String nom_14id=  request.getParameter("nom88");
            java.lang.String nom_14idTemp = null;
        if(!nom_14id.equals("")){
         nom_14idTemp  = nom_14id;
        }
        String prenom_15id=  request.getParameter("prenom90");
            java.lang.String prenom_15idTemp = null;
        if(!prenom_15id.equals("")){
         prenom_15idTemp  = prenom_15id;
        }
        String pseudo_16id=  request.getParameter("pseudo92");
            java.lang.String pseudo_16idTemp = null;
        if(!pseudo_16id.equals("")){
         pseudo_16idTemp  = pseudo_16id;
        }
        boolean addUtilisateurs83mtemp = sampleUtilisateurProxyid.addUtilisateurs(mdp_13idTemp,nom_14idTemp,prenom_15idTemp,pseudo_16idTemp);
        String tempResultreturnp84 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addUtilisateurs83mtemp));
        %>
        <%= tempResultreturnp84 %>
        <%
break;
case 94:
        gotMethod = true;
        String idu_17id=  request.getParameter("idu97");
        int idu_17idTemp  = Integer.parseInt(idu_17id);
        String message_18id=  request.getParameter("message99");
            java.lang.String message_18idTemp = null;
        if(!message_18id.equals("")){
         message_18idTemp  = message_18id;
        }
        String idfriends_19id=  request.getParameter("idfriends101");
        int idfriends_19idTemp  = Integer.parseInt(idfriends_19id);
        boolean sendmessage94mtemp = sampleUtilisateurProxyid.sendmessage(idu_17idTemp,message_18idTemp,idfriends_19idTemp);
        String tempResultreturnp95 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(sendmessage94mtemp));
        %>
        <%= tempResultreturnp95 %>
        <%
break;
case 103:
        gotMethod = true;
        String idu_20id=  request.getParameter("idu106");
        int idu_20idTemp  = Integer.parseInt(idu_20id);
        java.lang.String[] getFriendList103mtemp = sampleUtilisateurProxyid.getFriendList(idu_20idTemp);
if(getFriendList103mtemp == null){
%>
<%=getFriendList103mtemp %>
<%
}else{
        String tempreturnp104 = null;
        if(getFriendList103mtemp != null){
        java.util.List listreturnp104= java.util.Arrays.asList(getFriendList103mtemp);
        tempreturnp104 = listreturnp104.toString();
        }
        %>
        <%=tempreturnp104%>
        <%
}
break;
case 108:
        gotMethod = true;
        String idu_21id=  request.getParameter("idu111");
        int idu_21idTemp  = Integer.parseInt(idu_21id);
        String idFriends_22id=  request.getParameter("idFriends113");
        int idFriends_22idTemp  = Integer.parseInt(idFriends_22id);
        java.lang.String[] liremessage108mtemp = sampleUtilisateurProxyid.liremessage(idu_21idTemp,idFriends_22idTemp);
if(liremessage108mtemp == null){
%>
<%=liremessage108mtemp %>
<%
}else{
        String tempreturnp109 = null;
        if(liremessage108mtemp != null){
        java.util.List listreturnp109= java.util.Arrays.asList(liremessage108mtemp);
        tempreturnp109 = listreturnp109.toString();
        }
        %>
        <%=tempreturnp109%>
        <%
}
break;
case 115:
        gotMethod = true;
        String name_23id=  request.getParameter("name118");
            java.lang.String name_23idTemp = null;
        if(!name_23id.equals("")){
         name_23idTemp  = name_23id;
        }
        int getIdGroupByName115mtemp = sampleUtilisateurProxyid.getIdGroupByName(name_23idTemp);
        String tempResultreturnp116 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getIdGroupByName115mtemp));
        %>
        <%= tempResultreturnp116 %>
        <%
break;
case 120:
        gotMethod = true;
        String idu_24id=  request.getParameter("idu123");
        int idu_24idTemp  = Integer.parseInt(idu_24id);
        String groupname_25id=  request.getParameter("groupname125");
            java.lang.String groupname_25idTemp = null;
        if(!groupname_25id.equals("")){
         groupname_25idTemp  = groupname_25id;
        }
        boolean addAdmin120mtemp = sampleUtilisateurProxyid.addAdmin(idu_24idTemp,groupname_25idTemp);
        String tempResultreturnp121 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addAdmin120mtemp));
        %>
        <%= tempResultreturnp121 %>
        <%
break;
case 127:
        gotMethod = true;
        String id_26id=  request.getParameter("id130");
        int id_26idTemp  = Integer.parseInt(id_26id);
        java.lang.String pseudoById127mtemp = sampleUtilisateurProxyid.pseudoById(id_26idTemp);
if(pseudoById127mtemp == null){
%>
<%=pseudoById127mtemp %>
<%
}else{
        String tempResultreturnp128 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(pseudoById127mtemp));
        %>
        <%= tempResultreturnp128 %>
        <%
}
break;
case 132:
        gotMethod = true;
        String idu_27id=  request.getParameter("idu135");
        int idu_27idTemp  = Integer.parseInt(idu_27id);
        java.lang.String[] getGrouplist132mtemp = sampleUtilisateurProxyid.getGrouplist(idu_27idTemp);
if(getGrouplist132mtemp == null){
%>
<%=getGrouplist132mtemp %>
<%
}else{
        String tempreturnp133 = null;
        if(getGrouplist132mtemp != null){
        java.util.List listreturnp133= java.util.Arrays.asList(getGrouplist132mtemp);
        tempreturnp133 = listreturnp133.toString();
        }
        %>
        <%=tempreturnp133%>
        <%
}
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
        String description_30id=  request.getParameter("description144");
            java.lang.String description_30idTemp = null;
        if(!description_30id.equals("")){
         description_30idTemp  = description_30id;
        }
        boolean addgroup137mtemp = sampleUtilisateurProxyid.addgroup(idu_28idTemp,groupname_29idTemp,description_30idTemp);
        String tempResultreturnp138 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addgroup137mtemp));
        %>
        <%= tempResultreturnp138 %>
        <%
break;
case 146:
        gotMethod = true;
        String pseudo_31id=  request.getParameter("pseudo149");
            java.lang.String pseudo_31idTemp = null;
        if(!pseudo_31id.equals("")){
         pseudo_31idTemp  = pseudo_31id;
        }
        int idBypseudo146mtemp = sampleUtilisateurProxyid.idBypseudo(pseudo_31idTemp);
        String tempResultreturnp147 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(idBypseudo146mtemp));
        %>
        <%= tempResultreturnp147 %>
        <%
break;
case 151:
        gotMethod = true;
        String idu_32id=  request.getParameter("idu154");
        int idu_32idTemp  = Integer.parseInt(idu_32id);
        String pseudo_33id=  request.getParameter("pseudo156");
            java.lang.String pseudo_33idTemp = null;
        if(!pseudo_33id.equals("")){
         pseudo_33idTemp  = pseudo_33id;
        }
        String idgroup_34id=  request.getParameter("idgroup158");
        int idgroup_34idTemp  = Integer.parseInt(idgroup_34id);
        boolean addUserToGroup151mtemp = sampleUtilisateurProxyid.addUserToGroup(idu_32idTemp,pseudo_33idTemp,idgroup_34idTemp);
        String tempResultreturnp152 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addUserToGroup151mtemp));
        %>
        <%= tempResultreturnp152 %>
        <%
break;
case 160:
        gotMethod = true;
        String mdp_35id=  request.getParameter("mdp163");
            java.lang.String mdp_35idTemp = null;
        if(!mdp_35id.equals("")){
         mdp_35idTemp  = mdp_35id;
        }
        sampleUtilisateurProxyid.setMdp(mdp_35idTemp);
break;
case 165:
        gotMethod = true;
        sampleUtilisateurProxyid.voirUser();
break;
case 168:
        gotMethod = true;
        int getId168mtemp = sampleUtilisateurProxyid.getId();
        String tempResultreturnp169 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getId168mtemp));
        %>
        <%= tempResultreturnp169 %>
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