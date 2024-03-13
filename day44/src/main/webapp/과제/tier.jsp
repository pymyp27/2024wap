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
  color:black;
 }
 
 
</style>
</head>
<body>
<header> 
<h2>챔피언 티어</h2>
</header>
<section> 	

<table>
	
	<tr>
	<td>챔피언이름</td>
	<td>티어</td>
	<td>승률</td>
	<td>픽률</td>
	<td>벤률</td>
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
	
	 
 
	String sql  ="select * from rank1 order by tier asc";
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
</body>
</html>