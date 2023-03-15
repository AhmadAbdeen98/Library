<%@ Page Title="Books" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Books.aspx.cs" Inherits="Library.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <div>
            <asp:GridView runat="server" DataSourceID="BooksDataView" ID="ctl01" AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True">
                <Columns>
                    <asp:BoundField DataField="TITLE" HeaderText="TITLE" SortExpression="TITLE"></asp:BoundField>
                    <asp:BoundField DataField="CATEGORY_NAME" HeaderText="CATEGORY_NAME" ReadOnly="True" SortExpression="CATEGORY_NAME"></asp:BoundField>
                    <asp:BoundField DataField="SUB_CATEGORY_NAME" HeaderText="SUB_CATEGORY_NAME" SortExpression="SUB_CATEGORY_NAME"></asp:BoundField>
                    <asp:BoundField DataField="DESCRIPTION" HeaderText="DESCRIPTION" SortExpression="DESCRIPTION"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="BooksDataView" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [TITLE], [CATEGORY_NAME], [SUB_CATEGORY_NAME], [DESCRIPTION] FROM [vw_books]"></asp:SqlDataSource>
            <asp:SqlDataSource runat="server" ID="BookDataView"></asp:SqlDataSource>
        </div>
    </main>
</asp:Content>
