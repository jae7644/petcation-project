package controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import service.BookMarkListService;

@Controller
public class BookMarkRegistController {
	@Autowired
	private BookMarkListService bookMarkListService;
	
	@RequestMapping("/bookMark_regist.bo")
	public String registBookMark(HttpServletRequest request) {
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");
		String tel = request.getParameter("tel");
		bookMarkListService.registBookmark(name, addr, tel);
		
		return "redirect:/bookMark_list.bo";
	}
	
}
