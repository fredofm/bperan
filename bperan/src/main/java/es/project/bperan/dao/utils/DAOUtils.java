package es.project.bperan.dao.utils;

import java.lang.reflect.Field;

import org.apache.commons.lang3.StringUtils;

public class DAOUtils {

	public static void nullifyStrings(Object o) {

		for (Field f : o.getClass().getDeclaredFields()) {
			f.setAccessible(true);
			try {
				if (f.getType().equals(String.class)) {
					String value = (String) f.get(o);
					if (value != null && value.trim().isEmpty()) {
						f.set(o, null);
					}
				}
			} catch (Exception e) {
				throw new RuntimeException(e);
			}
		}
	}
	
	public static void enableWildcards(Object o) {

		for (Field f : o.getClass().getDeclaredFields()) {
			f.setAccessible(true);
			try {
				if (f.getType().equals(String.class)) {
					String value = (String) f.get(o);
					if (value != null) {
						f.set(o, StringUtils.replace(value, "*", "%"));
					}
				}
			} catch (Exception e) {
				throw new RuntimeException(e);
			}
		}
	}
}
