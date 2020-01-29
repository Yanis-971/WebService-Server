package controler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.getServletContext().getRequestDispatcher("/WEB-INF/home.jsp").forward(request, response);
		HttpSession session = request.getSession();
		
		User u = new User();
		u=(User) session.getAttribute("User");
		
		Utilisateur user = new UtilisateurProxy();
		
		String[] tabs;
		tabs =user.getFriendList(u.getId());
		
		
		for (int j = 0; j < tabs.length; j++) {
			System.out.println(tabs[j]);
		}
		
		request.setAttribute("tabs", tabs);
		
		//user =(UtilisateurProxy) session.getAttribute("User");
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
