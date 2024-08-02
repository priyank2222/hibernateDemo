import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import com.priyank.model.Laptop;
import com.priyank.model.Student;

public class Temp {

	public static void main(String[] args) {
		
		SessionFactory factory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Student.class).addAnnotatedClass(Laptop.class).buildSessionFactory();
		
		Session session = factory.getCurrentSession();
        session.beginTransaction();
        
        Query<Student> query = session.createQuery("from student", Student.class);
        
        Student student = query.getResultList().getFirst();
        
        Query<Laptop> query2 = session.createQuery("from laptop", Laptop.class);
        
        List<Laptop> laptops = query2.getResultList();
        
        
        student.setLaptops(laptops);
        
        session.update(student);
       // session.save(laptop2);
        
        session.getTransaction().commit();
        
	}

}
