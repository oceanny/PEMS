package com.spring.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.command.MailRequestCommand;
import com.spring.message.MimeAttachNotifier;
import com.spring.service.UserInfoService;

@Controller
public class MailController {

	@Autowired
	private UserInfoService userinfoService;

	@Autowired
	private MimeAttachNotifier notifier;

	@GetMapping("/mail/form")
	public void mailGet() throws Exception {

	}

	@PostMapping(value = "/sendMail", produces = "text/plain;charset=utf-8")
	public String mailPost(MailRequestCommand mailReq, HttpServletRequest request, RedirectAttributes rttr)
			throws Exception {
		String url = "redirect:/mail/success";

		String uploadPath = request.getServletContext().getRealPath("/resources/mail_attach");

		// 메일 메세지 보내기
		try {
			notifier.sendMail(mailReq, uploadPath);
			rttr.addFlashAttribute("mailRequest", mailReq);
		} catch (Exception e) {
			e.printStackTrace();
			url = "redirect:/fail";
			rttr.addFlashAttribute("message", "메일 보내기를 실패했습니다.");
		}

		return url;
	}

	@GetMapping("/mail/success")
	public void mailSuccess() {
	}

	@GetMapping("/mail/fail")
	public void mailFail() {
	}
}
