<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SearchBox.ascx.cs" Inherits="SearchBox" %>

<div class="form-group">
    <asp:TextBox ID="searchTextBox" Runat="server" type="text" class="form-control" placeholder="Search"/>
</div>
<asp:Button ID="goButton" Runat="server" class="btn btn-default" Text="Search Game" OnClick="goButton_Click" />
<asp:CheckBox ID="allWordsCheckBox" CssClass="SearchBox" Runat="server" Text="Search for all words" />
