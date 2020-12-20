package board;

import javax.servlet.http.HttpServletRequest;

import control.Command;
import db.BoardDAO;

public class BoardDelete implements Command{

	HttpServletRequest request;

	public BoardDelete(HttpServletRequest request) {
		this.request = request;
	}
	
	@Override
	public int execute() {
		int bdNum = Integer.parseInt(request.getParameter("bdNum"));
		System.out.println(bdNum);
		BoardDAO dao = new BoardDAO(request);
		int result = dao.Delete(bdNum);
		
		return result;
	}

}
