<%@ Page Title="Categories" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="Library.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>

        <asp:DropDownList 
            runat="server" 
            DataTextField="NAME" 
            DataValueField="ID" 
            DataSourceID="CategoriesDDL" 
            ID="ctl11"></asp:DropDownList>
        <asp:SqlDataSource 
            runat="server" 
            ID="CategoriesDDL" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [ID], [NAME] FROM [CATEGORIES] WHERE ([PARENT_ID] IS NULL)"></asp:SqlDataSource>
        
        <asp:DropDownList 
            runat="server" 
            DataTextField="NAME" 
            DataValueField="ID" 
            DataSourceID="SubCategoriesDDL" 
            ID="ctl122"></asp:DropDownList>
        <asp:SqlDataSource runat="server" 
            ID="SubCategoriesDDL" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [NAME], [ID], [PARENT_ID] FROM [VW_CATEGORIES] WHERE (([PARENT_ID] IS NOT NULL) AND ([PARENT_ID] = @PARENT_ID))">
            <SelectParameters>
                <asp:ControlParameter 
                    ControlID="ctl11" 
                    PropertyName="SelectedValue" 
                    DefaultValue="1" 
                    Name="PARENT_ID" 
                    Type="Int32"></asp:ControlParameter>
            </SelectParameters>
        </asp:SqlDataSource>
        
        <p>
            <asp:GridView runat="server" DataSourceID="CategoriesDataSource" ID="ctl10" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category"></asp:BoundField>
                    <asp:BoundField DataField="Parent Category" HeaderText="Parent Category" SortExpression="Parent Category"></asp:BoundField>
                    </Columns>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="CategoriesDataSource" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [NAME] AS [Category], [PARENT_NAME] AS [Parent Category] FROM [VW_CATEGORIES] ORDER BY isnull(PARENT_ID, ID), ID"></asp:SqlDataSource>
            <asp:SqlDataSource runat="server" ID="CategoriesView"></asp:SqlDataSource>
        </p>
    </main>
</asp:Content>