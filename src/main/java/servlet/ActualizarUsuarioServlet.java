package servlet;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import modelo.Usuario;
import org.hibernate.Session;
import org.hibernate.Transaction;

@WebServlet("/actualizar")
public class ActualizarUsuarioServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) {

        int id = Integer.parseInt(request.getParameter("id"));

        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();

        Usuario u = session.get(Usuario.class, id);

        u.setNombre(request.getParameter("nombre"));
        u.setEdad(Integer.parseInt(request.getParameter("edad")));
        u.setGenero(request.getParameter("genero"));
        u.setTelefono(request.getParameter("telefono"));
        u.setDireccion(request.getParameter("direccion"));

        session.update(u);

        tx.commit();
        session.close();

        try {
            response.sendRedirect("listaUsuarios.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}