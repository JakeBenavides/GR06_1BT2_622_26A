package servlet;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import modelo.Usuario;
import org.hibernate.Session;
import org.hibernate.Transaction;
import util.HibernateUtil;

@WebServlet("/eliminar")

public class EliminarUsuarioServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) {

        int id = Integer.parseInt(request.getParameter("id"));

        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();

        Usuario u = session.get(Usuario.class, id);
        if(u != null){
            session.remove(u);
        }
        tx.commit();
        session.close();
        try {
            response.sendRedirect("listaUsuarios.jsp");
        } catch (Exception e) {

            e.printStackTrace();

        }
    }
}