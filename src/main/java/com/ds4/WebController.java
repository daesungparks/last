package com.ds4;

import java.io.File;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ds4.dto.FileDto;

import com.ds4.dao.IDao;
import com.ds4.dto.BoardDto;
import com.ds4.dto.MMemberDto;
import com.ds4.dto.MemberDto;
import com.ds4.dto.CalDto;
import com.ds4.dto.LockDto;
import com.ds4.dto.LockrentDto;

import lombok.RequiredArgsConstructor;

@Controller
public class WebController {
	
	@Autowired
	private SqlSession sqlSession;
	private WebController service;
	
	
	@RequestMapping(value = "/")
	public String home() {
		return "main";
	}
	@RequestMapping(value = "mindex")
	public String mhome() {
		return "mindex";
	}
	//=========================================================================
	@RequestMapping(value = "/main")
	public String main() {
		return "main";
	}
	@RequestMapping(value = "/main2")
	public String main2() {
		return "main2";
	}
	//=========================================================================
	@RequestMapping(value = "/index")
	public String index() {
		return "index";
	}
	@RequestMapping(value = "/Mindex")
	public String Mindex() {
		return "Mindex";
	}

	//=========================================================================
	@RequestMapping(value = "/login")
	public String login() {
		return "login";
	}
	@RequestMapping(value = "/mlogin")
	public String mlogin() {
		return "mlogin";
	}
	//=========================================================================
	@RequestMapping(value = "/join")
	public String join() {
		return "join";
	}
	@RequestMapping(value = "/mjoin")
	public String mjoin() {
		return "mjoin";
	}
	@RequestMapping(value = "/IdCheckForm")
	public String IdCheckForm() {
		return "IdCheckForm";
	}
	//=========================================================================
	@RequestMapping(value = "/question")
	public String question(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		
		String sid = (String) session.getAttribute("sid");
		String sname = (String) session.getAttribute("sname");
		
		IDao dao = sqlSession.getMapper(IDao.class);				
		
		if(sid != null) {
			MemberDto memberDto = dao.memberInfoDao(sid);
			
			model.addAttribute("memberDto", memberDto);
			model.addAttribute("sid",sid);
			
		} else {
			model.addAttribute("sid", "GUEST");
			model.addAttribute("sname", "");
		}
		
		return "question";
	}
	//=========================================================================
	
	@RequestMapping(value = "/mquestion")
	public String mquestion(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		
		String msid = (String) session.getAttribute("msid");
		String msname = (String) session.getAttribute("msname");
		
		IDao dao = sqlSession.getMapper(IDao.class);				
		
		if(msid != null) {
			MMemberDto mmemberDto = dao.mmemberInfoDao(msid);
			
			model.addAttribute("mmemberDto", mmemberDto);
			model.addAttribute("msid",msid);
			
		} else {
			model.addAttribute("msid", "GUEST");
			model.addAttribute("msname", "");
		}
		
		return "mquestion";
	}
	//=========================================================================
		
		@RequestMapping(value ="/address") 
		public String address() {
			System.out.println("????????? API ?????????");
			
			return "address";
		}
	//=========================================================================
	@RequestMapping(value = "/list")
	public String list(HttpServletRequest request,Model model) {
		
		 String searchKeyword = request.getParameter("searchKeyword");
	      String searchOption = request.getParameter("searchOption");
		
		String qnum = request.getParameter("qnum");
		
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		ArrayList<BoardDto> dtos = dao.listDao();
		
	
		
		 if(searchKeyword == null) {
			 dtos = dao.listDao();
	      }else if(searchOption.equals("title")) {
	    	  dtos = dao.qTitleSearchlist(searchKeyword);
	      } else if(searchOption.equals("content")) {
	    	  dtos = dao.qContentSearchlist(searchKeyword);
	      } else if(searchOption.equals("writer")) {
	    	  dtos = dao.qNameSearchlist(searchKeyword);
	      }
		
		int listCount = dtos.size(); 
		
		model.addAttribute("list", dtos);
		model.addAttribute("listCount",listCount);
		
		return "list";
	}
	//=========================================================================
	
