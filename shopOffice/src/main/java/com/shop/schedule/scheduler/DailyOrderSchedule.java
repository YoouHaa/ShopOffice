package com.shop.schedule.scheduler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shop.schedule.service.DailyOrderService;

//@Controller
public class DailyOrderSchedule {
	
	@Autowired
	DailyOrderService service;
	
	//@Scheduled(cron = " 0 0 3 * * * ")
	public void mainjob() {
		try {
			
			int c = service.insertDailyOrder();
			if(c>0) {
				System.out.println(c + "건이 등록되었습니다.");
			}
		}catch (Exception e) {
			System.out.println("* Batch 시스템이 예기치 않게 종료되었습니다. Message: {}"
											+e.getMessage());
		}
	}
	/*
	 * @RequestMapping("/schedule/main") public String main() throws Exception {
	 * return "schedule/main"; }
	 */
	
	
}
