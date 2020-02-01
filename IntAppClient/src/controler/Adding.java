package controler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.User;
import model.Utilisateur;
import model.UtilisateurProxy;

/**
 * Servlet implementation class Adding
 */
@WebServlet("/Adding")
public class Adding extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Adding() {
        super();
        // TODO Auto-generated constructor stub
    }

	String type=null;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		type=request.getParameter("type");
		request.setAttribute("type", type);
		this.getServletContext().getRequestDispatcher("/WEB-INF/ajout.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String pseudo = request.getParameter("pseudo");
		String description = request.getParameter("description");
		
		HttpSession session = request.getSession();
		User u = new User();
		u=(User) session.getAttribute("User");
		
		Utilisateur user = new UtilisateurProxy();
		if (type=="frd")
			user.addFriend(u.id, pseudo);
		if (type=="grp")
			user.addgroup(u.id, pseudo, description);
		 
		response.sendRedirect("/IntAppClient/Accueil");
	}

}
