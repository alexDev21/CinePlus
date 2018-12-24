<%@ Page Title="Cartelera" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Cartelera.aspx.cs" Inherits="SisCine.Cartelera" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<%--    <script src="js/jquery-1.7.1.min.js"></script>
    <script type="text/javascript">
        var jQuery_1_7_1 = $.noConflict(true);
    </script>
    
<script>
      $(document).ready(function(){
       console.log($jQuery_1_7_1().jquery); // Esto imprime v1.9.1
       console.log($().jquery); // Esto imprime v1.10.2
      });
</script>--%>
    <link href="css/jqvideobox.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Slider" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContenidoCentral" runat="server">

    <!-- Content -->
    <section id="content">
        <div class="ic"></div>
        <div class="container_24">
            <div class="wrapper">
                <div class="grid_24 content-bg">
                    <div class="wrapper">
                        <article class="grid_22 suffix_1 prefix_1 alpha omega">

                            <h2>Películas en cartelera</h2>

                            <div class="wrapper indent-bot">

                                <div class="grid_7 alpha">
                                    <div class="wrapper">
                                        <a class="vidbox" href="https://www.youtube.com/watch?v=NzdT-FlX8GE">
                                            <img src="images/Cartelera/peli1.png" alt="" class="img-indent" /></a>
                                    </div>
                                    <a href="VentaEntradas.aspx?id=4">
                                        <h6 style="display: inline-block; text-indent: 60px;">Comprar</h6>
                                    </a><%--TODO:este enlace llevara en el query string el id de la peli seleccionada--%>
                                </div>


                                <div class="grid_7">
                                    <div class="wrapper">
                                        <a class="vidbox" href="https://www.youtube.com/watch?v=eU3Lp5aRj98">
                                            <img src="images/Cartelera/peli2.png" alt="" class="img-indent"></a>
                                        <br />
                                    </div>
                                    <h6 style="display: inline-block; text-indent: 60px;">Comprar</h6>

                                </div>



                                <div class="grid_7 omega">
                                    <div class="wrapper">
                                        <a class="vidbox" href="https://www.youtube.com/watch?v=YgU6L94rKxA">
                                            <img src="images/Cartelera/peli3.png" alt="" class="img-indent"></a>
                                    </div>
                                </div>

                            </div>


                            <div class="wrapper indent-bot">

                                <div class="grid_7 alpha">
                                    <div class="wrapper">
                                        <a class="vidbox" href="https://www.youtube.com/watch?v=cAKUObrfCAA">
                                            <img src="images/Cartelera/peli4.png" alt="" class="img-indent"></a>
                                    </div>
                                </div>


                                <div class="grid_7">
                                    <div class="wrapper">
                                        <a class="vidbox" href="https://www.youtube.com/watch?v=H4pyFWLmB74">
                                            <img src="images/Cartelera/peli5.png" alt="" class="img-indent"></a>
                                    </div>
                                </div>


                                <div class="grid_7 omega">
                                    <div class="wrapper">
                                        <a class="vidbox" href="https://www.youtube.com/watch?v=cOBeJBSgPMU">
                                            <img src="images/Cartelera/peli6.png" alt="" class="img-indent"></a>
                                    </div>
                                </div>


                            </div>


                            <div class="wrapper hr-border-1 indent-bot-2">


                                <div class="grid_7 alpha">
                                    <div class="wrapper">
                                        <a class="vidbox" href="https://www.youtube.com/watch?v=Q7GEAxX4688">
                                            <img src="images/Cartelera/peli7.png" alt="" class="img-indent"></a>
                                    </div>
                                </div>


                                <div class="grid_7">
                                    <div class="wrapper">
                                        <a class="vidbox" href="https://www.youtube.com/watch?v=WmARriLNQqk">
                                            <img src="images/Cartelera/peli8.png" alt="" class="img-indent"></a>
                                    </div>
                                </div>



                                <div class="grid_7 omega">
                                    <div class="wrapper">
                                        <a class="vidbox" href="https://www.youtube.com/watch?v=svOneiOur98">
                                            <img src="images/Cartelera/peli9.png" alt="" class="img-indent"></a>
                                    </div>
                                </div>


                            </div>


                            <%--  <div class="alignright">
                            	<a href="#" class="button">Siguiente pagina</a>
                            </div>   --%>
                        </article>
                    </div>
                </div>
            </div>
        </div>
    </section>




</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="ScriptsPagina" runat="server">

    <script src="js/swfobject.js"></script>
    <script src="js/jqvideobox.js"></script>
    <script>

        $(document).ready(function () {
            $(".vidbox").jqvideobox({ 'width': 400, 'height': 300, 'getimage': false, 'navigation': false, 'play_icon': false });
            $(".vidbox2").jqvideobox({ 'width': 400, 'height': 300, 'getimage': true, 'navigation': true });
        }
);</script>

    <script>
        $(document).ready(
function () {
    $(".vidbox").jqvideobox();
}
);</script>
</asp:Content>
