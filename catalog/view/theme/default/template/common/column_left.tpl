<?php if ($modules) {

	if(isset($_GET['route'])){ 

		$route = $_GET['route'];

		if( $route == "common/home"){ ?>

		<column id="column-left" class="">
		  <?php foreach ($modules as $module) { ?>
		  <?php echo $module; ?>
		  <?php } ?>
		</column>
<?php 
	}	} else 
{	?>

<column id="column-left" class="col-sm-3 hidden-xs">
  <?php foreach ($modules as $module) { ?>
  <?php echo $module; ?>
  <?php } ?>
</column>
<?php } } ?>
