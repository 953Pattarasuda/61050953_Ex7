<%-- 
    Document   : result
    Created on : Oct 28, 2020, 3:30:41 PM
    Author     : luksorn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result Calculator</title>
    </head>
    <body>
         <%
            double numAdd =(Double) request.getAttribute("numAdd");
            double numSub =(Double) request.getAttribute("numSub");
            double numMul =(Double) request.getAttribute("numMul");
            double numDiv =(Double) request.getAttribute("numDiv");
            String number1Str = request.getParameter("number1");
            String number2Str = request.getParameter("number2");
            if (request.getParameter("add") != null) {
                    out.print("The result of "+number1Str+"+"+number2Str+" is: "+numAdd);
                } 
            else if (request.getParameter("sub") != null) {
                    out.print("The result of "+number1Str+"-"+number2Str+" is: "+numSub);
                } else if (request.getParameter("mul") != null) {
                        out.print("The result of "+number1Str+"*"+number2Str+" is: "+numMul);
                    }else if (request.getParameter("div") != null) { 
                            if(number2Str.equals("0")){
                                out.print("The result of "+number1Str+"/"+number2Str+" is: Error divide by 0");
                            }else {
                                out.print("The result of "+number1Str+"/"+number2Str+" is: "+numDiv);
                            }
                    }
           
         %>
    </body>
</html>
