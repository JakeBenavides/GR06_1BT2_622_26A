package test;

import modelo.Usuario;
import org.hibernate.Session;
import org.hibernate.Transaction;
import util.HibernateUtil;

public class TestHibernate {

    public static void main(String[] args) {

        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();

        Usuario u = new Usuario();
        u.setNombre("Alex");
        u.setEdad(20);
        u.setGenero("Masculino");
        u.setTelefono("0999999999");
        u.setDireccion("Quito");

        session.persist(u);

        tx.commit();
        session.close();

        System.out.println("Guardado correctamente!");
    }
}