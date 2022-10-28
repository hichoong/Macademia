package com.kh.md.academy.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.md.academy.service.AcademyService;
import com.kh.md.academy.vo.CategoryVo;
import com.kh.md.academy.vo.ClassVo;
import com.kh.md.academy.vo.CurriculumVo;
import com.kh.md.academy.vo.StudentVo;
import com.kh.md.member.vo.MemberVo;

@Controller
@RequestMapping("academy")
public class AcademyController {
	
	private final AcademyService service;
	
	@Autowired
	public AcademyController(AcademyService service) {
		this.service = service;
	}

//화면 보여주기-----------------------------------------
	@GetMapping("roll")
	public String roll() {
		return "academy/roll";
	}
	
	@GetMapping("roll/detail")
	public String rollDetail() {
		return "academy/roll-detail";
	}
	
	@GetMapping("roll/detail/edit")
	public String rollDetailEdit() {
		return "academy/roll-detail-edit";
	}
	
	@GetMapping("search")
	public String search() {
		return "academy/search";
	}
	
	@GetMapping("search/detail")
	public String searchDetail() {
		return "academy/search-detail";
	}
	
	@GetMapping("search/detail/edit")
	public String searchDetailEdit() {
		return "academy/search-detail-edit";
	}
	
	@GetMapping("addStd")
	public String addStudent() {
		return "academy/add-student";
	}
	
	@GetMapping("curriculum")
	public String curriculum() {
		return "academy/curriculum";
	}
	
	@GetMapping("addCurr")
	public String addCurriculum(Model model) {
		//카테고리 목록 넘겨주면서 화면 보여주기
		List<CategoryVo> category = service.showCategory();
		List<MemberVo> member = service.showMember();
		
		model.addAttribute("category", category);
		model.addAttribute("member", member);
		return "academy/add-curriculum";
	}
//--------------------------------------------------
	
	//수강생 추가(인서트) 하기
 	@PostMapping("addStd")
 	public String addStudent(Model model, StudentVo vo) {
 		
 		int result = service.insertStudent(vo);
 		
 		if(result == 1) {
 			model.addAttribute("msg", "수강생 정보가 입력되었습니다.");
 			return"academy/search";
 		}else {
 			return"error/errorPage";
 		}
 		
 	}
	
	//커리큘럼 추가(인서트) 하기
	@PostMapping("addCurr")
	public String addCurriculum(Model model, ClassVo vo, CurriculumVo cvo) {
		
		int classInsert = service.insertClass(vo);
		int curInsert = service.insertCurriculum(cvo);
		
		System.out.println(classInsert);
		System.out.println(curInsert);
		
		if(classInsert * curInsert == 1) {
			model.addAttribute("msg", "새로운 커리큘럼이 생성되었습니다.");
			return "academy/curriculum";
		}else {
			return "error/errorPage";
		}
		
	}
	
	
}//class
