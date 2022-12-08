package controller;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.ModelException;
import model.User;
import model.dao.DAOFactory;
import model.dao.UserDAO;

@WebServlet(urlPatterns = { "", "/save" })
public class UsersController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String action = req.getRequestURI();
		
		System.out.println(action);

		switch (action) {
		case "/facebook/": {
			// Carregar a lista usuários
			UserDAO dao = DAOFactory.createDAO(UserDAO.class);
			
			try {
				List<User> users = dao.listAll();

				// Colocar ela na requisição
				req.setAttribute("usuarios", users);
				
				// Redirecionar para a index.jsp
				RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
				rd.forward(req, resp);
				
			} catch (ModelException e) {
				e.printStackTrace();
			}
			break;
		}
		case "/facebook/save": {
			// Recuperar os dados da requisição
			String userName = req.getParameter("user_name");
			String userEmail = req.getParameter("user_email");
			String userGender = req.getParameter("user_gender");
			
			// Criar um objeto do tipo Usuário
			User user = new User();
			user.setEmail(userEmail);
			user.setGender(userGender);
			user.setName(userName);
			
			// Criar o DAO
			UserDAO dao = DAOFactory.createDAO(UserDAO.class);
			
			// Usar o DAO para salvar o objeto
			try {
				dao.save(user);
				
				resp.sendRedirect("/facebook");
			} catch (ModelException e) {
				// log do servidor
				e.printStackTrace();
			}
			
			break;
		}
		default:
			throw new IllegalArgumentException("Unexpected value: " + action);
		}
		

	}
}
