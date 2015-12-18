<%@ Page Language="C#" MasterPageFile="~/Codeplay_MasterPage.master" 
AutoEventWireup="true" CodeFile="Catalog.aspx.cs" Inherits="Catalog" 
Title="BalloonShop - The Product Catalog" %>

<%@ Register Src="UserControls/ProductsList.ascx" TagName="ProductsList" TagPrefix="uc1" %>

<asp:Content ID="content" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
  <asp:Label ID="catalogTitleLabel" CssClass="CatalogTitle" Runat="server" />
  <br />
  <asp:Label ID="catalogDescriptionLabel" CssClass="CatalogDescription" Runat="server" />
  <br />
  
  <div class="row">
      <HeaderTemplate>
        <div class="row">
    </HeaderTemplate>

    <FooterTemplate>
        </div>
    </FooterTemplate>
      <uc1:ProductsList ID="ProductsList1" runat="server" />
  </div>
</asp:Content>
