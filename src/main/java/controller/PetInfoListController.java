package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import service.PetInfoListService;
import vo.PetVO;

@Controller
public class PetInfoListController {
	@Autowired
	private PetInfoListService petInfoListService;
	
	/*@RequestMapping("/petInfo_list.pets")
	public ModelAndView viewPetInfoList() {
		ModelAndView mav = new ModelAndView();
		List<PetVO> petInfoList = petInfoListService.getPetInfoList();
		System.out.println("컨트롤러:"+petInfoList.toString());
		mav.setViewName("petInfoList");
		mav.addObject("petInfoList",petInfoList);
		return mav;
	}*/
	
	@RequestMapping("/petInfo_list.pets")
	public ModelAndView viewPetInfoList(@RequestParam String user_Id) {
		System.out.println("유저아이디확인:" + user_Id);
		ModelAndView mav = new ModelAndView();
		List<PetVO> petInfoList = petInfoListService.getPetInfoList(user_Id);
		System.out.println("컨트롤러:"+petInfoList.toString());
		mav.setViewName("petInfoList");
		mav.addObject("petInfoList",petInfoList);
		return mav;
	}
}


