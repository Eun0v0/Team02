package com.my.myrooms.stat;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.my.myrooms.searchlog.GuScoreModel;
import com.my.myrooms.searchlog.SortByValueApi;
import com.my.myrooms.test.SearchLogDBHandle;

@Service
public class StatApiImpl implements StatApi {

	@Autowired
	SearchLogDBHandle searchLogDBHandle; 
	
	ArrayList<StatLogModel> statLogList;
	
	@Override
	public void getSearchLog() {
		
		statLogList = new ArrayList<StatLogModel>(); 
		statLogList = searchLogDBHandle.selectAllLog();
	}

	@Override
	public String statByOption(String key) {
		
		if(statLogList == null) {
			getSearchLog();
		}
		
		Map<String, String> topOptionMap = new HashMap<String, String>();
		Map<String, Map<String, Integer>> statMap = new HashMap<String, Map<String, Integer>>();

		System.out.println("statByOption() : statLogList 사이즈: " + statLogList.size());
		for (StatLogModel log : statLogList) {
			String keyVal = null;
			
			if (key.equals("age")) {
				keyVal = String.valueOf(log.getAge());
			} else if (key.equals("sex")) {
				keyVal = log.getSex();
			} else if (key.equals("job")) {
				keyVal = log.getJob();
			}
			String option = log.getSelectOption();
			
			if (!statMap.containsKey(keyVal)) 
				statMap.put(keyVal, new HashMap<String, Integer>());
			
			if (!statMap.get(keyVal).containsKey(option)) 
				statMap.get(keyVal).put(option, 0);
			
			int newCount = statMap.get(keyVal).get(option) + 1;
			statMap.get(keyVal).put(option, newCount);	
		}
		
		for (String k : statMap.keySet()) {
			Map<String, Integer> sortOptionMap = new HashMap<String, Integer>();
			
			Iterator<String> iter = SortByValueApi.sortStringByValue(statMap.get(k)).iterator();

			String topOption = null;
			while (iter.hasNext()) {
				String option = iter.next();
				if (topOption == null) topOption = option;
				sortOptionMap.put(option, statMap.get(k).get(option));
			}
			
			topOptionMap.put(k, topOption);
			
			statMap.get(k).clear();
			for (String sortOption : sortOptionMap.keySet())
				statMap.get(k).put(sortOption, sortOptionMap.get(sortOption));
		}
		
		JSONArray retArr = new JSONArray();

		for (String k : statMap.keySet()) {
			JSONObject obj = new JSONObject();
			
			obj.put("option", k);
			obj.put("topOption", topOptionMap.get(k));
			
			for (String opName : statMap.get(k).keySet()) {
				obj.put(opName, statMap.get(k).get(opName));
			}
			retArr.add(obj);
		}

		System.out.println(retArr);
		return retArr.toJSONString();
	}
	
}
