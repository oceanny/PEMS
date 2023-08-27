package com.spring.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.josephoconnell.html.HTMLInputFilter;
import com.spring.command.CCTVRegistCommand;
import com.spring.command.SearchListCommand;
import com.spring.dto.CCTVAttachVO;
import com.spring.dto.CCTVVO;
import com.spring.service.CCTVService;


@Controller
@RequestMapping("/mparkmanage")
public class CCTVController {
	
	@Resource(name = "cctvService")
	private CCTVService cctvService;
	
	@GetMapping("/cctv")
	public ModelAndView cctv(SearchListCommand command, ModelAndView mnv)throws Exception {
		String url = "/mparkmanage/cctv";
		
		Map<String, Object> dataMap = cctvService.getCCTVFileList(command);
		
		mnv.addObject("dataMap", dataMap);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	@GetMapping("/cctvlistregistForm")
	public String cctvRegistForm() throws Exception{
		String url = "/mparkmanage/cctvlistregistForm";
		
		return url;
	}
	
	@Resource(name="fileUploadPath")
	private String fileUploadPath;
	
	private List<CCTVAttachVO> savedMultipartFileToCCTVAttaches(List<MultipartFile> multiFiles, String savePath) throws Exception{
		if (multiFiles == null)
			return null;
		
		List<CCTVAttachVO> cctvattachList = new ArrayList<CCTVAttachVO>();
		for(MultipartFile multi: multiFiles) {
			String fileName = UUID.randomUUID().toString() + "$$" + multi.getOriginalFilename();
			
			File target = new File(savePath, fileName);
			target.mkdirs();
			multi.transferTo(target);
			
			CCTVAttachVO cctvattach = new CCTVAttachVO();
			cctvattach.setUploadPath(savePath);
			cctvattach.setFileName(fileName);
			cctvattach.setFileType(fileName.substring(fileName.lastIndexOf('.')+1).toUpperCase());
			
			cctvattachList.add(cctvattach);			
		}
		return cctvattachList;
	}
	
	@PostMapping(value = "/cctvregist", produces = "text/plain;charset=utf-8")
	public String cctvregist(CCTVRegistCommand command, RedirectAttributes rttr) throws Exception{
		String url = "redirect:/mparkmanage/cctv.do";
		
		List<MultipartFile> multiFiles = command.getUploadFile();
		String savePath = this.fileUploadPath;
		
		List<CCTVAttachVO> cctvattachList = savedMultipartFileToCCTVAttaches(multiFiles, savePath);
		
		CCTVVO cctv = command.toCCTVVO();
		cctv.setCctvFileName(HTMLInputFilter.htmlSpecialChars(cctv.getCctvFileName()));
		cctv.setCCTVAttachList(cctvattachList);
		
		cctvService.regist(cctv);
		
		rttr.addFlashAttribute("from", "regist");
		
		return url;
	}
	
	@GetMapping("/cctvlivedetail")
	public String ccrvliveForm() throws Exception{
		String url = "/mparkmanage/cctvlivedetail";
		
		return url;
	}
	
	@GetMapping("/cctvlistdetail")
	public String ccrvlistForm(int cctvFileNum, @RequestParam(defaultValue="")String from, Model model) throws Exception{
		String url = "/mparkmanage/cctvlistdetail";
		
		CCTVVO cctv = null;
		if(from.equals("cctv")) {
			url="redirect:/mparkmanage/cctvlistdetail.do?cctvFileNum=" + cctvFileNum;
		}else {
			cctv = cctvService.getCCTVFile(cctvFileNum);
		}
		
		model.addAttribute("cctv", cctv);
		
		return url;
	}
	
	@GetMapping("/cctvlistmodify")
	public String cctvlistmodifyForm() throws Exception{
		String url = "/mparkmanage/cctvlistmodify";
		
		return url;
	}
	
}
