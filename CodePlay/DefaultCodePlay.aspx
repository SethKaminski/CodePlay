<%@ Page Title="" Language="C#" MasterPageFile="~/CodeplayMasterPage.master" AutoEventWireup="true" CodeFile="DefaultCodePlay.aspx.cs" Inherits="DefaultCodePlay" %>

<%@ Register Src="UserControls/CartSummary.ascx" TagName="CartSummary" TagPrefix="uc6" %>
<%@ Register Src="UserControls/UserInfo.ascx" TagName="UserInfo" TagPrefix="uc5" %>
<%@ Register Src="UserControls/SearchBox.ascx" TagName="SearchBox" TagPrefix="uc4" %>
<%@ Register Src="UserControls/CategoriesList.ascx" TagName="CategoriesList" TagPrefix="uc3" %>
<%@ Register Src="UserControls/DepartmentsList.ascx" TagName="DepartmentsList" TagPrefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <uc5:UserInfo ID="UserInfo1" runat="server" />
    <br />
    <uc2:DepartmentsList ID="DepartmentsList1" runat="server" />
    <br />
    <uc3:CategoriesList ID="CategoriesList1" runat="server" />
    <uc4:SearchBox id="SearchBox1" runat="server">
    </uc4:SearchBox>
    <br />
    <uc6:CartSummary ID="CartSummary1" runat="server" />
</asp:Content>

