<%-- 
    Document   : order
    Created on : Feb 13, 2017, 9:27:17 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Michael's JSP Pizza Order</title>
    </head>
    <body>
        <h1>Order Results</h1>
        <p>Email = ${param.email}</p>
        <p>Size = ${param.size}</p>
        <p>Type = ${param.type}</p>
        
        <%
          String toppings[]=request.getParameterValues("toppings");
          double Cost= 0.0;
          
          if (toppings !=null && toppings.length !=0){
              out.println("<p>Toppings: ");
              for (String myTopping : toppings) {
                  out.println(myTopping + ", ");
              }
              out.println("</p>");
              Cost = Cost + toppings.length * .75;
              
          }
          String type = request.getParameter("type");
          String size = request.getParameter("size");
          if (size.equalsIgnoreCase("small")){
              Cost =Cost + 5.00;
          }else if (size.equalsIgnoreCase("medium")){
             Cost =Cost + 6.00;
          }else if (size.equalsIgnoreCase("large")){
              Cost =Cost + 7.00;
          }
          if(type.equalsIgnoreCase("Pan")){
                Cost = Cost + 1.00;
            } else if(type.equalsIgnoreCase("Hand-Tossed")){
                Cost = Cost + .50;
            }else if(type.equalsIgnoreCase("Thin")){
                Cost = Cost;
            }
           out.println("<p>Your Final Cost is: " + Cost + "</p>");
            
            %>
    </body>
</html>
