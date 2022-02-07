package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.CheckPwService;
import vo.ActionForward;
import vo.UserVO;

public class CheckPwAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		String pw = request.getParameter("psw");
		
		CheckPwService checkPwService = new CheckPwService();
		UserVO pwExist = checkPwService.exitCheckPw(pw);
		ActionForward forward = null;
		HttpSession session = request.getSession();
		if(pwExist != null) {
			
			session.setAttribute("userVO", pwExist);
			forward = new ActionForward();
			forward.setUrl("checkpwPopup.jsp");
			forward.setRedirect(true);
			
		}
		else {
			session.setAttribute("userVO", null);
			forward = new ActionForward();
			forward.setUrl("checkpwPopup.jsp");
			forward.setRedirect(true);
			
		}
		
				
		return forward;
	}

}
