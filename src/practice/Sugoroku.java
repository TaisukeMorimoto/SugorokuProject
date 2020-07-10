package practice;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Sugoroku
 */
@WebServlet("/Sugoroku")
public class Sugoroku extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sugoroku() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession(true);
		SugorokuBean bean = (SugorokuBean) session.getAttribute("sugorokubean");
		if (bean == null) {
			// 初回時の処理(Data処理クラスのオブジェクトを生成し、セッションデータとして格納する)
			bean = new SugorokuBean();
			bean.initial();
			session.setAttribute("sugorokubean", bean);
		}

		int num;
		try {
			num = Integer.parseInt(request.getParameter("number"));
		} catch (NumberFormatException ne) {
			num = 0;
		}

		/**
		 * num = 0: 初回起動時
		 * num = 1: サイコロをもう一度振る
		 * num = 2: サイコロの数表示
		 * num = 3: ゴール
		 * num = 4: 最初から始める
		 * num = 5: ゲームオーバー
		 */
		String nextPage;
		if (num == 0) {
			bean.initial();
			System.out.println("buf[0] in sugoroku.java" + bean.getBuf(0));
			nextPage = "/SugorokuBeanRe.jsp";
		} else if (num == 1) {
			nextPage = "/SugorokuBeanRe.jsp";
		} else if (num == 2) {
			nextPage = "/SugorokuBeanNum.jsp";
		} else if (num == 3) {
			nextPage = "/SugorokuBeanOut.jsp";
		} else if (num == 4) {
			bean.initial();
			session.setAttribute("sugorokubean", bean);
			nextPage = "/SugorokuBeanRe.jsp";
		} else {
			nextPage = "/SugorokuBeanOver.jsp";
		}

		RequestDispatcher rd = getServletContext().getRequestDispatcher(nextPage);
		rd.forward(request, response);
	}

}
