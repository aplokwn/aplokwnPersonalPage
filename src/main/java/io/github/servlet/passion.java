package io.github.servlet;

import io.github.model.Photo;
import io.github.service.gsonFunction;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;


@WebServlet(name = "passion", value = "/passion")
public class passion extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        gsonFunction gsonF = new gsonFunction();

        List<Photo> photoList = gsonF.readJSON();

        request.setAttribute("photoList",photoList);

        getServletContext().getRequestDispatcher("/passion.jsp").forward(request,response);

        //getServletContext().getRequestDispatcher("/WEB-INF/known.jsp").forward(request,response);
        //getServletContext().getRequestDispatcher("/index.jsp").forward(request,response);





    }



    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String photoType = request.getParameter("photoType");
        String reset = request.getParameter("reset");

        gsonFunction gsonF = new gsonFunction();

        List<Photo> photoList = gsonF.readJSON();


       if(!photoType.equals(null) && !photoType.equals("")){
                List<Photo> filterList = gsonFunction.filterType(photoList,photoType);
                request.setAttribute("photoList",filterList);
        }

       else if(photoType.equals(null) || photoType.equals("") ){
           List<Photo> restList = gsonF.resetList();

          request.setAttribute("photoList",restList);
       }


        getServletContext().getRequestDispatcher("/passion.jsp").forward(request,response);






    }
}
