package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import modelo.Usuario;
import org.hibernate.Session;
import org.hibernate.Transaction;
import util.HibernateUtil;

import java.io.IOException;

@WebServlet("/guardarUsuario")
public class GuardarUsuarioServlets extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nombre = request.getParameter("nombre");
        int edad = Integer.parseInt(request.getParameter("edad"));
        String genero = request.getParameter("genero");
        String telefono = request.getParameter("telefono");
        String direccion = request.getParameter("direccion");

        Usuario u = new Usuario();
        u.setNombre(nombre);
        u.setEdad(edad);
        u.setGenero(genero);
        u.setTelefono(telefono);
        u.setDireccion(direccion);

        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();

        session.persist(u);

        tx.commit();
        session.close();

        response.sendRedirect("exito.jsp");
    }
}