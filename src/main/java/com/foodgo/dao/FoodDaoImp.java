package com.foodgo.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.foodgo.model.Food;

@Repository
@Transactional
public class FoodDaoImp implements FoodDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addFood(Food food) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(food);
		session.flush();
	}
	
	@Override
	public void editFood(Food food) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(food);
		session.flush();
	}

	@Override
	public Food getFoodById(int id) {
		Session session = sessionFactory.getCurrentSession();
		Food food = (Food) session.get(Food.class, id); //
		session.flush();
		
		return food;
	}

	@Override
	public List<Food> getAllFood() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Food");
		List<Food> foods = query.list();
		session.flush();
		
		return foods;
	}

	@Override
	public void deleteFood(int id) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(getFoodById(id));
		session.flush();
	}

	
	
}
