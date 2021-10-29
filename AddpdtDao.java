package com.mypack;

import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

public class AddpdtDao 
{
	public static int addpdt(Addproduct a){
		int j = 0;
		StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();
		Metadata meta = new MetadataSources(ssr).getMetadataBuilder().build();
		SessionFactory factory = meta.getSessionFactoryBuilder().build();
		org.hibernate.Session session = factory.openSession();
		Transaction t = session.beginTransaction();
	
		j = (int) session.save(a);
		t.commit();
		session.close();
         System.out.println("Data Inserted Successfull");
		
		return j;
}
}
