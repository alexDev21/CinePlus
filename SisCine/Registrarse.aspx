<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="SisCine.Registrarse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bienvenido" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Slider" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContenidoCentral" runat="server">
    <!-- Content -->
    <section id="content">
        <div class="ic"></div>
        <div class="container_24">
            <div class="wrapper">
                <div class="grid_24 content-bg">
                    <div class="wrapper">

                        <!--INFORMACION DE INICO DE SESION-->
                        <article class="grid_6 suffix_1 prefix_1 alpha">
                            <h2>Tarjeta CinePlus info:</h2>
                            <p class="p1">
                                <strong class="str-2">CinePlus
                                </strong>
                                <p>Con ella podrás :</p>
                                <p>-Consultar tus transacciones e historial de compras</p>
                                <p>-Tener acceso a promociones</p>
                                <p>-Suscribirte a la cartelera</p>

                            </p>

                        </article>
                        <!--FIN INFORMACION-->



                        <!--INCIIO DE SESION-->
                        <article class="grid_15 suffix_1 omega">

                            <h2>Registrate para crear tu cuenta:</h2>
                            <form runat="server" id="contactf">
                                <%--<form id="contact-form" method="post">--%>
                                <fieldset>

                                    <label class="name">
                                        <span>Nombres :</span>
                                        <asp:TextBox ID="txtNomb" runat="server"></asp:TextBox>
                                    </label>

                                    <label class="name">
                                        <span>Apellidos :</span>
                                        <asp:TextBox ID="txtApe" runat="server"></asp:TextBox>
                                    </label>


                                    <label class="name">
                                        <span>Código Tarjeta :</span>
                                        <asp:TextBox ID="txtCodTar" runat="server"></asp:TextBox>
                                    </label>

                                    <label class="email">
                                        <span>Contraseña:</span>
                                        <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
                                    </label>


                                    <label class="name">
                                        <span>DNI :</span>
                                        <asp:TextBox ID="txtDni" runat="server"></asp:TextBox>
                                    </label>

                                    <label class="name">
                                        <span>Edad :</span>
                                        <asp:TextBox ID="txtEdad" runat="server"></asp:TextBox>
                                    </label>


                                    <div class="btns">
                                        <%--<a class="button" onclick="document.getElementById('contact-form').reset()">Limpiar</a>
                                        <a class="button" onclick="document.getElementById('contact-form').submit()">Iniciar</a>--%>

                                        <asp:Button ID="btnLimp" class="btnIni" runat="server" Text="Limpiar" OnClick="btnLimp_Click" />
                                       
                                        <asp:Button ID="btnIniciar" class="btnIni" runat="server" Text="Guardar" OnClick="btnIniciar_Click" />
                                       <center> <asp:Label ID="lblMensaje" runat="server" ForeColor="Red" Width="490px" Font-Size="Large"></asp:Label></center>


                                    </div>
                                </fieldset>
                            </form>
                        </article>
                        <!--FIN INCIO DE SESION-->
                    </div>
                </div>
            </div>
        </div>
    </section>




</asp:Content>
