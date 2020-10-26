package web;

import pojo.Mode;
import pojo.User;
import service.ModeService;
import service.impl.ModeServiceImpl;
import utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ModeServlet extends BaseServlet {

    ModeService modeService = new ModeServiceImpl();

    protected void storeMode(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Mode mode = new Mode();
        mode.setLRL(WebUtils.findNumStr(req.getParameter("Lower Rate Limit")));
        mode.setURL(WebUtils.findNumStr(req.getParameter("Upper Rate Limit")));
        mode.setAA(WebUtils.findNumStr(req.getParameter("Atrial Amplitude")));
        mode.setVA(WebUtils.findNumStr(req.getParameter("Ventricular Amplitude")));
        mode.setAPW(WebUtils.findNumStr(req.getParameter("Atrial Pulse Width")));
        mode.setVPW(WebUtils.findNumStr(req.getParameter("Ventricular Pulse Width")));
        mode.setVRP(WebUtils.findNumStr(req.getParameter("VRP")));
        mode.setARP(WebUtils.findNumStr(req.getParameter("ARP")));
        mode.setMode(req.getParameter("mode"));
        User user = (User) req.getSession().getAttribute("user");
        mode.setId(user.getId());
        modeService.saveMode(mode);
        req.setAttribute("mode", mode);
        req.getRequestDispatcher("/pages/mode/setMode_success.jsp").forward(req, resp);
    }
}
