<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Login2.aspx.cs" Inherits="SisCine.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContenidoCentral" runat="server">


   
        <div id="loginbox">
            &nbsp;&nbsp;&nbsp;
            Nombre:&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            Contraseña:&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Iniciar Sesión" />
        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
   </div>

</asp:Content>
