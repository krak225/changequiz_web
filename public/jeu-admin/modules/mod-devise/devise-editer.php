<div class="leftbox" id="" style="padding:0px;">
			<div class="blocTitle">ENREGISTRER UN DEVISE</div>
			<div class="blocContent" style="margin-top:5px;padding:0px;">
				<div class="krakModule">

		<div id="article-editer" class="module editeMsg" style="padding:0px;">
		<script type="text/javascript">
			<!--
			$("document").ready(function(){
				$(".wysiwyg").wysiwyg();	
				$(".wysiwyg").css({width:"100%"});
				//
			});
			-->
		</script>
		
<?php
//Page générée automatiquement par quickApp V 2.0 :(Copyright: Armand Kouassi, @krak225, krak225@gmail.com, +225 08779408), le 19-05-2019 à 16:22:00  
	$info='<div class="default-info">Renseignez tous les champs puis cliquez sur <b>Valider</b> </div>';
		$devise_code=null;$devise_libelle=null;
		
		$libelles=array("Code","Libelle","Code de sécurité");
		$extensionsvalides=array("jpg","gif","png","bmp");
		$imageDirectory="../images/upload-devise/";
		$x=new krakVerification();
		$x->_initialiser();
		$x->InitLibelles($libelles);
		
		if(isset($_POST["add"])){ 
			extract($_POST);
			
			$devise_code= securisedData($devise_code);
			$devise_libelle= securisedData($devise_libelle);
			
				$x->verifierChaine($devise_code,"Code",3,1);
		$x->verifierChaine($devise_libelle,"Libelle",3,1);
	
			if($x->ToutEstCorrecte()){  
				$sql='INSERT INTO `devise` (devise_code,devise_libelle) 
				VALUES ("'.$devise_code.'","'.$devise_libelle.'")';

				//if(mysql_query($sql)){

				$stm = $db->pdo->prepare($sql);

				if($stm->execute()){

					$info='<div class="succes">Enregistrement effectué avec succès</div>'; 
					
					//initialiser les variables
					$devise_code=null;$devise_libelle=null;
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
	<form id="form-devise" enctype="multipart/form-data" method="post" data-creator="kw-Builder">
<fieldset>
		<label>Code</label>
	<input class="champ" type="text" name="devise_code" id="devise_code" value="<?php print $devise_code;?>"/>
	<span class="erreur"><?php print $x->erreurs['Code'];?></span><br/>
	<label>Libelle</label>
	<input class="champ" type="text" name="devise_libelle" id="devise_libelle" value="<?php print $devise_libelle;?>"/>
	<span class="erreur"><?php print $x->erreurs['Libelle'];?></span><br/>
</fieldset>
	<fieldset>
		<input type="submit" name="add" class="btn btn_valider" value="Valider"/>
	</fieldset>
	</form>

	</div>
	</div>
	</div>
