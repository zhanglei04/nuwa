package com.genesis.nuwa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.genesis.nuwa.service.IPostLevelDeclService;
import com.genesis.nuwa.vo.PostLevelDeclDetlVo;

@Controller
@RequestMapping("rest/postmgr")
public class PostMgrController extends BaseController {

	@Autowired
	private IPostLevelDeclService postLevelDeclService;

	@RequestMapping(method = RequestMethod.GET, value = "/index")
	public ModelAndView index() {
		ModelAndView mav = new ModelAndView("postmgr/postLevelDecl");
		PostLevelDeclDetlVo postLevelDeclDetlVo = this.postLevelDeclService
				.findPostLevelStatusLast();
		mav.addObject("postLevelDeclDetlVo", postLevelDeclDetlVo);
		return mav;
	}

	@RequestMapping(method = RequestMethod.GET, value = "/getTableDataTest")
	@ResponseBody
	public String getTableDataTest() {
		return "{\"total\":800,\"rows\":[{\"id\":0,\"name\":\"Item0\",\"price\":\"$0\"},{\"id\":1,\"name\":\"Item1\",\"price\":\"$1\"},{\"id\":2,\"name\":\"Item2\",\"price\":\"$2\"},{\"id\":3,\"name\":\"Item3\",\"price\":\"$3\"},{\"id\":4,\"name\":\"Item4\",\"price\":\"$4\"},{\"id\":5,\"name\":\"Item5\",\"price\":\"$5\"},{\"id\":6,\"name\":\"Item6\",\"price\":\"$6\"},{\"id\":7,\"name\":\"Item7\",\"price\":\"$7\"},{\"id\":8,\"name\":\"Item8\",\"price\":\"$8\"},{\"id\":9,\"name\":\"Item9\",\"price\":\"$9\"}]}";
	}

	@RequestMapping(method = RequestMethod.GET, value = "/export")
	public String export() {
		return "nuwa/export.html";
	}

	@RequestMapping(method = RequestMethod.POST, value = "/savePostLevel")
	@ResponseBody
	public String savePostLevel(PostLevelDeclDetlVo postLevelDeclDetlVo) {
		try {
			this.postLevelDeclService.saveOrUpdatePostLevelDecl(postLevelDeclDetlVo);
			return BaseController.toJson(true, "操作成功");
		} catch (Exception e) {
			BaseController.logger.error("保存岗位申请失败", e);
			return BaseController.toJson(false, "操作失败");
		}
	}

	@RequestMapping(method = RequestMethod.POST, value = "/submitPostLevel")
	public String submitPostLevel() {
		return "nuwa/export.html";
	}
}
