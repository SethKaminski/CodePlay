<%@ Page Title="" Language="C#" MasterPageFile="~/Codeplay_MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="DefaultCodePlay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="ProductImages/84188_front.jpg"  height="200">
                <div class="carousel-caption">
                    <h3></h3>
                </div>
            </div>

            <div class="item">
                <img src="ProductImages/fifa15messi.jpg"  height="200">
                <div class="carousel-caption">
                    <h3></h3>
                </div>
            </div>

            <div class="item">
                <img src="ProductImages/Metal_Gear_Solid_V_Ground_Zeroes_main_promotional_art.jpg" height="200">
                <div class="carousel-caption">
                    <h3></h3>
                </div>
            </div>

            <div class="item">
                <img src="ProductImages/P4D-JP-Box-Art_03-25-15.jpg" height="200">
                <div class="carousel-caption">
                    <h3>/h3>
                </div>
            </div>
        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</asp:Content>

