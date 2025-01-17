package controler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.wsdl.Message;

import beans.User;
import model.Friend;
import model.FriendProxy;
import model.Utilisateur;
import model.UtilisateurProxy;

/**
 * Servlet implementation class Accueil
 */
@WebServlet("/Accueil")
public class Accueil extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Accueil() {
        super();
        // TODO Auto-generated constructor stub
    }

    String pseudofriend =null;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		
		Utilisateur user = new UtilisateurProxy();
		
		//// Retour pseudo friend de l'Url ///	
		pseudofriend = request.getParameter("fpseudo");
		int idfriend = user.idBypseudo(pseudofriend);
		/////////////////////////////////////////////
		
		//// Session ////////
		HttpSession session = request.getSession();
		User u = new User();
		u=(User) session.getAttribute("User");
		////////////////////////////////////////////
		
		// Liste Amis //////
		String[] friendlist;
		friendlist =user.getFriendList(u.getId());
		
		int nb=0;
		for (int  j = 0; j < friendlist.length; j++) {
			if (friendlist[j]!=null)
				nb++;
			System.out.println(friendlist[j]);
		}
		
		request.setAttribute("tabs", friendlist);
		request.setAttribute("nbf", nb);
		//////////////////////////////////////////
		
		// Liste Groupe //////
				String[] grouplist;
				grouplist =user.getGrouplist(u.getId());
				
				int ng=0;
				for (int  o = 0; o < grouplist.length; o++) {
					if (grouplist[o]!=null)
						ng++;
					System.out.println(grouplist[o]);
				}
				
				request.setAttribute("gps", grouplist);
				request.setAttribute("nbg", ng);
		//////////////////////////////////////////
		
		//Liste Messages ////
		String[] sender = null;
		String[] msg = null;
		String[] msglist;
		msglist =user.liremessage(u.id, idfriend);
		
		
//		for (int j = 0; j < msglist.length; j++) {
//			String [] listm = msglist[j].split(":");
//			 sender[j]=listm[0];
//			 msg[j]=listm[1];
//		}
		
		request.setAttribute("msgs", msglist);
		/////////////////////////////////////////

		this.getServletContext().getRequestDispatcher("/WEB-INF/home.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String input = request.getParameter("input");
		HttpSession session = request.getSession();
		User u = new User();
		u=(User) session.getAttribute("User");
		Utilisateur user = new UtilisateurProxy();
		
		
		int idfriend = user.idBypseudo(pseudofriend);
		
		user.sendmessage(u.id, input, idfriend);
		
		
		response.sendRedirect("/IntAppClient/Accueil?fpseudo="+ pseudofriend);
	}

}
