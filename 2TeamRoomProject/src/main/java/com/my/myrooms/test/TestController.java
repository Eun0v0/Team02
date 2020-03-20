package com.my.myrooms.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Locale;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.my.myrooms.HomeController;

import lombok.extern.slf4j.Slf4j;

/**
 * Handles requests for the application home page.
 */

@Slf4j
@Controller
public class TestController {
	
	@Autowired
	PSeoulDBHandle pSeoulDBHandle;
	@Autowired
	ForeignerDBHandle foreignerDBHandle;
	@Autowired
	FineDustDBHandle fineDustDBHandle;
	@Autowired
	TrafficDBHandle trafficDBHandle;
	@Autowired
	NoiseDBHandle noiseDBHandle;
	@Autowired
	CrimeDBHandle crimeDBHandle;
	@Autowired
	WSafeZoneDBHandle wSafeZoneDBHandle;
	@Autowired
	HousePriceDBHandle housePriceDBHandle;
	@Autowired
	CustomerDBHandle customerDBHandle;
	@Autowired
	CusOptionDBHandle cusOptionDBHandle;
	@Autowired
	SearchLogDBHandle searchLogDBHandle;
	@Autowired
	LocCodeDBHandle locCodeDBHandle;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/testView", method = RequestMethod.GET)
	public String testView(Locale locale, Model model) {
		
		return "testView";
	}
	
	@RequestMapping(value = "/testPSeoulView", method = RequestMethod.GET)
	public void testPSeoulView(HttpServletResponse response, Model model) {

		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");

		try {
			PrintWriter out = response.getWriter();
			String jsonStr = pSeoulDBHandle.makeJson();

			if (jsonStr != null) {
				out.print(jsonStr);
				out.flush();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "/testForeignerView", method = RequestMethod.GET)
	public void testForeignerView(HttpServletResponse response, Model model) {

		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");

		try {
			PrintWriter out = response.getWriter();
			String jsonStr = foreignerDBHandle.makeJson();

			if (jsonStr != null) {
				out.print(jsonStr);
				out.flush();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "/testFineDustView", method = RequestMethod.GET)
	public void testFineDustView(HttpServletResponse response, Model model) {

		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");

		try {
			PrintWriter out = response.getWriter();
			String jsonStr = fineDustDBHandle.makeJson();

			if (jsonStr != null) {
				out.print(jsonStr);
				out.flush();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "/testTrafficView", method = RequestMethod.GET)
	public void testTrafficView(HttpServletResponse response, Model model) {

		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");

		try {
			PrintWriter out = response.getWriter();
			String jsonStr = trafficDBHandle.makeJson();

			if (jsonStr != null) {
				out.print(jsonStr);
				out.flush();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "/testNoiseView", method = RequestMethod.GET)
	public void testNoiseView(HttpServletResponse response, Model model) {

		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");

		try {
			PrintWriter out = response.getWriter();
			String jsonStr = noiseDBHandle.makeJson();

			if (jsonStr != null) {
				out.print(jsonStr);
				out.flush();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "/testCrimeView", method = RequestMethod.GET)
	public void testCrimeView(HttpServletResponse response, Model model) {

		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");

		try {
			PrintWriter out = response.getWriter();
			String jsonStr = crimeDBHandle.makeJson();

			if (jsonStr != null) {
				out.print(jsonStr);
				out.flush();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "/testWSafeZoneView", method = RequestMethod.GET)
	public void testWSafeZoneView(HttpServletResponse response, Model model) {

		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");

		try {
			PrintWriter out = response.getWriter();
			String jsonStr = wSafeZoneDBHandle.makeJson();

			if (jsonStr != null) {
				out.print(jsonStr);
				out.flush();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "/testHousePriceView", method = RequestMethod.GET)
	public void testHousePriceView(HttpServletResponse response, Model model) {

		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");

		try {
			PrintWriter out = response.getWriter();
			String jsonStr = housePriceDBHandle.makeJson();

			if (jsonStr != null) {
				out.print(jsonStr);
				out.flush();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "/testCustomerView", method = RequestMethod.GET)
	public void testCustomerView(HttpServletResponse response, Model model) {

		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");

		try {
			PrintWriter out = response.getWriter();
			String jsonStr = customerDBHandle.makeJson();

			if (jsonStr != null) {
				out.print(jsonStr);
				out.flush();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "/testCusOptionView", method = RequestMethod.GET)
	public void testCusOptionView(HttpServletResponse response, Model model) {

		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");

		try {
			PrintWriter out = response.getWriter();
			String jsonStr = cusOptionDBHandle.makeJson();

			if (jsonStr != null) {
				out.print(jsonStr);
				out.flush();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "/testSearchLogView", method = RequestMethod.GET)
	public void testSearchingView(HttpServletResponse response, Model model) {

		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");

		try {
			PrintWriter out = response.getWriter();
			String jsonStr = searchLogDBHandle.makeJson();

			if (jsonStr != null) {
				out.print(jsonStr);
				out.flush();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "/testLocCodeView", method = RequestMethod.GET)
	public void testLocCodeView(HttpServletResponse response, Model model) {

		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");

		try {
			PrintWriter out = response.getWriter();
			String jsonStr = locCodeDBHandle.makeJson();

			if (jsonStr != null) {
				out.print(jsonStr);
				out.flush();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}