	@RequestMapping(value = "/mlist")
	public String mlist(Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		ArrayList<BoardDto> dtos = dao.listDao();
		
		model.addAttribute("mlist", dtos);
		
		return "mlist";
	}
	//=========================================================================
	@RequestMapping(value = "/joinOk", method=RequestMethod.POST)
	public String joinOk(HttpServletRequest request, Model model) {
		
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		String mname = request.getParameter("mname");
		String memail = request.getParameter("memail");	
		String mtel = request.getParameter("mtel");	
		String maddress = request.getParameter("maddress");	
		String maddresss = request.getParameter("maddresss");	
		String maddressss = request.getParameter("maddressss");	
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		int checkId = dao.checkIdDao(mid);//????????? ?????? ????????????(1?????? ?????? ??????, 0?????? ?????? ??????)
		
		if(checkId == 0) {
		
			dao.joinDao(mid, mpw, mname, memail, mtel, maddress, maddresss, maddressss);
			
			HttpSession session = request.getSession();
			
			session.setAttribute("sid", mid);
			session.setAttribute("sname", mname);
			
			model.addAttribute("mname", mname);
			model.addAttribute("mid", mid);
			
		}
		
		model.addAttribute("checkId", checkId);//checkId?????? 1(??????????????????) ?????? 0(????????????)??? ??????
		
		
		return "joinOk";
	}
	//=========================================================================
	
	@RequestMapping(value = "/mjoinOk", method=RequestMethod.POST)
	public String mjoinOk(HttpServletRequest request, Model model) {
		
		String mmid = request.getParameter("mmid");
		String mmpw = request.getParameter("mmpw");
		String mmname = request.getParameter("mmname");
		String mmemail = request.getParameter("mmemail");	
		String mmtel = request.getParameter("mmtel");	
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		int checkId = dao.checkIdDao(mmid);//????????? ?????? ????????????(1?????? ?????? ??????, 0?????? ?????? ??????)
		
		if(checkId == 0) {
		
			dao.mjoinDao(mmid, mmpw, mmname, mmemail,mmtel);
			
			HttpSession session = request.getSession();
			
			session.setAttribute("msid", mmid);
			session.setAttribute("msname", mmname);
			
			model.addAttribute("mmname", mmname);
			model.addAttribute("mmid", mmid);
			
		}
		
		model.addAttribute("checkId", checkId);//checkId?????? 1(??????????????????) ?????? 0(????????????)??? ??????
		
		
		return "mjoinOk";
	}
	//=========================================================================
	@RequestMapping(value = "/loginOk", method=RequestMethod.POST)
	public String loginOk(HttpServletRequest request, Model model) {
		
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		int checkId = dao.checkIdDao(mid);//1??? ???????????? ???????????? ??????		
		
		int checkIdPw = dao.checkIDPwDao(mid, mpw);//???????????? ??????????????? ?????? ???????????? 1??? ??????
		
		model.addAttribute("checkId", checkId);
		model.addAttribute("checkIdPw", checkIdPw);
		
		if (checkIdPw == 1) {
			
			MemberDto memberDto = dao.memberInfoDao(mid);//???????????? ???????????? ?????? ????????? dto??? ??????
			
			//??????????????????
			HttpSession session = request.getSession();
			
			String memberid = memberDto.getMid();
			String membername = memberDto.getMname();
			
			session.setAttribute("sid", memberid);
			session.setAttribute("sname", membername);
			
			model.addAttribute("mid", memberid);
			model.addAttribute("mname", membername);
		}
		
		return "loginOk";
	}
	//=========================================================================	
	
