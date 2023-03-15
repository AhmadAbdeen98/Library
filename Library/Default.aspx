<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Library._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">Home</h1>
            <!--<p><a href="http://www.asp.net" class="btn btn-primary btn-md">Learn more &raquo;</a></p>-->
        </section>
        
        <div class="row">
            <section class="col-md-4" aria-labelledby="gettingStartedTitle">
                <a class="btn btn-default" href="./Books">
                    <h2 id="gettingStartedTitle" style="text-align:left">
                        Books
                    </h2>
                    <p>
                        Display available books in the library.
                    </p>
                </a>
                
                <!--<p>
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
                </p>-->
            </section>
            <section class="col-md-4" aria-labelledby="librariesTitle">
                <a class="btn btn-default" href="./Categories">
                    <h2 id="librariesTitle" style="text-align:left">Categories</h2>
                    <p>
                        Displays books categories.
                    </p>
                    <!-- <p>
                        <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
                    </p>-->
                </a>
            </section>
            <section class="col-md-4" aria-labelledby="hostingTitle">
                <a class="btn btn-default" href="./Authors">
                    <h2 id="hostingTitle" style="text-align:left">Authors</h2>
                    <p>
                        Displays Authors.
                    </p>
                    <!-- <p>
                        <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
                    </p> -->
                </a>
            </section>
        </div>
    </main>

</asp:Content>
