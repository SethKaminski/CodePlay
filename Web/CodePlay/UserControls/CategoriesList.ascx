<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CategoriesList.ascx.cs" Inherits="CategoriesList" %>
<asp:ListView ID="list" runat="server">
  <ItemTemplate>
    <li>
    <asp:HyperLink 
      ID="HyperLink1" 
      Runat="server" 
      NavigateUrl='<%# "../Catalog.aspx?DepartmentID=" + Request.QueryString["DepartmentID"] + "&CategoryID=" + Eval("CategoryID")  %>'
      Text='<%# Eval("Name") %>' 
      ToolTip='<%# Eval("Description") %>' 
      CssClass='<%# Eval("CategoryID").ToString() == Request.QueryString["CategoryID"] ? "CategorySelected" : "CategoryUnselected" %>'>>
    </asp:HyperLink>
   </li>
  </ItemTemplate>
</asp:ListView><asp:Label ID="brLabel" runat="server" Text="" />
  
