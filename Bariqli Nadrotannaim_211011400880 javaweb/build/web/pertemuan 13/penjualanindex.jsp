<%-- 
    Document   : index
    Created on : Nov 8, 2023, 11:10:16 AM
    Author     : bariq
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style.css" rel="stylesheet" type="text/css" />
        <title>Toko Sembako</title>
    </head>
    <body bgcolor="#808080">
        <%
            String menu="<br><b>Produk</b><br>"
                    + "<a href=.>barang masuk</a><br>"
                    + "<a href=.>barang keluar</a><br><br>"
                    + "<b>Transaksi</b><br>"
                    + "<a href=.>Penjualan</a><br><br>"
                    + "<b>Laporan</b><br>"
                    + "<a href=.>Penjualan</a><br><br>"
                    + "<a href=LoginController>Login</a><br><br>";
            String topMenu="<nav><ul>"
                    +"<li><a href=.>Home</a></li>"
                    +"<li><a href=#>produk</a>"
                    +"<ul>"
                    +"<li><a href=.>Barang Masuk</a></li>"
                    +"<li><a href=.>Barang Keluar</a></li>"
                    +"</ul>"
                    +"</li>"
                    +"<li><a href=#>Transaksi</a>"
                    +"<ul>"
                    +"<li><a href=.>Penjualan</a></li>"
                    +"</ul>"
                    +"</li>"
                    +"<li><a href=#>Laporan</a>"
                    +"<ul>"
                    +"<li><a href=.>Penjualan</a></li>"
                    +"</ul>"
                    +"</li>"
                    +"<li><a href=LoginController>Login</a></li>"
                    +"</ul>"
                    +"</nav>";
            String konten="<br><h1>Produk</h1>";
            String userName="";
            
            if (!session.isNew()){
                try {
                    userName = session.getAttribute("userName").toString();
                } catch (Exception ex) {}
                
                if (!((userName == null) || userName.equals(""))){
                    konten += "<h2>"+userName+"</h2>";
                    
                    try {
                        menu = session.getAttribute("menu").toString();
                    } catch (Exception ex){}
                    
                    try {
                        topMenu = session.getAttribute("topMenu").toString ();
                    } catch (Exception ex){}    
                        
                }
            }
            
        %>  
        
    <center>
        <table width="80%" bgcolor="#f0f8ff">
            <tr>
                <td colspan="2" align="center">
                    <br>
                    <h2 Style="margin-bottom:0px; margin-top:0px;">
                        Toko sembako 
                    </h2>
                    <h4 Style="margin-bottom:0px; margin-top:0px;">
                        Jl. Mujair VI Pamulang, Tangerang Selatan, Banten
                    </h4>
                    <br>
                </td>
            </tr>
            <tr height="400">
                <td width="200" align="center" valign="top" bgcolor="#eeffee">
                    <br>
                    <div id="menu">
                        <%=menu %>
                    </div>
                </td>
            
                <td align="center" valign="top" bgcolor="#ffffff">
                    <%=topMenu%>
                    <br>
                    <%=konten %>
                </td>
            </tr>
            
                </td>
            
                    </div>
                </td>
            </tr>
                </td>
            </tr>
        </table>
    </center>
        
    </body>
</html>