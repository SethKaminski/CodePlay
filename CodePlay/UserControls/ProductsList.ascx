<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ProductsList.ascx.cs"
  Inherits="ProductsList" %>
<asp:Label ID="pagingLabel" runat="server" CssClass="PagingText" Visible="false" />
&nbsp;&nbsp;
<asp:HyperLink ID="previousLink" runat="server" CssClass="PagingText" Visible="false">Previous</asp:HyperLink>
&nbsp;&nbsp;
<asp:HyperLink ID="nextLink" runat="server" CssClass="PagingText" Visible="false">Next</asp:HyperLink>
<asp:DataList ID="list" Runat="server" RepeatColumns="2" EnableViewState="False" OnItemCommand="list_ItemCommand">
  <ItemTemplate>
          <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
                <a href='Product.aspx?ProductID=<%# Eval("ProductID")%>'>
                    <img width="100" src='ProductImages/<%# Eval("Thumbnail") %>' border="0"/>
                </a>
                <div class="caption">
                    <a class="ProductName" href='Product.aspx?ProductID=<%# Eval("ProductID")%>'>
                        <%# Eval("Name") %>
                    </a>

                    <p><%# Eval("Description") %></p>
                    <p><%# Eval("Price", "{0:c}") %></p>
                    <p>
                        <asp:Button ID="Button1" runat="server" Text="Add to Cart" CommandArgument='<%# Eval("ProductID") %>' class="btn btn-primary"/>
                    </p>
                </div>
            </div>
        </div>
  </ItemTemplate>
</asp:DataList>