	@RequestMapping(value = "/mloginOk", method=RequestMethod.POST)
	public String mloginOk(HttpServletRequest request, Model model) {
		
		String mmid = request.getParameter("mmid");
		String mmpw = request.getParameter("mmpw");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		int checkId = dao.mcheckIdDao(mmid);//1??? ???????????? ???????????? ??????		
		
		int checkIdPw = dao.mcheckIDPwDao(mmid, mmpw);//???????????? ??????????????? ?????? ???????????? 1??? ??????
		
		model.addAttribute("checkId", checkId);
		model.addAttribute("checkIdPw", checkIdPw);
		
		if (checkIdPw == 1) {
			
				MMemberDto memberDto = dao.mmemberInfoDao(mmid);//???????????? ???????????? ?????? ????????? dto??? ??????
			
			//??????????????????
			HttpSession session = request.getSession();
			
			String memberid = memberDto.getMmid();
			String membername = memberDto.getMmname();
			
			session.setAttribute("msid", memberid);
			session.setAttribute("msname", membername);
			
			model.addAttribute("mmid",memberid);
			model.addAttribute("mmname", membername);
		}
		
		return "mloginOk";
	}
	//=========================================================================	
	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) {
		
		session.invalidate();//?????? ??????->????????????
		
		return "login";
	}
	
	@RequestMapping(value = "/mlogout")
	public String mlogout(HttpSession session) {
		
		session.invalidate();//?????? ??????->????????????
		
		return "mlogin";
	}
	//=========================================================================	
	@RequestMapping(value = "/infomodify")
	public String infomodify(HttpServletRequest request, Model model) {
			
		IDao dao = sqlSession.getMapper(IDao.class);
		
		HttpSession session = request.getSession();
		
		String sid = (String) session.getAttribute("sid");
		
		MemberDto memberDto = dao.memberInfoDao(sid);//???????????? ???????????? ?????? ????????? dto??? ??????
		
		model.addAttribute("memberDto", memberDto);
		
		return "infomodify";
	}
	
	//=========================================================================	
	
	@RequestMapping(value = "/minfomodify")
	public String minfomodify(HttpServletRequest request, Model model) {
			
		IDao dao = sqlSession.getMapper(IDao.class);
		
		HttpSession session = request.getSession();
		
		String msid = (String) session.getAttribute("msid");
		
		MMemberDto mmemberDto = dao.mmemberInfoDao(msid);//???????????? ???????????? ?????? ????????? dto??? ??????
		
		model.addAttribute("mmemberDto", mmemberDto);
		
		return "minfomodify";
	}
	
	//=========================================================================	
	@RequestMapping(value = "/infomodifyOk")
	public String infomodifyOk(HttpServletRequest request, Model model) {
		
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		String mname = request.getParameter("mname");
		String memail = request.getParameter("memail");
		String mtel = request.getParameter("mtel");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.infomodifyDao(mpw, mname, memail,mtel, mid);
		
		MemberDto memberDto = dao.memberInfoDao(mid);//????????? ????????? ???????????? ?????? ????????? dto??? ??????
		
		model.addAttribute("memberDto", memberDto);
		
		return "infomodifyOk";
	}
	//=========================================================================	
	
	@RequestMapping(value = "/minfomodifyOk")
	public String minfomodifyOk(HttpServletRequest request, Model model) {
		
		String mmid = request.getParameter("mmid");
		String mmpw = request.getParameter("mmpw");
		String mmname = request.getParameter("mmname");
		String mmemail = request.getParameter("mmemail");
		String mmtel = request.getParameter("mmtel");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.minfomodifyDao(mmpw, mmname, mmemail,mmtel, mmid);
		
		HttpSession session = request.getSession();
	      
	      String msid = (String)session.getAttribute("msid");

		MMemberDto mmemberDto = dao.mmemberInfoDao(mmid);//????????? ????????? ???????????? ?????? ????????? dto??? ??????
		
		model.addAttribute("mmemberDto", mmemberDto);
		
		return "minfomodifyOk";
	}
	
	//=========================================================================	
		@RequestMapping(value = "/write", method=RequestMethod.POST)
		public String writeOk(HttpServletRequest request, Model model ,@RequestPart MultipartFile uploadFiles)throws Exception {
			
			String qid = request.getParameter("qid");
			String qname = request.getParameter("qname");
			String qcontent = request.getParameter("qcontent");
			String qemail = request.getParameter("qemail");
			
			IDao dao = sqlSession.getMapper(IDao.class);
	/*		
			HttpSession session = request.getSession();
			
			String fbid = (String) session.getAttribute("sessionId");
			
			if(fbid == null) {
				fbid = "GUEST";	
			}
		
			if(uploadFiles.isEmpty()) {
				dao.writeDao(qid, qname, qcontent, qemail);
			}else {
				dao.writeDao(qid, qname, qcontent, qemail);
				ArrayList<BoardDto> dtos = dao.listDao();
				
				String orifilename = uploadFiles.getOriginalFilename();//?????? ????????? ?????? ????????????
				String fileextension =  FilenameUtils.getExtension(orifilename);//????????? ????????????(???????????? ??????)
				String fileurl = "D:\\springboot_workspace\\ParkProject04\\src\\main\\resources\\static\\uploadfiles\\";
				String filename; //????????? ????????? ??????(????????? ???????????? ????????? ??????)
				File desinationFile;//java.io??? ???????????? ?????????
				

				do {
				filename = RandomStringUtils.randomAlphanumeric(32) + "." + fileextension;
				//????????????????????? ????????? ????????? ?????? 32?????? ??????????????? ????????? ??? ????????? ???????????? ????????? ????????? ????????? ?????? ??????
				desinationFile = new File(fileurl+filename);
				}while(desinationFile.exists());//?????? ????????? ????????? ???????????? ???????????? true ??????
			
				desinationFile.getParentFile().mkdir();
				uploadFiles.transferTo(desinationFile);
				
				int boardnum = dtos.get(0).getQnum();//????????? ????????? ?????? ????????? ?????? ????????? ???????????? ?????? ????????????
				//????????? ????????? ?????? ????????? ?????? ????????? ???????????? ??? (FBoardDto)??? ????????? ????????? ??????(fbnum) ??? ??????
				
				dao.fbfileInsertDao(boardnum, filename, orifilename, fileurl, fileextension);
			}*/
				
			
			dao.writeDao(qid, qname, qcontent, qemail);
	
			return "redirect:list";
		}
	//=========================================================================	
	
	@RequestMapping(value = "/mwrite", method=RequestMethod.POST)
	public String mwrite(HttpServletRequest request, Model model) {
		
		String qid = request.getParameter("qid");
		String qname = request.getParameter("qname");
		String qcontent = request.getParameter("qcontent");
		String qemail = request.getParameter("qemail");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.writeDao(qid, qname, qcontent, qemail);
		
		return "redirect:mlist";
	}
	//=========================================================================
	@RequestMapping(value = "/qview")
	public String qview(HttpServletRequest request, Model model) {
		
		String qnum = request.getParameter("qnum");
		int qnumint = Integer.parseInt(qnum);
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
	
		
		BoardDto boardDto = dao.contentViewDao(qnum);
		FileDto fileDto = dao.fbGetfileinfoDao(qnum);
		
		model.addAttribute("contentDto", boardDto);
		model.addAttribute("fileDto",fileDto);
		model.addAttribute("rblist", dao.rblistDao(qnumint));//??????????????? ???????????? ????????????
		model.addAttribute("boardId",boardDto.getQid()); //????????? ????????? ????????????
		
		
		String qid = boardDto.getQid();
		
		model.addAttribute("boardId",qid);
		
		
		return "qview";
	}
	//=========================================================================	
	
	@RequestMapping(value = "/mqview")
	public String mqview(HttpServletRequest request, Model model) {
		
		String qnum = request.getParameter("qnum");
		int qnumint = Integer.parseInt(qnum);
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
	
		
		BoardDto boardDto = dao.contentViewDao(qnum);
		FileDto fileDto = dao.fbGetfileinfoDao(qnum);
		
		model.addAttribute("contentDto", boardDto);
		model.addAttribute("fileDto",fileDto);
		model.addAttribute("rblist", dao.rblistDao(qnumint));//??????????????? ???????????? ????????????
		model.addAttribute("boardId",boardDto.getQid()); //????????? ????????? ????????????
		
		
		String qid = boardDto.getQid();
		
		model.addAttribute("boardId",qid);
		
		return "mqview";
	}
	//=========================================================================	
	@RequestMapping(value = "/delete")
	public String delete(HttpServletRequest request, Model model) {
		
		String qnum = request.getParameter("qnum");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.deleteDao(qnum);
		
		return "redirect:list";
	}
	
	@RequestMapping(value = "/mmdelete")
	public String mmdelete(HttpServletRequest request, Model model) {
		
		String qnum = request.getParameter("qnum");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.deleteDao(qnum);
		
		return "redirect:mlist";
	}
	//=========================================================================	
	@RequestMapping(value="/qmodify")
	public String qmodify(HttpServletRequest request, Model model) {
		
		String qname = request.getParameter("qname");
		String qcontent = request.getParameter("qcontent");
		String qemail = request.getParameter("qemail");
		String qnum = request.getParameter("qnum");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.qmodifyDao(qname, qcontent, qemail, qnum);
		
		return "redirect:list";
	}
	//=========================================================================	
	
	@RequestMapping(value="/mqmodify")
	public String mqmodify(HttpServletRequest request, Model model) {
		
		String qname = request.getParameter("qname");
		String qcontent = request.getParameter("qcontent");
		String qemail = request.getParameter("qemail");
		String qnum = request.getParameter("qnum");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.qmodifyDao(qname, qcontent, qemail, qnum);
		
		return "redirect:mlist";
	}
	//=========================================================================	
	
	@RequestMapping(value="/mdelete")
	   public String mdelete(HttpServletRequest request, Model model) {
		  IDao dao = sqlSession.getMapper(IDao.class);
	      
	      HttpSession session = request.getSession();
	      
	      String sid = (String)session.getAttribute("sid");
	      
	      MemberDto memberDto = dao.memberInfoDao(sid);//???????????? ???????????? ?????? ????????? dto??? ??????
	      
	      model.addAttribute("memberDto", memberDto);
	      
	      return "mdelete";
	   }
	//=========================================================================
	
	@RequestMapping(value="/mddelete")
	   public String mddelete(HttpServletRequest request, Model model) {
		  IDao dao = sqlSession.getMapper(IDao.class);
	      
	      HttpSession session = request.getSession();
	      
	      String msid = (String)session.getAttribute("msid");
	      
	      MMemberDto mmemberDto = dao.mmemberInfoDao(msid);//???????????? ???????????? ?????? ????????? dto??? ??????
	      
	      model.addAttribute("mmemberDto", mmemberDto);
	      
	      return "mddelete";
	   }
	//=========================================================================
	@RequestMapping(value = "/DeleteOk")
	public String DeleteOk(HttpServletRequest request, Model model) {
		
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");

		
		  IDao dao = sqlSession.getMapper(IDao.class);
		
		  dao.mDeleteDao(mid,mpw);
		
		  HttpSession session = request.getSession();
	      
	      
	      session.invalidate();
	      
	      
	      return "DeleteOk";
	   }
	//=========================================================================
	
	@RequestMapping(value = "/mDeleteOk")
	public String mDeleteOk(HttpServletRequest request, Model model) {
		
		String mmid = request.getParameter("mmid");
		String mmpw = request.getParameter("mmpw");

		
		  IDao dao = sqlSession.getMapper(IDao.class);
		
		  dao.mmDeleteDao(mmid,mmpw);
		
		  HttpSession session = request.getSession();
	      
	   
	      
	      
	      session.invalidate();
	      
	      
	      return "mDeleteOk";
	   }
	//=========================================================================


