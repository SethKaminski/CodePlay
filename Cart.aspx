<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>The CodePlay</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css" integrity="sha384-aUGj/X2zp5rLCbBxumKTCw2Z50WgIr1vs/PFN4praOTvYXWlVyh2UtNUU0KAUhAX" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" integrity="sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ==" crossorigin="anonymous"></script>

    <!---DropDown Libraries-->

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

    <!-- for carousel -->

    <style>
        .carousel-inner > .item > img,
        .carousel-inner > .item > a > img {
            width: 400px;
            height: 500px;
            margin: auto;
        }
        .auto-style1
        {
            width: 319px;
        }
    </style>





</head>
<body>

    <form id="form1" runat="server">

    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"><img src="logo.jpg" width="60px" height="60px" /></a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="HtmlPage.html">HOME</a></li>
                    <li class="active"><a href="AboutUs.html">ABOUT US <span class="sr-only">(current)</span></a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">CATEGORIES <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="Action.html">Action</a></li>
                            <li><a href="Strategy.html">Strategy</a></li>
                            <li><a href="Puzzle.html">Puzzle</a></li>
                            <li><a href="RPG.html">Role Playing</a></li>
                            <li><a href="Music.html">Music and Party</a></li>
                            <li><a href="Sports.html">Sports</a></li>

                        </ul>
                    </li>
                </ul>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-default">Search Game</button>
                <ul class="nav navbar-nav navbar-right">
                 
                    <li><a href="#">YOUR CART</a></li>
                    <li class="dropdown">
                        <button type="button" class="btn btn-default navbar-btn">SIGN IN</button>
                        <button type="button" class="btn btn-default navbar-btn">REGISTER</button>

                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <br />
    <br />
    <h1>Your Cart!!</h1>
    <div id="tableShoppingCart">
        <br />
  <asp:GridView ID="grid" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" Width="70%" OnRowDeleting="grid_RowDeleting" CellPadding="4" ForeColor="#333333" GridLines="None">
      <AlternatingRowStyle BackColor="White" />
    <Columns>
      <asp:BoundField DataField="Name" HeaderText="Product Name" ReadOnly="True" SortExpression="Name" >
        <ControlStyle Width="80%" />
      </asp:BoundField>
      <asp:BoundField DataField="Price" DataFormatString="{0:c}" HeaderText="Price" ReadOnly="True"
        SortExpression="Price" />
      <asp:TemplateField HeaderText="Quantity">
        <ItemTemplate>
          <asp:TextBox ID="editQuantity" runat="server" CssClass="GridEditingRow" Width="24px" MaxLength="2" Text='<%#Eval("Quantity")%>' />
        </ItemTemplate>
      </asp:TemplateField>
      <asp:BoundField DataField="Subtotal" DataFormatString="{0:c}" HeaderText="Subtotal"
        ReadOnly="True" SortExpression="Subtotal" />
        
      <asp:ButtonField ButtonType="Button" CommandName="Delete" Text="Delete" >
          
        <ControlStyle CssClass="SmallButtonText " />
      </asp:ButtonField>
           
    </Columns>
      <EditRowStyle BackColor="#2461BF" />
      <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
      <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
      <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
      <RowStyle BackColor="#EFF3FB" />
      <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
      <SortedAscendingCellStyle BackColor="#F5F7FB" />
      <SortedAscendingHeaderStyle BackColor="#6D95E1" />
      <SortedDescendingCellStyle BackColor="#E9EBEF" />
      <SortedDescendingHeaderStyle BackColor="#4870BE" />
  </asp:GridView>
  <table width="80%" id="shoppingTable">
    <tr>
      <td class="auto-style1">
          <span class="ProductDescription">
          Total amount:
        </span>
        <asp:Label ID="totalAmountLabel" runat="server" Text="Label" CssClass="ProductPrice" />
      </td>
      <td align="center" style="width: 198px">
          <button type="button" class="btn btn-default btn-lg">
        <asp:Button ID="updateButton" runat="server" Text="Update Quantities" CssClass="SmallButtonText" OnClick="updateButton_Click" Width="176px" />
        </button>
              <button type="button" class="btn btn-default btn-lg">
              <asp:Button ID="checkoutButton" runat="server" CssClass="SmallButtonText" Text="Proceed to Checkout" OnClick="checkoutButton_Click" Width="177px" />
        </button>
         </td>
    </tr>
  </table>
  <br />
        <button type="button" class="btn btn-default btn-lg">
  <asp:Button ID="continueShoppingButton" runat="server" Text="Go Back to Shopping" CssClass="SmallButtonText" OnClick="continueShoppingButton_Click" Width="388px" /><br />
    </button>
  <br />
    </div>
        <br />
    
    </form>
    
</body>
</html>
