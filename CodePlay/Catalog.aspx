<%@ Page Language="C#" MasterPageFile="~/BalloonShop.master" 
AutoEventWireup="true" CodeFile="Catalog.aspx.cs" Inherits="Catalog" 
Title="BalloonShop - The Product Catalog" %>

<%@ Register Src="UserControls/ProductsList.ascx" TagName="ProductsList" TagPrefix="uc1" %>

<asp:Content ID="content" ContentPlaceHolderID="contentPlaceHolder" Runat="Server">
  <asp:Label ID="catalogTitleLabel" CssClass="CatalogTitle" Runat="server" />
  <br />
  <asp:Label ID="catalogDescriptionLabel" CssClass="CatalogDescription" Runat="server" />
  <br />
  <uc1:ProductsList ID="ProductsList1" runat="server" />
  <div class="col-sm-6 col-md-4">
      
  </div>
</asp:Content>
