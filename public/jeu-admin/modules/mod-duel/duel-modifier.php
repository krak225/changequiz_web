<div class="leftbox" id="" style="padding:0px;">
			<div class="blocTitle">MODIFIER UN DUEL</div>
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
	
	$sql='select * from duel
	where duel_id="'.$id.'"';
	//$req=mysql_query($sql);
	//$d=mysql_fetch_object($req);
	$stm = $db->pdo->prepare($sql);
	$stm->execute();
	$d = $stm->fetch(PDO::FETCH_OBJ);
	
	//Page générée automatiquement par krak Web Page Generator 1.0 le 19-05-2019 à 16:22:00  
	$info='<div class="default-info">Renseignez tous les champs puis cliquez sur <b>Modifier</b> </div>';
		$user_id=stripcslashes($d->user_id);$adversaire_id=stripcslashes($d->adversaire_id);$duel_date_creation=stripcslashes($d->duel_date_creation);$duel_date_validation=stripcslashes($d->duel_date_validation);$duel_date_debut=stripcslashes($d->duel_date_debut);$duel_date_fin=stripcslashes($d->duel_date_fin);$duel_vainqueur_id=stripcslashes($d->duel_vainqueur_id);$duel_abandonneur_id=stripcslashes($d->duel_abandonneur_id);$current_player_id=stripcslashes($d->current_player_id);$compteur_question=stripcslashes($d->compteur_question);$readystate=stripcslashes($d->readystate);$connected_users=stripcslashes($d->connected_users);
		
			
		$libelles=array("User","Adversaire","Date creation","Date validation","Date debut","Date fin","Vainqueur","Abandonneur","Current player","Compteur question","Readystate","Connected users","Code de sécurité");
		$extensionsvalides=array("jpg","gif","png","bmp");
		$imageDirectory="../images/upload-duel/";
		$x=new krakVerification();
		$x->_initialiser();
		$x->InitLibelles($libelles);
		
		if(isset($_POST["add"])){ 	
			
			extract($_POST);
			
			$user_id= securisedData($user_id);
			$adversaire_id= securisedData($adversaire_id);
			$duel_date_creation= securisedData($duel_date_creation);
			$duel_date_validation= securisedData($duel_date_validation);
			$duel_date_debut= securisedData($duel_date_debut);
			$duel_date_fin= securisedData($duel_date_fin);
			$duel_vainqueur_id= securisedData($duel_vainqueur_id);
			$duel_abandonneur_id= securisedData($duel_abandonneur_id);
			$current_player_id= securisedData($current_player_id);
			$compteur_question= securisedData($compteur_question);
			$readystate= securisedData($readystate);
			$connected_users= securisedData($connected_users);
			
			
			if($x->ToutEstCorrecte()){  
				$sql='UPDATE `duel` SET user_id = "'.$user_id.'",adversaire_id = "'.$adversaire_id.'",duel_date_creation = "'.$duel_date_creation.'",duel_date_validation = "'.$duel_date_validation.'",duel_date_debut = "'.$duel_date_debut.'",duel_date_fin = "'.$duel_date_fin.'",duel_vainqueur_id = "'.$duel_vainqueur_id.'",duel_abandonneur_id = "'.$duel_abandonneur_id.'",current_player_id = "'.$current_player_id.'",compteur_question = "'.$compteur_question.'",readystate = "'.$readystate.'",connected_users = "'.$connected_users.'"'; 
				 
				if(!empty($ext)){
					$sql.=',  ';
				}
				$sql.=' WHERE duel_id="'.$_GET["id"].'"';
				
				
				//if(mysql_query($sql)){

				$stm = $db->pdo->prepare($sql);

				if($stm->execute()){

					$info='<div class="succes">Modification effectué avec succès</div>'; 
					
					//initialiser les variables
					$user_id=null;$adversaire_id=null;$duel_date_creation=null;$duel_date_validation=null;$duel_date_debut=null;$duel_date_fin=null;$duel_vainqueur_id=null;$duel_abandonneur_id=null;$current_player_id=null;$compteur_question=null;$readystate=null;$connected_users=null;
				}
				else{
					$info='<div class="echec">Désolé!! enregistrement non effectué .</div>'. mysql_error();
				}		
			}
			else
			{  
				$info='<div class="echec">Attemtion!! erreurs dans le formulaire</div>'; 
			}
		}
	?>

	<div class="info"><?php print $info;?></div>
	<form id="form-duel" enctype="multipart/form-data" method="post" data-creator="kw-Builder">
<fieldset>
		<label>User</label>
	<select class="champ" name="user_id" id="user_id">
					<option value=""></option>
					<?php 
					$sql='select * from user';

					//$req=mysql_query($sql);
					//while($d=mysql_fetch_object($req)){

					$stm = $db->pdo->prepare($_SESSION["SQL"]);
					$stm->execute();
					$data = $stm->fetchAll(PDO::FETCH_OBJ);
					foreach($data as $d){	
						$selected = ($d->user_id==$user_id)? ' selected ' : null;
						print '<option '. $selected. ' value="'.$d->user_id.'">'.$d->user_id.'</option>';
					}
					?>