/*
	@RequestMapping(value = "calender", method = RequestMethod.GET)
	public String calendar(Model model, HttpServletRequest request, DateData dateData){
		
		Calendar cal = Calendar.getInstance();
		DateData calendarData;
		//?????? ??????
		if(dateData.getDate().equals("")&&dateData.getMonth().equals("")){
			dateData = new DateData(String.valueOf(cal.get(Calendar.YEAR)),String.valueOf(cal.get(Calendar.MONTH)),String.valueOf(cal.get(Calendar.DATE)),null);
		}
		//?????? ?????? end

		Map<String, Integer> today_info =  dateData.today_info(dateData);
		List<DateData> dateList = new ArrayList<DateData>();
		
		//???????????? ?????? ????????? ???????????? ????????? ?????? ??????.
		//?????? ?????? ??????????????? ???????????? ?????? ????????? ??????
		for(int i=1; i<today_info.get("start"); i++){
			calendarData= new DateData(null, null, null, null);
			dateList.add(calendarData);
		}
		
		//?????? ??????
		for (int i = today_info.get("startDay"); i <= today_info.get("endDay"); i++) {
			if(i==today_info.get("today")){
				calendarData= new DateData(String.valueOf(dateData.getYear()), String.valueOf(dateData.getMonth()), String.valueOf(i), "today");
			}else{
				calendarData= new DateData(String.valueOf(dateData.getYear()), String.valueOf(dateData.getMonth()), String.valueOf(i), "normal_date");
			}
			dateList.add(calendarData);
		}

		//?????? ?????? ??? ???????????? ??????
		int index = 7-dateList.size()%7;
		
		if(dateList.size()%7!=0){
			
			for (int i = 0; i < index; i++) {
				calendarData= new DateData(null, null, null, null);
				dateList.add(calendarData);
			}
		}
		System.out.println(dateList);
		
		//????????? ??????
		model.addAttribute("dateList", dateList);		//?????? ????????? ??????
		model.addAttribute("today_info", today_info);
		return "calender";
	}

*/


	
	//=========================================================================
	@RequestMapping(value = "/callist")
	public String callist(HttpServletRequest request, Model model) {
		
		 String searchKeyword = request.getParameter("searchKeyword");
	      String searchOption = request.getParameter("searchOption");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		ArrayList<CalDto> dtos = dao.callistDao();
		
		if(searchKeyword == null) {
			 dtos = dao.callistDao();
	      }else if(searchOption.equals("title")) {
	    	  dtos = dao.calTitleSearchlist(searchKeyword);
	      } else if(searchOption.equals("content")) {
	    	  dtos = dao.calContentSearchlist(searchKeyword);
	      } else if(searchOption.equals("writer")) {
	    	  dtos = dao.calNameSearchlist(searchKeyword);
	      }
		
		model.addAttribute("callist", dtos);
		
		
		
		return "callist";
	}
	//=========================================================================
		@RequestMapping(value = "/mcallist")
		public String mcallist(HttpServletRequest request, Model model) {
			
			 String searchKeyword = request.getParameter("searchKeyword");
		      String searchOption = request.getParameter("searchOption");
			
			
			
			IDao dao = sqlSession.getMapper(IDao.class);
			
			ArrayList<CalDto> dtos = dao.callistDao();
			
			if(searchKeyword == null) {
				 dtos = dao.callistDao();
		      }else if(searchOption.equals("title")) {
		    	  dtos = dao.calTitleSearchlist(searchKeyword);
		      } else if(searchOption.equals("content")) {
		    	  dtos = dao.calContentSearchlist(searchKeyword);
		      } else if(searchOption.equals("writer")) {
		    	  dtos = dao.calNameSearchlist(searchKeyword);
		      }
			
			model.addAttribute("callist", dtos);
			
			
			
			return "mcallist";
		}
	//=============================================================================
		
	@RequestMapping(value = "/checktest")  // ?????? ?????? jsp
	public String check(HttpServletRequest request, Model model) {
		
		HttpSession session = request.getSession();
		
		String sid = (String) session.getAttribute("sid");
		String sname = (String) session.getAttribute("sname");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
//		CalDto calDto = dao.calmemberInfoDao(sid);
		
//		model.addAttribute("caldto",calDto);
		
		if(sid != null) {
			MemberDto memberDto = dao.memberInfoDao(sid);
			
			model.addAttribute("memberDto", memberDto);
			model.addAttribute("sid",sid);
			
		} else {
			model.addAttribute("sid", "GUEST");
			model.addAttribute("sname", "");
		}
		
		
		return "checktest";
	}
	


