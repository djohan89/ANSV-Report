package vn.ansv.controller.Web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	/*
	 * @RequestMapping(value = { "/", "/login" }, method = RequestMethod.GET) public
	 * ModelAndView login() { ModelAndView mav = new ModelAndView("web/login");
	 * return mav; }
	 */
	
	@RequestMapping(value = { "/", "/trang_chu" }, method = RequestMethod.GET)
	public ModelAndView webHome() {
		ModelAndView mav = new ModelAndView("web/home_new");
		return mav;
	}
	
	/*
	 * @RequestMapping(value = { "/test" }, method = RequestMethod.GET) public
	 * ModelAndView test() { ModelAndView mav = new ModelAndView("web/test"); return
	 * mav; }
	 */
	
	
/* Đầu: Báo cáo 1 */
	@RequestMapping(value = { "/sheet_1" }, method = RequestMethod.GET)
	public ModelAndView sheet_1() {
		ModelAndView mav = new ModelAndView("web/sheet_1");
		return mav;
	}
	
	@RequestMapping(value = { "/vnpt_net" }, method = RequestMethod.GET)
	public ModelAndView vnpt_net() {
		ModelAndView mav = new ModelAndView("web/vnpt_net");
		return mav;
	}
	
	/*
	 * @RequestMapping(value = { "/vnpt_net2" }, method = RequestMethod.GET) public
	 * ModelAndView vnpt_net2() { ModelAndView mav = new
	 * ModelAndView("web/vnpt_net2"); return mav; }
	 */
/* Cuối: Báo cáo 1 */
	
	
	
/* Đầu: Báo cáo 2 */
	@RequestMapping(value = { "/sheet_2" }, method = RequestMethod.GET)
	public ModelAndView sheet_2() {
		ModelAndView mav = new ModelAndView("web/sheet_2");
		return mav;
	}
/* Cuối: Báo cáo 2 */
	
	
	
/* Ã„ï¿½Ã¡ÂºÂ§u: BÃƒÂ¡o cÃƒÂ¡o 3 */
	@RequestMapping(value = { "/sheet_3" }, method = RequestMethod.GET)
	public ModelAndView sheet_3() {
		ModelAndView mav = new ModelAndView("web/sheet_3");
		return mav;
	}
/* Cuối: Báo cáo 3 */
	
	
	
/* Đầu: Báo cáo người phụ trách */
	@RequestMapping(value = { "/bao_cao_sheet_1" }, method = RequestMethod.GET)
	public ModelAndView bao_cao_sheet_1() {
		ModelAndView mav = new ModelAndView("web/bao_cao_sheet_1");
		return mav;
	}
	
	@RequestMapping(value = { "/bao_cao_sheet_2" }, method = RequestMethod.GET)
	public ModelAndView bao_cao_sheet_2() {
		ModelAndView mav = new ModelAndView("web/bao_cao_sheet_2");
		return mav;
	}
	
	@RequestMapping(value = { "/bao_cao_sheet_3" }, method = RequestMethod.GET)
	public ModelAndView bao_cao_sheet_3() {
		ModelAndView mav = new ModelAndView("web/bao_cao_sheet_3");
		return mav;
	}
/* Cuối: Báo cáo người phụ trách */
	
/* Đầu: Lọc các dự án trên header */
	@RequestMapping(value = { "/h1_s1" }, method = RequestMethod.GET)
	public ModelAndView h1_s1() {
		ModelAndView mav = new ModelAndView("web/h1_s1");
		return mav;
	}
	
}
