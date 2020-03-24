package com.my.myrooms.searchlog;

import java.awt.List;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Map;

public class SortByValueApi {
	public static ArrayList<Integer> sortByValue(final Map<Integer, Integer> map) {
		ArrayList<Integer> arr = new ArrayList<Integer>();
		arr.addAll(map.keySet());
		
		Collections.sort(arr, new Comparator<Object>() {
			@SuppressWarnings("unchecked")
			public int compare(Object o1,Object o2) {
                Object v1 = map.get(o1);
                Object v2 = map.get(o2);
                return ((Comparable<Object>) v1).compareTo(v2);
			}
		});
		
		return arr;
	}
}
