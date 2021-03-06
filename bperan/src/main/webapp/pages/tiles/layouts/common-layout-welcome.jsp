<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>

<!DOCTYPE html> 
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Contrucciones Bah�a Per�n</title>
    
    <!-- Bootstrap -->
    <!-- <link href="css/bootstrap.min.css" rel="stylesheet"> -->
    <link href="css/navbar.css" rel="stylesheet">
    <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet">
    
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery/jquery-2.2.3.js"></script>
    <script src="js/bootstrap-3.3.6/date-picker.js"></script>
    <script src="js/bootstrap-3.3.6/bootstrap-confirm-delete.js"></script>
    <script src="js/validation/jquery.validate.min.js"></script>
    <script type="text/javascript" src="js/validation/localization/messages_es.js"> </script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <!-- <script src="js/bootstrap-3.3.6/bootstrap.min.js"></script> -->
    
    <sb:head/>
</head>
<body>
<div class="container">
	<tiles:insertAttribute name="header"/>
	<tiles:insertAttribute name="menu"/>
	<tiles:insertAttribute name="body"/>
	<tiles:insertAttribute name="footer"/>	
</div>

<script type="text/javascript">
$(document).ready(function() {
	$( '.delete' ).bootstrap_confirm_delete(
			{
	            debug:              false,
	            heading:            'Eliminaci�n de registro',
	            message:            '�Seguro que desea eliminar este elemento?'	       
	        }
	);
});
</script>
</body>
</html>