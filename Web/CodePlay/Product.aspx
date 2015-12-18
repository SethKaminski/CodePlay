<%@ Page Language="C#" MasterPageFile="~/Codeplay_MasterPage.master" AutoEventWireup="true"
  CodeFile="Product.aspx.cs" Inherits="Product" Title="Untitled Page" %>

<%@ Register Src="UserControls/ProductRecommendations.ascx" TagName="ProductRecommendations"
  TagPrefix="uc1" %>
<asp:Content ID="content" ContentPlaceHolderID="contentPlaceHolder2" runat="Server">
    <br><br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <font size=20>
        <span class="label label-default">
            <asp:Label ID="titleLabel" runat="server" Text="Label"></asp:Label>
        </span>
    </font>
    <br><br>
    <table>
        <tr>
            <td rowspan="2" style="padding:25px">
                <asp:Image class="img-rounded" ID="productImage" runat="server" />
            </td>
            <td width="350px" height="75%" style="padding:25px" valign="top">
                <asp:Label ID="descriptionLabel" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
            <tr>

                <td style="padding:25px" valign="Bottom">
                    <asp:Label CssClass="ProductPrice" ID="priceLabel" runat="server" Text="Label" />
                </td>
            </tr>
            
            <tr >
                <td style="padding:10px">
                    <asp:Button ID="addToCartButton" runat="server" 
                        Text="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Add To Cart &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" 
                        class="btn btn-default btn-lg" OnClick="addToCartButton_Click" />
                    <asp:Button ID="continueShoppingButton" class="btn btn-default btn-lg" runat="server" Text="Continue Shopping" OnClick="continueShoppingButton_Click" />
                </td>
                <td>
                    
                </td>
            </tr>
        </table>

     <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="REVIEWID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="937px">
         <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
         <Columns>
             <asp:BoundField DataField="REVIEWID" HeaderText="REVIEWID" ReadOnly="True" SortExpression="REVIEWID" />
             <asp:BoundField DataField="DESCRIPTION" HeaderText="DESCRIPTION" SortExpression="DESCRIPTION" />
             <asp:BoundField DataField="RATING" HeaderText="RATING" SortExpression="RATING" />
         </Columns>
         <EditRowStyle BackColor="#999999" />
         <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
         <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
         <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
         <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
         <SortedAscendingCellStyle BackColor="#E9E7E2" />
         <SortedAscendingHeaderStyle BackColor="#506C8C" />
         <SortedDescendingCellStyle BackColor="#FFFDF8" />
         <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BalloonShopConnection %>" ProviderName="<%$ ConnectionStrings:BalloonShopConnection.ProviderName %>" SelectCommand="SELECT &quot;REVIEWID&quot;, &quot;DESCRIPTION&quot;, &quot;RATING&quot; FROM &quot;REVIEW&quot;"></asp:SqlDataSource>

     <uc1:ProductRecommendations id="ProductRecommendations1" runat="server">
  </uc1:ProductRecommendations>
  </asp:Content>