//=============================================================================

	@RequestMapping(value = "/calwrite")
	public String calwrite(HttpServletRequest request, Model model) {
		
		
		String cid = request.getParameter("cid");
		String cname = request.getParameter("cname");
		String cstartdate = request.getParameter("cstartDate");
		String cenddate = request.getParameter("cendDate");	
		String cenjoy = request.getParameter("cenjoy");	
		String ctech = request.getParameter("ctech");	
		String cmemo = request.getParameter("cmemo");	
		

		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.calwriteDao(cid, cname, cstartdate, cenddate, cenjoy, ctech, cmemo);

		return "redirect:callist";
	}
	
	
	//=========================================================================	
/*	
	@RequestMapping(value = "/mwrite", method=RequestMethod.POST)
	public String mwrite(HttpServletRequest request, Model model) {
		
		String qid = request.getParameter("qid");
		String qname = request.getParameter("qname");
		String qcontent = request.getParameter("qcontent");
		String qemail = request.getParameter("qemail");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.writeDao(qid, qname, qcontent, qemail);
		
		return "redirect:mlist";
	}*/
	//=========================================================================
	@RequestMapping(value = "/calqview")
	public String calqview(HttpServletRequest request, Model model) {
		
		String cnum = request.getParameter("cnum");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		CalDto calDto = dao.calcontentViewDao(cnum);
		
		model.addAttribute("contentDto", calDto);
		
		String cid = calDto.getCid();
		
		model.addAttribute("boardId",cid);
		
		
		return "calqview";
	}
	//=========================================================================	
