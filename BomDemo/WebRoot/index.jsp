<%@ page language="java" import="java.util.*" pageEncoding="GBK" isELIgnored="false"%>
<%@ page import="org.qianyu.dtree.factory.DAOFactory" %>
<%@ page import="org.qianyu.dtree.pojo.Item"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>  
       <title>船舶建造资源BOM图</title>
       <script type="text/javascript" src="jquery.min.js"></script>
       <script type="text/javascript" src="jquery.treetable.js"></script>
       <link href="styles.css" rel="stylesheet" type="text/css"/>
       <script language="javascript">
              $(document).ready(function(){
                     $.treetable.defaults={
							id_col:0,//ID td列 {从0开始}
							parent_col:1,//父ID td列
							handle_col:2,//加上操作展开操作的 td列
							open_img:"images/minus.gif",
							close_img:"images/plus.gif"
				     }
	                //$("#tb").treetable({id_col:0,parent_col:1,handle_col:2,open_img:"images/minus.gif",close_img:"images/plus.gif"});
	                //只能应用于tbody
					$("#tb").treetable();
	                //应用样式
					$("#tb tr:even td").addClass("alt");
					$("#tb tr").find("td:eq(2)").addClass("spec");
					$("#tb tr:even").find("td:eq(2)").removeClass().addClass("specalt");
	               //隐藏数据列
					$("#tb tr").find("td:eq(0)").hide();
					$("#tb tr").find("td:eq(1)").hide();
					$("#mytable tr:eq(0)").find("th:eq(0)").hide();
					$("#mytable tr:eq(0)").find("th:eq(1)").hide();
				});
       </script>
  </head>
  
  <body>
    <div style="float:middle;">
         
  	 	<table   width="970" border="0" align="center" cellspacing="0" cellpadding="0" >
			<caption  align="top">
			         船舶建造资源BOM
			</caption>
			<tr>
				 <th><center>名称</center></th> 
				 <th>属性</th> 
				 <th>生产</th> 
				 <th>外购</th> 
				 <th>外协</th>
				 <th colspan="3"><center>操作</center></th>
			</tr>
			<tbody id="tb">
			<% 
					List<?> list=DAOFactory.getItemDAOInstance().queryAll();
				    Iterator<?> iter=list.iterator();
				    while(iter.hasNext()){
					  Item dtr=(Item)iter.next();
					  int idc=dtr.getClevel();
					  request.setAttribute("idc",idc);
					  int idp=dtr.getPlevel();
					  String name=dtr.getName();
					  String property=dtr.getProperty();
					  int produce=dtr.getProduce();
					  int outsource=dtr.getOutsource();
					  int outadd=dtr.getOutadd();
			  %>
			  <tr>
			        <td><%=idc%></td>
					<%
				  	    if(idp==100){
				    %>
							   <td></td>
					<%
			            }
						else{
			        %>
			                <td><%=idp%></td>
					<%
					    }	
					%>
			                <td><%=name%></td>
			                <td><%=property%></td>
			        <% 
			           if(produce==1){
			        %>
			           <td><img src="images/plus.gif"/></td>
			           <td></td>
			           <td></td>
			        <% 
			           }
			        %>
			         <% 
			            if(outsource==1){
			        %>
			           <td></td>
			           <td><img src="images/plus.gif"/></td>
			           <td></td>
			        <% 
			           }
			        %>	       
			         <% 
			           if(outadd==1){
			        %>
			           <td></td>
			           <td></td>
			           <td><img src="images/plus.gif"/></td>
			        <% 
			           }
			        %>	        
			          <td><a href="insert.do?clevel=<%=idc%>&status=delete">删除</a></td>
			          <td><a href="insert.do?clevel=<%=idc%>&status=selectid">修改</a></td>	
			          <td><a href="insert.do?clevel=<%=idc%>&status=queryid">增加</a></td>	                 	       
			   </tr>
			    <%
				   }
			    %>
			</tbody>
		</table>
     </div>
  </body>
</html>
