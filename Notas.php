<?php
session_start();
if (!isset($_SESSION['user_login_status']) AND $_SESSION['user_login_status'] != 1) {
    header("location: login.php");
    exit;
}

require_once ("config/db.php");
require_once ("config/conexion.php");

$active_categoria="active";
$title="Categorías | Simple Invoice";
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Nota de remisión</title>
  <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
  <link rel="stylesheet" href="bustras/css/bootstrap.css">
  <link rel="stylesheet" href="bustras/css/bootstrap-theme.css">
  <link rel="stylesheet" href="bustras/css/estilos.css">
</head>

<body>

    <div class="container contenedor_principal">
        <br>
        <header>
            <nav class="navbar navbar-default navbar-fixed-top navbar-inverse">
    
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a href="#" class="navbar-brand">Esto no es Dolibarr</a>
                    </div>
                    <div class="collapse navbar-collapse" id="navbar1">
                        <!-- id tiene que ser igual que el que pusiste en el data-target, solo que en este se le añade # -->
                        <ul class="nav navbar-nav">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Modulo Lalo <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="">Cosa Modulo #1</a></li>
                                    <li><a href="">Cosa Modulo #2</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="">Cosa Modulo #4</a></li>
                                </ul>
                            </li>
                            
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Modulo Betty <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="">Cosa Modulo #1</a></li>
                                    <li><a href="">Cosa Modulo #2</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="">Cosa Modulo #4</a></li>
                                </ul>
                            </li>
                            
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Modulo Zuñiga<span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="">Cosa Modulo #1</a></li>
                                    <li><a href="">Cosa Modulo #2</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="">Cosa Modulo #4</a></li>
                                </ul>
                            </li>
                        </ul>
                        <!-- terminan bottones -->
                        <ul class="nav navbar-nav navbar-right">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="">Cosa Modulo #1</a></li>
                                    <li><a href="">Cosa Modulo #2</a></li>
                                    <li class="divider"></li>
                                    <li><a href="">Cosa Modulo #4</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>



        <head>
            <?php include("head.php");?>
        </head>
        <body>

         <h4><i class='glyphicon glyphicon-list-alt'></i> Notas </h4>

         <div class="panel-body">

            <?php

$link = new PDO('mysql:host=localhost;dbname=venta_productos', 'root', ''); 

?>


<div class="container">
  <table class="table table-striped">

      <thead>
          <tr>
             <tr class="active">
                <th>ID producto</th>
                <th>Nombre</th>
                <th>Precio de venta</th>
                <th>Cantidad</th>
                <th>Precio x cantidad</th>

            </tr>
        </thead>


        <?php foreach ($link->query('SELECT *,SUM(precio*cantidad) as total FROM notas_productos, productos WHERE notas_productos.fk_idproducto_productos = productos.idproducto') as $row){
           ?> 

           <tr>
               <td><?php echo $row['fk_idproducto_productos'] ?></td>
               <td><?php echo $row['nombre'] ?></td>
               <td><?php echo $row['precio'] ?></td>
               <td><?php echo $row['cantidad'] ?></td>
               <td><?php echo $row['total'] ?></td>
           </tr>


       </tbody>


       <tfoot>
         <tr>
            <th colspan="4">TOTAL</th>
            <th><?php echo $row['total']?></th> <!---arreglaaaaaaaaaaaaar><-->
        </tr>
    </tfoot>

    <?php
    }
    ?>


</table>

<button type="button" class="btn btn-danger">Imprimir</button> <!---arreglaaaaaaaaaaaaar><-->

</div>	
</form>		
</div>
</div>

</div>
<hr>
<?php
include("footer.php");
?>
<script type="text/javascript" src="js/categorias.js"></script>
</body>
</html>