/*	
	@RequestMapping(value = "/mqview")
	public String mqview(HttpServletRequest request, Model model) {
		
		String qnum = request.getParameter("qnum");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		BoardDto boardDto = dao.contentViewDao(qnum);
		
		model.addAttribute("contentDto", boardDto);
		
		String qid = boardDto.getQid();
		
		model.addAttribute("boardId",qid);
		
		
		return "mqview";
	}*/
	//=========================================================================	
	@RequestMapping(value = "/caldelete")
	public String caldelete(HttpServletRequest request, Model model) {
		
		String qnum = request.getParameter("qnum");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.deleteDao(qnum);
		
		return "redirect:callist";
	}
/*	
	@RequestMapping(value = "/mmdelete")
	public String mmdelete(HttpServletRequest request, Model model) {
		
		String qnum = request.getParameter("qnum");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.deleteDao(qnum);
		
		return "redirect:mlist";
	}*/
	//=========================================================================	
	@RequestMapping(value="/calqmodify")
	public String calqmodify(HttpServletRequest request, Model model) {
		
		String qname = request.getParameter("name");
		String qcontent = request.getParameter("qcontent");
		String qemail = request.getParameter("qemail");
		String qnum = request.getParameter("qnum");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.qmodifyDao(qname, qcontent, qemail, qnum);
		
		return "redirect:callist";
	}
	//=========================================================================	
