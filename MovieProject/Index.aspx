﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="MovieProject.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Open Movie Database</title>
    <%--  <link href="Content/bootstrap.min.css" rel="stylesheet" />--%>
     <link href="Content/bootstrap2.min.css" rel="stylesheet" />
    <link href="Content/StyleSheet.css" rel="stylesheet" />
     <link href="Scripts/animate.css" rel="stylesheet" />
    <link href="Content/normalize.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet"/>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src ="Scripts/popper.min.js"></script>
    <script src ="Scripts/index.js"></script>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/> 
   
</head>
<body>
    <form id="form1" runat="server">
        
           
     <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand active" href="Index.aspx">The Open Movie Database</a>
    </div>
    <ul class="nav navbar-nav">
      
      <li><a href="Action.aspx">Action</a></li>
      <li><a href="#">Science-Fiction</a></li>
      <li><a href="#">Thriller</a></li>
        <li><a href="#">Animated</a></li>
    </ul>
  </div>
</nav>
        
        <div class="container animated fadeIn main">          
            <asp:MultiView ID="MultiViewMovies" runat="server" ActiveViewIndex="0">
                  <asp:View ID="ViewSearch" runat="server">
                      <div class="search" style="display:flex; justify-content:center; margin-bottom:5vh;">
                       <asp:TextBox ID="TextBoxName" runat="server" placeholder="Search by name.."></asp:TextBox>
                         <asp:Button ID="ButtonFind" runat="server" OnClick="ButtonFind_Click" CssClass="buttonStyle" />
                          </div>
                       <div class="container repeaterDiv">
                           <h3>Most popular Action Movies</h3>
            <asp:Repeater ID="RepeaterMovies" runat="server" DataSourceID="SqlDataSourceAction">
                 <HeaderTemplate>
                <table class="row container">
                    
            </HeaderTemplate>
            <ItemTemplate>
                <tr class="col-sm-2" style="display:inline-block;">                                   
                    <div class="wrapper">
                    <td class="poster" style="display:flex; justify-content:center;"><a class="caption" href="#" runat="server" id="anchor2" onserverclick="anchor2_ServerClick"><%# DataBinder.Eval(Container.DataItem,"MovieName") %></a><img src="<%# DataBinder.Eval(Container.DataItem,"PosterUrl") %>" alt="Poster-url" height="200vh" /></td>
                        </div>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
            <asp:SqlDataSource ID="SqlDataSourceAction" runat="server" ConnectionString="<%$ ConnectionStrings:MovieDBConnectionString %>" SelectCommand="Select top 6 MovieName, PosterUrl from Movies WHERE FilmCategoryId = 1 order by counter desc"></asp:SqlDataSource>
            <br />
        </div>


                      <div class="container repeaterDiv">
                           <h3>Most popular Animation Movies</h3>
            <asp:Repeater ID="RepeaterAnimation" runat="server" DataSourceID="SqlDataSourceAnimation">
                 <HeaderTemplate>
                <table class="row container">
                    
            </HeaderTemplate>
            <ItemTemplate>
                <tr class="col-sm-2" style="display:inline-block;">                                   
                    <div class="wrapper">
                   <td class="poster" style="display:flex; justify-content:center;"><a class="caption" href="#" runat="server" id="anchor2" onserverclick="anchor2_ServerClick"><%# DataBinder.Eval(Container.DataItem,"MovieName") %></a><img src="<%# DataBinder.Eval(Container.DataItem,"PosterUrl") %>" alt="Poster-url" height="200vh" /></td>
                        </div>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
            <asp:SqlDataSource ID="SqlDataSourceAnimation" runat="server" ConnectionString="<%$ ConnectionStrings:MovieDBConnectionString %>" SelectCommand="Select top 6 MovieName, PosterUrl from Movies WHERE FilmCategoryId = 2 order by counter desc"></asp:SqlDataSource>
            <br />
        </div>

                       <div class="container repeaterDiv">
                           <h3>Most popular Thriller Movies</h3>
            <asp:Repeater ID="RepeaterThriller" runat="server" DataSourceID="SqlDataSourceThriller">
                 <HeaderTemplate>
                <table class="row container">
                    
            </HeaderTemplate>
            <ItemTemplate>
                <tr class="col-sm-2" style="display:inline-block;">                                   
                    <div class="wrapper">
                    <td class="poster" style="display:flex; justify-content:center;"><a class="caption" href="#" runat="server" id="anchor2" onserverclick="anchor2_ServerClick"><%# DataBinder.Eval(Container.DataItem,"MovieName") %></a><img src="<%# DataBinder.Eval(Container.DataItem,"PosterUrl") %>" alt="Poster-url" height="200vh" /></td>
                        </div>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
            <asp:SqlDataSource ID="SqlDataSourceThriller" runat="server" ConnectionString="<%$ ConnectionStrings:MovieDBConnectionString %>" SelectCommand="Select top 6 MovieName, PosterUrl from Movies WHERE FilmCategoryId = 3 order by counter desc"></asp:SqlDataSource>
            <br />
        </div>
                      <div class="container repeaterDiv">
                           <h3>Most popular Science-Fiction Movies</h3>
            <asp:Repeater ID="RepeaterScience" runat="server" DataSourceID="SqlDataSourceScience">
                 <HeaderTemplate>
                <table class="row container">
                    
            </HeaderTemplate>
            <ItemTemplate>
                <tr class="col-sm-2" style="display:inline-block;">                                   
                    <div class="wrapper">
                   <td class="poster" style="display:flex; justify-content:center;"><a class="caption" href="#" runat="server" id="anchor2" onserverclick="anchor2_ServerClick"><%# DataBinder.Eval(Container.DataItem,"MovieName") %></a><img src="<%# DataBinder.Eval(Container.DataItem,"PosterUrl") %>" alt="Poster-url" height="200vh" /></td>
                        </div>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
            <asp:SqlDataSource ID="SqlDataSourceScience" runat="server" ConnectionString="<%$ ConnectionStrings:MovieDBConnectionString %>" SelectCommand="Select top 6 MovieName, PosterUrl from Movies WHERE FilmCategoryId = 4 order by counter desc"></asp:SqlDataSource>
            <br />
        </div>



                  </asp:View>
                <asp:View ID="ViewResult" runat="server">
                <div class="searchresult animated fadeIn container" id="results">
                    <div class="row">
             <div class="col-sm-5" style="display:flex; justify-content:center;">
         <asp:Image ID="ImagePoster" runat="server" ImageUrl="~/img/placehold.jpg" />
             </div>
            <div class="col-sm-7">
             <div class="row" style="display:flex; justify-content:center;">
            <asp:Label ID="LabelResult" runat="server" Text="Result" CssClass="resultStyle"></asp:Label></div>
            <br />
                <br />
            <div class="row" style="display:flex; justify-content:center;">
            <asp:Label ID="LabelDirected" runat="server"></asp:Label> </div>
               <br /><br />
                      <div class="row" style="display:flex; justify-content:center;">
                <asp:Label ID="LabelActors" runat="server"></asp:Label> </div>
               <br /><br />
                <div class="row" style="display:flex; justify-content:center;">
                <asp:Label ID="LabelDescription" runat="server"></asp:Label> </div>
               <br /><br />
                
                           <div class="row" style="display:flex; justify-content:center;">
                <asp:Label ID="LabelRating" runat="server"></asp:Label> 
                               <br />
                               <asp:Label ID="LabelMessages" runat="server"></asp:Label>
             </div>
                </div>
                        </div>
                    <div class="row Trailer">

              <iframe id="youTubeTrailer" runat="server" width="560" height="315" frameborder="2" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen= "allowfullscreen"></iframe>
            <br />
            <asp:Label ID="LabelTralier" runat="server" Text="Tralier's status"></asp:Label>

        </div>
            
        </div>
                
                
                
                </asp:View>
              
            </asp:MultiView>
            </div>

          

            <br />

       
        
    </form>
</body>
</html>
