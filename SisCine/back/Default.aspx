<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SisCine.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="menuGeneral" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="barraGorizontal" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContenidoCentral" runat="server">
    <div id="banner">
		
		<div id="slider">
			<div class="elemento">
			<a href="#"><img src="/img/s1.jpg" alt=""></a>
			</div>

			<div class="elemento">
			<a href="#"><img src="/img/s2.jpg" alt=""></a>
			</div>

			<div class="elemento">
			<a href="#"><img src="/img/estren5.jpg" alt=""></a>
			</div>

			<div class="elemento">
			<a href="#"><img src="/img/estren6.jpg" alt=""></a>
			</div>


		</div>
	</div>


	<div id="contenido"></div>
		
<script src='http://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js' type='text/javascript'/> </script>


		<script type="text/javascript">//<![CDATA[
$(function(){
    $('#slider div:gt(0)').hide();
    setInterval(function(){
      $('#slider div:first-child').fadeOut(0)
         .next('div').fadeIn(1000)
         .end().appendTo('#slider');}, 3000);
});
//]]></script>﻿

</asp:Content>