/*	
	@RequestMapping(value="/mqmodify")
	public String mqmodify(HttpServletRequest request, Model model) {
		
		String qname = request.getParameter("qname");
		String qcontent = request.getParameter("qcontent");
		String qemail = request.getParameter("qemail");
		String qnum = request.getParameter("qnum");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.qmodifyDao(qname, qcontent, qemail, qnum);
		
		return "redirect:mlist";
	}*/
	//=========================================================================	

	
	@RequestMapping(value = "/rent")
	public String rent(HttpServletRequest request, Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		ArrayList<LockDto> dtos = dao.LockDao();
		
		model.addAttribute("ldto", dtos);
		
		
	 	
		
		return "rent";
	}
	
	 //=========================================================================	
	@RequestMapping(value = "/rentgo")
	public String rentgo(HttpServletRequest request, Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		HttpSession session = request.getSession();
		
		String sid = (String) session.getAttribute("sid");

		MemberDto mdto = dao.memberInfoDao(sid);
		
		model.addAttribute("mdto", mdto);
		
		String lnum = request.getParameter("lnum");

		LockDto ldto = dao.LockInfoDao(lnum);
		
		model.addAttribute("ldto",ldto);
		
		return "rentgo";
	}
	
	 //=========================================================================	
	@RequestMapping(value = "/rentgoOk")
	public String rentgoOk(HttpServletRequest request, Model model) {
		
		
		String rid = request.getParameter("rid");
		String rname = request.getParameter("rname");
		String rtel = request.getParameter("rtel");
		String rnum = request.getParameter("rnum");	
		String rprice = request.getParameter("rprice");	
		String rsdate = request.getParameter("rsdate");	
		String redate = request.getParameter("redate");
		
		int use = 0;

		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.usecheck(use, rnum);
		dao.rentDao(rid, rname, rtel, rnum, rprice, rsdate, redate);

		return "redirect:callist";
	}
	
	 //=========================================================================	
	@RequestMapping(value="/replyOk")
	public String replyOk(HttpServletRequest request , Model model) {
		
		String boardnum = request.getParameter("boardnum");//????????? ?????? ??? ???????????? ????????????
		String rbcontent = request.getParameter("rbcontent");//????????? ??????
	
		int qnum = Integer.parseInt(boardnum);
		
		HttpSession session = request.getSession();
		String sid = (String) session.getAttribute("sid");
		String rbid = null;
		
		if(sid == null) {
			rbid = "GUEST";
		}else {
			rbid = sid;
		}
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.rbwriteDao(qnum, rbid, rbcontent);
		
		model.addAttribute("contentDto",dao.contentViewDao(boardnum));
		model.addAttribute("rblist",dao.rblistDao(qnum));
		model.addAttribute("boardId",dao.contentViewDao(boardnum).getQid());
		
		
		return "qview";
	}
	 //=========================================================================	
	@RequestMapping(value="/mreplyOk")
	public String mreplyOk(HttpServletRequest request , Model model) {
		
		String boardnum = request.getParameter("boardnum");//????????? ?????? ??? ???????????? ????????????
		String rbcontent = request.getParameter("rbcontent");//????????? ??????
	
		int qnum = Integer.parseInt(boardnum);
		
		HttpSession session = request.getSession();
		String sid = (String) session.getAttribute("sid");
		String rbid = null;
		
		if(sid == null) {
			rbid = "GUEST";
		}else {
			rbid = sid;
		}
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.rbwriteDao(qnum, rbid, rbcontent);
		
		model.addAttribute("contentDto",dao.contentViewDao(boardnum));
		model.addAttribute("rblist",dao.rblistDao(qnum));
		model.addAttribute("boardId",dao.contentViewDao(boardnum).getQid());
		
		
		return "mqview";
	}
	 //=========================================================================	
	@RequestMapping(value = "/find_id_form")
	public String find_id_form() {
		
		
		
		
		
		return "find_id_form";
	
	
	}
	 //=========================================================================	
	
	
	
	@RequestMapping(value = "/find_id")
	public String find_id(HttpServletRequest request,Model model) {
		
		
		String mname = request.getParameter("mname");
		String memail = request.getParameter("memail");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.findDao(mname, memail);
		
		MemberDto mdto = dao.findDao(mname, memail);
		
		model.addAttribute("mdto", mdto);

		return "find_id";
	
	
	}
	 //=========================================================================	
	@RequestMapping(value = "/find_pw_form")
	public String find_pw_form() {
		
		
		
		
		
		return "find_pw_form";
	
	
	}
	 //=========================================================================	
	@RequestMapping(value = "/find_pw")
	public String find_pw(HttpServletRequest request,Model model) {
		
		String mid = request.getParameter("mid");
		String mname = request.getParameter("mname");
		String memail = request.getParameter("memail");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.findpwDao(mid, mname, memail);
		
		MemberDto mddto = dao.findpwDao(mid, mname, memail);
		
		model.addAttribute("mddto", mddto);
		
		return "find_pw";
	
	
	}
	//=========================================================================	
		@RequestMapping(value = "/mrentgo")
		public String mrentgo(HttpServletRequest request, Model model) {
			
			HttpSession session = request.getSession();
			
			String sid = (String) session.getAttribute("sid");
			String lnum = request.getParameter("lnum");
			String rid = request.getParameter("rid");
			
			
			IDao dao = sqlSession.getMapper(IDao.class);
			

			MemberDto mdto = dao.memberInfoDao(sid);
			LockDto ldto = dao.LockInfoDao(lnum);
			LockrentDto lockDto = dao.lockrentinfoDao(rid);


			
			model.addAttribute("mdto", mdto);
			model.addAttribute("ldto",ldto);
			model.addAttribute("lockDto", lockDto);
			

			return "mrentgo";
		}
		
		
		//=========================================================================	
				@RequestMapping(value = "/mrent")
				public String mrent(HttpServletRequest request, Model model) {
					IDao dao = sqlSession.getMapper(IDao.class);
					
					ArrayList<LockDto> dtos = dao.LockDao();
					
					model.addAttribute("ldto", dtos);
					
					
					
					
					return "mrent";
				}
				
				//=========================================================================	
		/*		@RequestMapping(value = "/merent")
				public String merent(HttpServletRequest request, Model model) {
					IDao dao = sqlSession.getMapper(IDao.class);
					
					ArrayList<LockrentDto> dtos = dao.LockrentDao();
					
					model.addAttribute("lrdto", dtos);
					
					
					
					
					return "merent";
				}*/
		 //=========================================================================			
	
				@RequestMapping(value = "/read")
				public String read() {
					
					
					return "read";
				}
				
				@RequestMapping(value = "/alert")
				public String alert() {
					
					
					return "alert";
				}
	}



