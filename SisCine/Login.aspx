<%@ Page Title="Ingreso" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SisCine.Login1" %>
<%@ MasterType VirtualPath="~/Principal.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bienvenido" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContenidoCentral" runat="server">
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

                            <h2>Ingresa a tu cuenta:</h2>
                            <form runat="server" id="contactf">
                                <fieldset>
                                    <%--PARA USAR UPDATE PANELS SIEMPRE DEBE HABER UN SCRIPT MANAGER--%>
                                    <asp:ScriptManager runat="server" ID="ScriptManager1" />
                                    <%--ESTE UPDATE PANEL HACE USO DEL METODO DEL CODEBEHIND Q LIMPIA LOS INPUTS--%>
                                    <asp:UpdatePanel runat="server">
                                        <%--EL TRIGUER ES PARA Q  SE LANCE A PARTIR DEL CLICK DEL BTN LIMP--%>
                                        <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="btnLimp" EventName="Click" />
                                        </Triggers>
                                        <ContentTemplate>
                                            <label class="name">
                                                <span>Código Tarjeta :</span>
                                                <asp:TextBox ID="TextBox1" runat="server" Text="cp0001"></asp:TextBox>
                                            </label>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                                ErrorMessage="El campo es requerido"
                                                ControlToValidate="TextBox1"
                                                CssClass="span-validator">                                   
                                            </asp:RequiredFieldValidator>
                                            <br />
                                            <label class="email">
                                                <span>Contraseña:</span>
                                                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Text="admin">admin</asp:TextBox>
                                            </label>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                                ErrorMessage="El campo es requerido"
                                                ControlToValidate="TextBox2"
                                                CssClass="span-validator">                                   
                                            </asp:RequiredFieldValidator>

                                            <%--      <asp:ValidationSummary ID="ValidationSummary1" runat="server"
                                                DisplayMode="List" ShowSummary="true" HeaderText="Errors:" />--%>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                    <br />
                                    <asp:UpdatePanel runat="server" UpdateMode="Conditional">
                                        <ContentTemplate>
                                            <div class="btns">
                                                <%--TODO: ESTE BOTON DEBE SER CONTROLADO CON JS ,HABILITARLO CUANDO HAY ALGO ESCRTITO SINO BLOQUEADO--%>
                                                <asp:Button ID="btnLimp" class="btnIni" runat="server" Text="Limpiar" OnClick="btnLimp_Click" OnClientClick="deshabilitarBtnLimp" />
                                                <asp:Button ID="btnIniciar" class="btnIni" runat="server" Text="Iniciar" OnClick="btnIniciar_Click" /><%--onClientclick="validarCampos()"--%>
                                                <center>
                                             <asp:Label ID="lblMensaje" runat="server" ForeColor="Red" Width="490px" Font-Size="Large"></asp:Label>
                                        </center>
                                                <a class="btnHref" href="Registrarse.aspx">Registrarme</a>
                                            </div>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>


                                    <%-- <a href="Registrarse.aspx"><asp:Button ID="btnReg" class="btnReg" runat="server" Text="Registrarme"  /></a>--%><%--OnClick="btnReg_Click"--%>
                                </fieldset>


                            </form>

                        </article>
                        <!--FIN INCIO DE SESION-->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div id="dialog" title="Dialog Title">I'm a dialog</div>
</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="Slider" runat="server">
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="ScriptsPagina" runat="server">

    <script>
        function deshabilitarBtnLimp()// NO FUNCIONA COMO SE ESPERABA
        {
            btnLimpiar.disabled = true;
        }

        var btnLimpiar = document.getElementById('<%=btnLimp.ClientID %>');//.addEventListener('click',
        btnLimpiar.disabled = true;

        $(document).ready(function () {


            //TODO BORRAR 


            //ESTO TMPOCO FUNCIONA COMO SE ESPERABA PARECE Q EL POSTBACK ASINCRONO CANCELA EL EVENTO JS EN EL CLIETNE
            // var btnLimpiar = document.getElementById('<%=btnLimp.ClientID %>');//.addEventListener('click',
            //btnLimpiar.disabled = true;
            //function () {
            //    btnLimpiar.disabled = true;
            //});



            // Initialize the plugin
            $('#my_popup').popup();
        });
    </script>

    <script>

<%--        function validarCampos() {
            var txt_user = document.getElementById('<%=TextBox1.ClientID%>');
            //txt_contra;

            if (txt_user.value == "") {
                alert("llene todos los campos ");
            } else {
                var r = document.getElementById('<%=btnIniciar_aux.ClientID%>');
                r.click();
            }
        }--%>



        $("#dialog").dialog({ autoOpen: false });
        $("#opener").click(function () {
            $("#dialog").dialog("open");
        });




        var txtCodTarjeta = document.getElementById('<%=TextBox1.ClientID %>');
        txtCodTarjeta.addEventListener('keyup',
            (event) => {
                //const keyName = event.key;
                //alert('keypress event\n\n' + 'key: ' + keyName);
                if (txtCodTarjeta.value == '') {
                    document.getElementById('<%=btnLimp.ClientID %>').style.backgroundColor = '#2f2f2f';
                    document.getElementById('<%=btnLimp.ClientID %>').disabled = true;
                } else {
                    document.getElementById('<%=btnLimp.ClientID %>').style.backgroundColor = 'green';
                    document.getElementById('<%=btnLimp.ClientID %>').disabled = false;
                }

            });


        <%--    (function () {
                if (txtCodTarjeta.value == '') {
                    document.getElementById('<%=btnLimp.ClientID %>').style.backgroundColor = '#2f2f2f';
                    document.getElementById('<%=btnLimp.ClientID %>').disabled = true;
                }

        }());--%>



    </script>


    <style>
        .btnHref {
            text-decoration: none;
            background-color: #b30404;
            color: white;
            border-radius: 5px;
            font-weight: bold;
            text-transform: uppercase;
            padding: 8px 50px;
            display: inline-block;
        }


        .span-validator {
            width: auto !important;
            margin-top: -5px !important;
            margin-left: 90px !important;
            color: red !important;
        }
    </style>


</asp:Content>
