package controllers.assignment8;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Download8Servlet", value = "/assignment/8/download")
public class Download8Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "viewAlbums";  // default action
        }

        // perform action and set URL to appropriate page
        String url = "/index.jsp";
        if (action.equals("viewAlbums")) {
            url = "/index.jsp";
        } else if (action.equals("checkUser")) {
            url = checkUser(request, response);
        } else if (action.equals("viewCookies")) {
            url = "/view_cookies.jsp";
        } else if (action.equals("deleteCookies")) {
            url = deleteCookies(request, response);
        }
        url = "/views/assignment_8" + url;
        // forward to the view
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        // perform action and set URL to appropriate page
        String url = "/index.jsp";
        if (action.equals("registerUser")) {
            url = registerUser(request, response);
        }
        url = "/views/assignment_8" + url;
        // forward to the view
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
    private String checkUser(HttpServletRequest request,
                             HttpServletResponse response) {

        String productCode = request.getParameter("productCode");
        HttpSession session = request.getSession();
        session.setAttribute("productCode8", productCode);
        User8 user = (User8) session.getAttribute("user8");

        String url;
        // if User object doesn't exist, check email cookie
        if (user == null) {
            Cookie[] cookies = request.getCookies();
            String emailAddress =
                    Cookie8Util.getCookieValue(cookies, "userEmail8");

            // if cookie doesn't exist, go to Registration page
            if (emailAddress == null || emailAddress.equals("")) {
                url = "/register.jsp";
            }
            // if cookie exists, create User object and go to Downloads page
            else {
                ServletContext sc = getServletContext();
                String path = sc.getRealPath("/WEB-INF/EmailList.txt");
                user = UserIO8.getUser(emailAddress, path);
                session.setAttribute("user8", user);
                url = "/" + productCode + "_download.jsp";
            }
        }
        // if User object exists, go to Downloads page
        else {
            url = "/" + productCode + "_download.jsp";
        }
        return url;
    }

    private String registerUser(HttpServletRequest request,
                                HttpServletResponse response) {

        // get the user data
        String email = request.getParameter("email");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");

        // store the data in a User object
        User8 user = new User8();
        user.setEmail(email);
        user.setFirstName(firstName);
        user.setLastName(lastName);

        // write the User object to a file
        ServletContext sc = getServletContext();
        String path = sc.getRealPath("/WEB-INF/EmailList8.txt");
        UserIO8.add(user, path);

        // store the User object as a session attribute
        HttpSession session = request.getSession();
        session.setAttribute("user", user);

        // add a cookie that stores the user's email to browser
        Cookie c = new Cookie("userEmail8", email);
        c.setMaxAge(60 * 60 * 24 * 365 * 3); // set age to 3 years
        c.setPath("/");                      // allow entire app to access it
        response.addCookie(c);

        // create and return a URL for the appropriate Download page
        String productCode = (String) session.getAttribute("productCode8");
        String url = "/" + productCode + "_download.jsp";
        return url;
    }

    private String deleteCookies(HttpServletRequest request,
                                 HttpServletResponse response) {

        Cookie[] cookies = request.getCookies();
        for (Cookie cookie : cookies) {
            cookie.setMaxAge(0); //delete the cookie
            cookie.setPath("/"); //allow the download application to access it
            response.addCookie(cookie);
        }
        String url = "/delete_cookies.jsp";
        return url;
    }
}
