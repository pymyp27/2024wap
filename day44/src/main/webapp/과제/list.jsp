<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@  page import="java.sql.*" %>    

    <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

*{
padding:0px;
margin:0px;


}


 header{
 border:1px solid  black;
 padding:10px;
 
 }
 
 h2{
  /* margin:0 atuo;  적용불가 :  h2 블럭태그 , 한 줄 다 차지함 */
   background-color: red;
   text-align: center;
 }
 nav{
  border:1px solid  black;
  height: 100px;
  
  /* 
  부모 지정  
  반드시 크기(높이가 있어야 함 )
  */
  position:relative;
 
 }
 
 ul{
  list-style: none;
  border:1px solid black;  
  display: flex;
  border-bottom-color: blue;
  
  position: absolute;
  right: 0px;   /* left, right, top, bottom*/
  bottom:0px;

  
 }
 
 ul li {
   /*border:1px solid black;*/
   padding-right: 10px;
 
 }
 
 
 section{ 
  border:1px solid  black;
  padding: 20px;
 }
 
 
 footer{
  border:1px solid  black;
  /*  부모에 display: flex   footer의 자식 div가 옆으로 나온다*/
  display: flex;
 }
 
 
 footer > div {
  border:1px solid  black;
  width:33%;
  padding:10px;
 }
 
 
 table{ 
  width:600px;
  border:1px solid black;
  border-collapse: collapse;
  
  margin: 0 auto;
 }
 
 td{
 border:1px solid black;
 text-align: center;
 } 
 
 a{
  text-decoration: none;
  color:blue;
 }

 
</style>
</head>
<body>


<header> 
<h2>챔피언</h2>
</header>


<nav>
 <ul>
 <li> <a href="tier.jsp">티어</a></li>
 <li><a href="cham.html">챔피언</a></li>
 <li><a href="jo.jsp">챔피언조회</a></li>
 </ul>
</nav>

<section> 	

<table>
	
	<tr>
	<td>챔피언이름</td>
	<td>가격</td>
	<td>라인</td>
	<td>난이도</td>
	<td>역할</td>
	</tr>
	
	<!--   -->
	
<%
String driver = "oracle.jdbc.driver.OracleDriver";
String url = "jdbc:oracle:thin:@localhost:1521:testdb";
String user = "scott";
String password = "tiger";	

		
try {
	 
	Class.forName(driver);	 
	Connection  con = DriverManager.getConnection(url, user, password);
	
	 
 
	String sql  ="select * from  qwer ";
	PreparedStatement  pst =con.prepareStatement(sql);
 
	
	//5.실행 ( executeQuery()-조회,  executeUpdate()- 나머지 등록, 변경, 삭제)
	ResultSet  rs =pst.executeQuery();	
	
	//
	while( rs.next()) {		

%>	
	<tr>
	<td> <%= rs.getString(1) %></td>
	<td> <%= rs.getString(2) %></td>
	<td> <%= rs.getString(3) %></td>
	<td> <%= rs.getString(4) %></td>
	<td> <%= rs.getString(5) %></td>
	</tr>
	
<%

	} 			
	
} catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>	
	
	
</table>	
	
	
	
	
	

</section>

<footer>
	<div class="footer_item"></div>
	<div class="footer_item"></div>
	<div class="footer_item" ></div>
</footer>




</body>
</html>