</select>
	<span class="erreur"><?php print $x->erreurs['User'];?></span><br/>
	<label>Adversaire</label>
	<select class="champ" name="adversaire_id" id="adversaire_id">
					<option value=""></option>
					<?php 
					$sql='select * from adversaire';

					//$req=mysql_query($sql);
					//while($d=mysql_fetch_object($req)){

					$stm = $db->pdo->prepare($_SESSION["SQL"]);
					$stm->execute();
					$data = $stm->fetchAll(PDO::FETCH_OBJ);
					foreach($data as $d){	
						$selected = ($d->adversaire_id==$adversaire_id)? ' selected ' : null;
						print '<option '. $selected. ' value="'.$d->adversaire_id.'">'.$d->adversaire_id.'</option>';
					}
					?>
</select>
	<span class="erreur"><?php print $x->erreurs['Adversaire'];?></span><br/>
	<label>Date creation</label>
	<input class="champ" type="text" name="duel_date_creation" id="duel_date_creation" value="<?php print $duel_date_creation;?>"/>
	<span class="erreur"><?php print $x->erreurs['Date creation'];?></span><br/>
	<label>Date validation</label>
	<input class="champ" type="text" name="duel_date_validation" id="duel_date_validation" value="<?php print $duel_date_validation;?>"/>
	<span class="erreur"><?php print $x->erreurs['Date validation'];?></span><br/>
	<label>Date debut</label>
	<input class="champ" type="text" name="duel_date_debut" id="duel_date_debut" value="<?php print $duel_date_debut;?>"/>
	<span class="erreur"><?php print $x->erreurs['Date debut'];?></span><br/>
	<label>Date fin</label>
	<input class="champ" type="text" name="duel_date_fin" id="duel_date_fin" value="<?php print $duel_date_fin;?>"/>
	<span class="erreur"><?php print $x->erreurs['Date fin'];?></span><br/>
	<label>Vainqueur</label>
	<select class="champ" name="duel_vainqueur_id" id="duel_vainqueur_id">
					<option value=""></option>
					<?php 
					$sql='select * from duel_vainqueur';

					//$req=mysql_query($sql);
					//while($d=mysql_fetch_object($req)){

					$stm = $db->pdo->prepare($_SESSION["SQL"]);
					$stm->execute();
					$data = $stm->fetchAll(PDO::FETCH_OBJ);
					foreach($data as $d){	
						$selected = ($d->duel_vainqueur_id==$duel_vainqueur_id)? ' selected ' : null;
						print '<option '. $selected. ' value="'.$d->duel_vainqueur_id.'">'.$d->duel_vainqueur_id.'</option>';
					}
					?>
</select>
	<span class="erreur"><?php print $x->erreurs['Vainqueur'];?></span><br/>
	<label>Abandonneur</label>
	<select class="champ" name="duel_abandonneur_id" id="duel_abandonneur_id">
					<option value=""></option>
					<?php 
					$sql='select * from duel_abandonneur';

					//$req=mysql_query($sql);
					//while($d=mysql_fetch_object($req)){

					$stm = $db->pdo->prepare($_SESSION["SQL"]);
					$stm->execute();
					$data = $stm->fetchAll(PDO::FETCH_OBJ);
					foreach($data as $d){	
						$selected = ($d->duel_abandonneur_id==$duel_abandonneur_id)? ' selected ' : null;
						print '<option '. $selected. ' value="'.$d->duel_abandonneur_id.'">'.$d->duel_abandonneur_id.'</option>';
					}
					?>
</select>
	<span class="erreur"><?php print $x->erreurs['Abandonneur'];?></span><br/>
	<label>Current player</label>
	<select class="champ" name="current_player_id" id="current_player_id">
					<option value=""></option>
					<?php 
					$sql='select * from current_player';

					//$req=mysql_query($sql);
					//while($d=mysql_fetch_object($req)){

					$stm = $db->pdo->prepare($_SESSION["SQL"]);
					$stm->execute();
					$data = $stm->fetchAll(PDO::FETCH_OBJ);
					foreach($data as $d){	
						$selected = ($d->current_player_id==$current_player_id)? ' selected ' : null;
						print '<option '. $selected. ' value="'.$d->current_player_id.'">'.$d->current_player_id.'</option>';
					}
					?>
</select>
	<span class="erreur"><?php print $x->erreurs['Current player'];?></span><br/>
	<label>Compteur question</label>
	<input class="champ" type="text" name="compteur_question" id="compteur_question" value="<?php print $compteur_question;?>"/>
	<span class="erreur"><?php print $x->erreurs['Compteur question'];?></span><br/>
	<label>Readystate</label>
	<input class="champ" type="text" name="readystate" id="readystate" value="<?php print $readystate;?>"/>
	<span class="erreur"><?php print $x->erreurs['Readystate'];?></span><br/>
	<label>Connected users</label>
	<input class="champ" type="text" name="connected_users" id="connected_users" value="<?php print $connected_users;?>"/>
	<span class="erreur"><?php print $x->erreurs['Connected users'];?></span><br/>
</fieldset>
	<fieldset>
		<input type="submit" name="add" class="btn btn_valider" value="Valider"/>
	</fieldset>
	</form>

	</div>
	</div>
	</div>
<?php
	}else{
		print "Données non trouvées";
	} 
	?>