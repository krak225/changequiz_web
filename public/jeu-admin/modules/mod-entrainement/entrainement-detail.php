<div class="leftbox" id="" style="padding:0px;">
			<div class="blocTitle">DÉTAILS D'UN ENTRAINEMENT</div>
			<div class="blocContent" style="margin-top:5px;padding:0px;">
				<div class="krakModule">

		<div id="article-editer" class="module editeMsg" style="padding:0px;">
		<script type="text/javascript">
			<!--
			$("document").ready(function(){
				$(".wysiwyg").wysiwyg();	
				$(".wysiwyg").css({width:"720"});
				//
			});
			-->
		</script>
		
<?php
if(isset($_GET["id"]) and is_numeric($_GET["id"])){
	$id=$_GET["id"];
	
	$sql='select * from entrainement
	where entrainement_id="'.$id.'"';
	//$req=mysql_query($sql);
	//$d=mysql_fetch_object($req);

	$stm = $db->pdo->prepare($sql);
	$stm->execute();
	$d = $stm->fetch(PDO::FETCH_OBJ);
	?>
	<label>User</label>
	<div>
					<?php 
					$sql='select * from user where user_id="'.$d->user_id.'"';
					//$req=mysql_query($sql);
					//$d1=mysql_fetch_object($req);

					$stm = $db->pdo->prepare($sql);
					$stm->execute();
					$d1 = $stm->fetchAll(PDO::FETCH_OBJ);

						print '<div>'.$d1->user_id.'</div>';
					
					?>
</div>
	<label>Categorie</label>
	<div>
					<?php 
					$sql='select * from categorie where categorie_id="'.$d->categorie_id.'"';
					//$req=mysql_query($sql);
					//$d1=mysql_fetch_object($req);

					$stm = $db->pdo->prepare($sql);
					$stm->execute();
					$d1 = $stm->fetchAll(PDO::FETCH_OBJ);

						print '<div>'.$d1->categorie_id.'</div>';
					
					?>
</div>
	<label>Score</label>
	<div><?php print $d->entrainement_score;?></div>
	<label>Compteur question</label>
	<div><?php print $d->entrainement_compteur_question;?></div>
	<label>Date</label>
	<div><?php print $d->entrainement_date;?></div>


	</div>
	</div>
	</div>
<?php
	}else{
		print "Données non trouvées";
	} 
	?>