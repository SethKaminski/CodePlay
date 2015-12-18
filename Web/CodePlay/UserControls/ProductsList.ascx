<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ProductsList.ascx.cs"
  Inherits="ProductsList" %>
<asp:Label ID="pagingLabel" runat="server" CssClass="PagingText" Visible="false" />
&nbsp;&nbsp;
<asp:HyperLink ID="previousLink" runat="server" CssClass="PagingText" Visible="false">Previous</asp:HyperLink>
&nbsp;&nbsp;
<asp:HyperLink ID="nextLink" runat="server" CssClass="PagingText" Visible="false">Next</asp:HyperLink>

<asp:ListView ID="list" Runat="server">
  <ItemTemplate>
          <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
                <a href='Product.aspx?ProductID=<%# Eval("ProductID")%>'>
                    <img width="100" src='ProductImages/<%# Eval("Thumbnail") %>'/>
                </a>
                <div class="caption">
                    <a class="ProductName" href='Product.aspx?ProductID=<%# Eval("ProductID")%>'>
                        <%# Eval("Name") %>
                    </a>

                    <p><%# Eval("Description") %></p>
                    <p><%# Eval("Price", "{0:c}") %></p>
                    <p>
                        <asp:Button ID="Button1" runat="server" Text="Add to Cart" OnClick="addToCartButton_Click" class="btn btn-primary"/>
                    </p>
                </div>
            </div>
        </div>
  </ItemTemplate>
</asp:ListView>