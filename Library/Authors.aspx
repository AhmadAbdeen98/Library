<%@ Page Title="Authors" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Authors.aspx.cs" Inherits="Library.Authors" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <asp:GridView runat="server" DataSourceID="AuthorsDataView" ID="ctl00" AutoGenerateColumns="False" DataKeyNames="ID" AllowPaging="True">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" InsertVisible="False" SortExpression="ID"></asp:BoundField>
                <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME"></asp:BoundField>
            </Columns>
        </asp:GridView>
            <asp:SqlDataSource runat="server" ID="AuthorsDataView" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="PRC_AUTHORS_VIEW" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    </main>
</asp:Content>
