<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="MiHistorial.aspx.cs" Inherits="SisCine.MiHistorial" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bienvenido" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Slider" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContenidoCentral" runat="server">
    <form id="form1" runat="server">
        <center>
            <H1 style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: x-large; font-weight: bolder; color: #FFFFFF">MI HISTORIAL DE COMPRAS</H1>
    <asp:gridview runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="Unnamed1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="MI TARJETA" HeaderText="MI TARJETA" SortExpression="MI TARJETA" />
            <asp:BoundField DataField="Nombres" HeaderText="Nombres" SortExpression="Nombres" />
            <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" SortExpression="Apellidos" />
            <asp:BoundField DataField="Cod.compra" HeaderText="Cod.compra" InsertVisible="False" ReadOnly="True" SortExpression="Cod.compra" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Pelicula" HeaderText="Pelicula" SortExpression="Pelicula" />
            <asp:BoundField DataField="Sede" HeaderText="Sede" SortExpression="Sede" />
            <asp:BoundField DataField="Sala" HeaderText="Sala" SortExpression="Sala" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Función" HeaderText="Función" SortExpression="Función" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" DataFormatString="{0:d}" />
            <asp:BoundField DataField="#Tickets Niños" HeaderText="#Tickets Niños" SortExpression="#Tickets Niños" >
            <FooterStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="#Tickets Adultos" HeaderText="#Tickets Adultos" SortExpression="#Tickets Adultos" >
            <ControlStyle Width="106px" />
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Pago Total" HeaderText="Pago Total" SortExpression="Pago Total" FooterText="soles" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
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
        </asp:gridview>
            </center>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SisCine.Properties.Settings.conexion %>" SelectCommand="SP_historial" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="" Name="user" SessionField="cod_tar" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>
