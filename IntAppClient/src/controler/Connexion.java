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
 * Servlet implementation class Connexion
 */
@WebServlet("/Connexion")
public class Connexion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Connexion() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String pseudo = request.getParameter("pseudo");
		String pswd = request.getParameter("pswd");
		
		User u = new User();
		
		boolean connect;
		
		Utilisateur user = new UtilisateurProxy();
		connect = user.connecUsers(pseudo, pswd);
		if (connect) { 
			user.setPseudo(pseudo);
			HttpSession session = request.getSession();
			u.setId(user.idBypseudo(pseudo));
			u.setPseudo(user.pseudoById(u.getId()));
			System.out.println("user id" + u.getId() + " user pseudo "+ u.getPseudo());
			session.setAttribute("User", u); 
			response.sendRedirect("/IntAppClient/Accueil");
		}
	   else 
		   doGet(request, response);
	}

}
