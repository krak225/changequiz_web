<div class="leftbox" id="" style="padding:0px;">
		<div class="blocTitle">LISTE DES QUESTIONS
		<a href="printer.php?table=question" target="_blank"><img class="btn_modifier" src="images/ic/b_print.png" style="width:20px;cursor:pointer;position:relative;top:0px;float:right;margin:-5px 25px 5px 0px;color:black;font-weight:normal;" title="Imprimer"/></a>
		| <span id="btn_open_search_box" class="prettyPhoto" style="cursor:pointer;position:relative;top:0px;float:right;margin:-5px 25px 5px 0px;color:black;font-weight:normal;"><img src="images/loupe.png" style="width:15px;" title="Rechercher"/> Rechercher</span></div>
		<div class="blocContent" style="margin-top:5px;padding:0px;">
			<div class="krakModule">
	
<div>
	<link rel="stylesheet" href="inc/listes/css/screen.css" type="text/css" media="screen" title="default" />
	<script type="text/javascript">
	<!--
	//Cette fonction permet de cocher toutes les lignes
	function cocherTout(nbre)
	{
		$("#checkallbox").html('<span onClick="decocherTout(100)"><img src="images/checkbox-checked.png" style="height:30px;"/></span>');	
		$("#checkallbox-h").html('<span onClick="decocherTout(100)"><img src="images/checkbox-checked.png" style="height:30px;"/></span>');	
		for (i=1;i <=nbre;i++)
		{
			document.getElementById("cfgM_"+i).checked=true;
		}
	}
	//Cette fonction permet de décocher tout les messages		
	function decocherTout(nbre)
	{
		$("#checkallbox").html('<span onClick="cocherTout(100)"><img src="images/checkbox-unchecked.png" style="height:30px;"/></span>');
		$("#checkallbox-h").html('<span onClick="cocherTout(100)"><img src="images/checkbox-unchecked.png" style="height:30px;"/></span>');
		for (i=1;i <=nbre;i++)
		{
			document.getElementById("cfgM_"+i).checked=false;
		}			
	}
	-->
	</script>
	<?php
	$info=null;
	if(isset($_POST["execAction"]))
	{
		extract($_POST);
		//$req=mysql_query($_SESSION["SQL"]);//print $_SESSION["SQL"];
		//récupère les id des membres dans un tableau
		$table_id=Array();$x=-1;
		//while($data=mysql_fetch_array($req)){

		$stm = $db->pdo->prepare($_SESSION["SQL"]);
		$stm->execute();
		$datas = $stm->fetchAll(PDO::FETCH_OBJ);
		foreach($datas as $data){
			$x++;$table_id["id$x"]=$data->id;}
		//pour chaque membre
		foreach($table_id as $id)
		{
			//définir la requète en fonction de l'action sélectionnée
			switch($action){
				case "activer":$sql='update question set `statut`="VALIDE" where id="'.$id.'"';break;
				case "desactiver":$sql='update question set `statut`="REJETE" where id="'.$id.'"';break;
				case "supprimer":$sql='delete from question where id="'.$id.'"';break;
			}
			//obtenir l'état de la case à cocher (checkbox)
			$checkBoxValue=isset($_POST["cfgM".$id])? 1 : 0;//print $checkBoxValue;
			//si la case est cochée on exécute la requète
			if($checkBoxValue==1){

				//if(mysql_query($sql)){

				$stm = $db->pdo->prepare($sql);
				if($stm->execute()){
					$info='<div class="succes">Action exécutée</div>'; 
				}
				else{
					$info='<div class="echec">Désolé!! Action exécutée</div>'.mysql_error();
				}
			}
		}
	}

	print $info;
	?>
	
	
	<!-- debut form recherche -->
	<form id="form-search" method="get" data-creator="kw-Builder" style="display:none;">
		<fieldset>
			
			<select class="champ" name="categorie_id" id="categorie_id" title="Categorie">
					<option value="">Categorie</option>
					<?php 
					$sql='select * from categorie';
					//$req=mysql_query($sql);
					//while($d51=mysql_fetch_object($req)){
					$stm = $db->pdo->prepare($sql);
					$stm->execute();
					$data = $stm->fetchAll(PDO::FETCH_OBJ);
					foreach($data as $d51){
						$selected = ($d51->categorie_id==$categorie_id)? ' selected ' : null;
						print '<option '.$selected.' value="'.$d51->categorie_id.'">'.$d51->categorie_libelle.'</option>';
					}
					?>
			</select>
			<select class="champ" name="niveau_id" id="niveau_id" title="Niveau">
					<option value="">Niveau</option>
					<?php 
					$sql='select * from niveau';
					//$req=mysql_query($sql);
					//while($d51=mysql_fetch_object($req)){
					$stm = $db->pdo->prepare($sql);
					$stm->execute();
					$data = $stm->fetchAll(PDO::FETCH_OBJ);
					foreach($data as $d51){
						$selected = ($d51->niveau_id==$niveau_id)? ' selected ' : null;
						print '<option '.$selected.' value="'.$d51->niveau_id.'">'.$d51->niveau_libelle.'</option>';
					}
					?>
			</select>
			<select name="statut" class="champ">
				<option value="">Statut</option>
				<option value="VALIDE">VALIDE</option>
				<option value="BROUILLON">BROUILLON</option>
			</select>
			<input type="submit" class="btn btn_valider" value="Rechercher"/>
		</fieldset>
	</form>

	<!-- fin form recherche-->
	
	<!--  start product-table ..................................................................................... -->
	<form id="mainform" action="" method="post">
	<table border="0" width="100%" cellpadding="0" cellspacing="0" id="product-table">
		<tr>
			<th class="table-header-check cbox" id="checkallbox-h" style="border:1px solid #d2d2d2;">
				<span onClick="cocherTout(100)"><img src="images/checkbox-unchecked.png" style="height:30px;"/></span>
			</th>
			<th class="table-header-options line-left"><a href="">Question (Fr/En)</a></th>
			<th class="table-header-options line-left"><a href="">Categorie</a></th>
			<th class="table-header-options line-left"><a href="">Niveau</a></th>
			<th class="table-header-options line-left"><a href="">Statut</a></th>
			<th class="table-header-options line-left"><a href="">Action</a></th>
		</tr>
		<?php
		$sql='select question.*, categorie.categorie_libelle, niveau.niveau_libelle from question 
		left join niveau on niveau.niveau_id = question.niveau_id 
		left join categorie using(categorie_id) where categorie_id <> 11 
		and type_jeu_id = 2 ';
		
		$where = null; 
		if(isset($_GET['user_id']) and !empty($_GET['user_id'])){$where.=' and user_id="'.$_GET['user_id'].'"';}
		if(isset($_GET['categorie_id']) and !empty($_GET['categorie_id'])){$where.=' and categorie_id="'.$_GET['categorie_id'].'"';}
		if(isset($_GET['statut']) and !empty($_GET['statut'])){$where.=' and question.statut="'.$_GET['statut'].'"';}
		if(isset($_GET['niveau_id']) and !empty($_GET['niveau_id'])){$where.=' and question.niveau_id="'.$_GET['niveau_id'].'"';}

		$sql.=$where;
		
		$sql.=' order by id DESC '; 
		
		
		$nlpp=10;
		$url='questionquiz.php?page=gerer';
		$url.= isset($_GET['categorie_id'])? '&categorie_id='.$_GET['categorie_id'] : '';
		$url.= isset($_GET['niveau_id'])? '&niveau_id='.$_GET['niveau_id'] : '';
		$url.= isset($_GET['statut'])? '&statut='.$_GET['statut'] : '';
		
		$x=new krakNewPaginer();
		$x->GenererSql($sql,$url,$nlpp);
		// $sql=$x->RenvoiSQL();
		$_SESSION["SQL"]=$x->RenvoiSQL();//print $_SESSION["SQL"];
		//$req=mysql_query($_SESSION["SQL"]) or die (mysql_error());$nbreligne=mysql_num_rows($req);
		$i=0;$y=0;			
		
		// $req=mysql_query($sql);$i=0;
		$stm = $db->pdo->prepare($_SESSION["SQL"]);
		$stm->execute();
		$data = $stm->fetchAll(PDO::FETCH_OBJ);
		foreach($data as $d){
		//while($d=mysql_fetch_object($req)){
		$i++;$trclass=($i%2==0)? null : ' class="alternate-row" ';
		print '<tr id="tr-'.$d->id.'" '.$trclass.'>
			<td><input type="checkbox" class="chk" name="cfgM'.$d->id .'" id="cfgM_'.$i .'"/></td>
			<td><a href="'.getPage().'.php?page=detail&id='.$d->id.'">'.stripslashes($d->question_fr).'</a><br/>
			<a href="'.getPage().'.php?page=detail&id='.$d->id.'">'.stripslashes($d->question_en).'</a></td>
			<td>'.stripslashes($d->categorie_libelle).'</td>
			<td>'.stripslashes($d->niveau_libelle).'</td>
			<td>'.stripslashes($d->statut).'</td>
			<td><a href="'.getPage().'.php?page=modifier&id='.$d->id.'"><img class="btn_modifier" src="images/btn_modifier.png" style="width:30px;" title="Modifier"/></a>
				<span style="cursor:pointer;" class="btn_suppr"><img class="btn_supprimer" id="'.$d->id.'" data-table="question" data-primarykey="id"  data-value="'.$d->id.'" src="images/btn_supprimer.png" style="width:;margin:3px;" title="Supprimer"/></span>	
			</td>
		</tr>';
		}
		?>
		<tr>
			<th id="checkallbox" style="border:1px solid #d2d2d2;width:;">
				<span onClick="cocherTout(100)"><img src="images/checkbox-unchecked.png" style="height:30px;"/></span>
			</th>
			<th class="th" colspan="1" style="border:1px solid #d2d2d2;text-align:center;letter-spacing:5px;">
				ACTION
			</th>
			<th class="th" colspan="4" style="border:1px solid #d2d2d2;padding:0 5px;">
				<select name="action" style="width:100px;">
					<option value="activer">VALIDER</option>
					<option value="desactiver">REJETER</option>
					<option value="supprimer">SUPPRIMER</option>
				</select>
				
				<input type="submit" class="btn btn_valider" style="margin:2px;" name="execAction" value="Appliquer à la sélection"/>
			
			</th>
		</tr>
	</table>
	</form>
	<!--  end content-table  -->
	
	<!--  start paging..................................................... -->
	<?php $x->afficherNumeros();?>
	<!--  end paging..................................................... -->
</div>
	</div>
	</div>
	</div>
