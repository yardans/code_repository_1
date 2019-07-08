package com.onlineshop.base;

import java.util.List;

public interface  BaseDAO<T> {
	/**
	 * ����ʵ��
	 * @param entity
	 */
	void save(T entity);
	/**
	 * ͨ��idɾ��ʵ��
	 * @param id
	 */
	void delete(int id);
	/**
	 * ����ʵ��
	 * @param entity
	 */
	void update(T entity);
	/**
	 * ͨ��id��ѯʵ��
	 * @param id
	 * @return
	 */
	T getById(int id);
	/**
	 * ��ѯʵ��//��ʱ��֪����ô��
	 * @param roleIds
	 * @return
	 */
	List<T> getByIds(Integer[] roleIds);
	
	/**
	 *��ѯ����ʵ��
	 * @return
	 */
	List<T> findAll();
}
