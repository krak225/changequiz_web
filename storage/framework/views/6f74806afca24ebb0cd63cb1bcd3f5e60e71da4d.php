<?php $__env->startSection('content'); ?>
<ul class="breadcrumb no-border no-radius b-b b-light pull-in"> 
	<li><a href="<?php echo e(route('home')); ?>"><i class="fa fa-home"></i> Accueil</a></li> 
	<li><a href="<?php echo e(route('duels')); ?>"><i class="fa fa-play"></i> Mes duels</a></li> 
	<li class="active">Duel N° <?php echo e($duel_id); ?></li> 
</ul> 

<div class="m-b-md"> 
	<h3 class="m-b-none">JEU DE DUEL</h3> 
</div>

<?php if(Session::has('message')): ?>
	<div class="alert alert-success">
	  <?php echo e(Session::get('message')); ?>

	</div>
<?php endif; ?>

<?php if(Session::has('warning')): ?>
	<div class="alert alert-warning">
	  <?php echo e(Session::get('warning')); ?>

	</div>
<?php endif; ?>


<div class="panel panel-default page_duel" id="PageDuel"> 

	<div class="wizard-steps clearfix" id="form-wizard"> 
		<ul class="steps"> 
			<li data-target="#step3"><span class="badge"></span>DUEL N° <?php echo e($duel_id); ?></li>
		</ul> 
	</div> 

	<div class="step-content clearfix"> 
		<div id="ESPACEDEJEU">
			
			<div class="col-md-2 text-center" id="boxJoueur2"> 
				
				<div class="col-md-12"> 
					<button id="myScoreBox" type="button" class="btn btn-info btn-sm rounded circle"><span id="score"><?php echo e($my_score); ?></span> <i class="fa fa-star"></i></button> 
				</div>
				
				<div class="player_photo col-md-12" style="margin-top:3px;">
					<input class="usernameInput" type="hidden" maxlength="14" value="<?php echo e(ucfirst(strtolower(Auth::user()->pseudo ))); ?>"/>
					<input id="my_user_id" type="hidden" value="<?php echo e(Auth::user()->id); ?>"/>
					<input id="to_user_id" type="hidden" value="<?php echo e($adversaire_id); ?>"/>
					<input id="to_user_pseudo" type="hidden" value="<?php echo e(ucfirst($adversaire->pseudo)); ?>"/>
		  
					<img class="img-responsive rounded" src="<?php echo e(asset('images/avatars/'. Auth::user()->photo )); ?>" alt=""/>
					
				</div>
				
				
				<div class="player_name"><?php echo e('@'.Auth::user()->pseudo); ?></div>
			
				<div class="line"></div>
			
				<div id="MesQuestionsView" style="display:none;">
				<div class="row" id="boxMesQuestions">
					
					<div class="bloc_name">Questions</div>
					
					<div class="row" >
						<?php $__currentLoopData = $questions; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $question): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
						<?php if($question->statut_selection == 'SELECTED'): ?>
						<button 
						<?php if(!Stdfn::isUsedInDuel($duel_id,$question->id)): ?>
							class="question_to_choose btn btn-warning btn-sm"
							data-id="<?php echo e($question->id); ?>" 
							data-question="<?php echo e($question->question); ?>"
							data-propositionA="<?php echo e($question->propositionA); ?>"
							data-propositionB="<?php echo e($question->propositionB); ?>"
							data-propositionC="<?php echo e($question->propositionC); ?>"
							data-question="<?php echo e($question->question_fr); ?>"
						<?php else: ?>
							class="btn btn-gray btn-sm question_used"
						<?php endif; ?>
						title="<?php echo e($question->question); ?>"
						>Q <?php echo e($question->id); ?></button>
						
						
						<?php endif; ?>
						<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
					</div>
					
					<div class="line"></div>
					
					<div class="col-md-12">
						<div class="bloc_name">Jockers</div>
						<div id="vies">
							<?php if($jockers_disponibles == 3): ?>
							<span id="jocker3" class="btn jocker"></span>
							<span id="jocker2" class="btn jocker"></span>
							<span id="jocker1" class="btn jocker"></span>
							<?php endif; ?>
							
							<?php if($jockers_disponibles == 2): ?>
							<span id="jocker3" class="btn jocker"></span>
							<span id="jocker2" class="btn jocker"></span>
							<span id="jocker1" class="btn jocker elimine"></span>
							<?php endif; ?>
							
							<?php if($jockers_disponibles == 1): ?>
							<span id="jocker3" class="btn jocker"></span>
							<span id="jocker2" class="btn jocker elimine"></span>
							<span id="jocker1" class="btn jocker elimine"></span>
							<?php endif; ?>
							
							<?php if($jockers_disponibles == 0): ?>
							<span id="jocker3" class="btn jocker elimine"></span>
							<span id="jocker2" class="btn jocker elimine"></span>
							<span id="jocker1" class="btn jocker elimine"></span>
							<?php endif; ?>
						</div>
					</div>
				</div>
				</div>
				
			</div> 
			
			<div class="col-md-8 text-center"> 
				
				<div id="jeu"> 
				
					<div id="StartView" style="display:none0"> 
						<div style="padding:90px 0px;">
							<h1>DUEL</h1>
							<h2><?php echo e(ucfirst(Auth::user()->pseudo)); ?> vs <?php echo e(ucfirst($adversaire->pseudo)); ?></h2>
							<div></div>
						</div> 
					</div>
					
					<div id="PauseView" style="display:none"> 
						<div style="padding:130px 0px;">
							<h1><i class="fa fa-pause"></i> PAUSE</h1>
							<div>Vous avez mis le jeu en pause!</div>
						</div> 
					</div> 
					
					<div id="EndView" style="display:none"> 
						<div style="padding:130px 0px;">
							<h1><i class="fa fa-stop"></i> DUEL TERMINE</h1>
							<div id="texte_fin">Le duel est terminé!</div>
						</div> 
					</div> 
					
					<div id="InfoView" style="display:none"> 
						<div style="padding:130px 30px;">
							<h2 id="infoTexte">
								Welcome on crackgame!
							</h2>
						</div> 
					</div> 
					
					<div id="GameView" style="display:none;"> 
						
						<div class="col-md-12" id="boxQuestion"> 
							
							<table class="table table-striped m-b-none datatable " style="display:none;">
								<tbody class="messages">	
								</tbody>	
							</table>
							
							<div id="questionAuthor"> 
								
							</div>
							
							<input type="hidden" id="duel_id" value="<?php echo e($duel_id); ?>"> 
							<input type="hidden" id="question_id"> 
							<div class="col-md-12" id="questionBox" style="height:70px;"> 
								<div id="boxCptQuestion" style="display:none;height:1px;"> <span id="cptQuestion0"></span>: </div> 
								<div id="question" style="border-top:0px;padding:10px;font-size:18px;"> 
									
								</div>
							</div>
							
						</div>
						
						<div id="boxDetailsQuestion" style="display:none;font-weight:bold;font-size:20px;" >
							Détails d'une question
						</div>
						
						<div id="boxPropositions">
						
							<br style="clear:both;"/>
							
							<div class="line"></div>
							
							<div class="col-md-12 text-left row" style="min-height:155px;border:0px solid red"> 
								<div id="propositionBox"> 
									<form id="formPropositions" method="post"> 
										<input id="question_id" type="hidden" name="question_id">
										<ul class="listePropositions" style="padding:0px;"> 
											<li class="btn btn-gray2 btn-sm btn-proposition" id="btnA" for="checkA"><label><input id="checkA" type="radio" name="reponse" class="reponse" value="A"/> <span id="propositionA" >A</span></label></li>
											<li class="btn btn-gray2 btn-sm btn-proposition" id="btnB" for="checkB"><label><input id="checkB" type="radio" name="reponse" class="reponse" value="B"/> <span id="propositionB" >B</span></label></li>
											<li class="btn btn-gray2 btn-sm btn-proposition" id="btnC" for="checkC"><label><input id="checkC" type="radio" name="reponse" class="reponse" value="C"/> <span id="propositionC" >C</span></label></li>
											<li class="btn btn-gray2 btn-sm " id="btnNA" style="display:none;"><label><input type="radio" name="reponse" class="reponse" value="NA" id="no_answer"><span id="propositionNA" >NA</span></label></li>
										</ul>
									</form>
								</div>
							</div>
								
							<br style="clear:both;"/>
							
						</div> 
						
						<div class="line"></div>
						
						<div id="ActionView" class="actions" style="min-height:35px;">
							<button id="btnConfirmerReponseDuel" style="display:none;" type="button" class="btn btn-primary btn-sm"><i class="fa fa-check"></i> VALIDER LA RÉPONSE</button> 
							<button id="btnJePasse" style="display:none;" type="button" class="btn btn-warning btn-sm"><i class="fa fa-skyp"></i> JOCKER</button> 
							<button id="btnAbandonner" type="button" style="display:none;" class="btn btn-danger btn-sm">ABANDONNER</button> 
							<button id="btnConfirmerQuestion" style="display:none;" type="button" class="btn btn-primary btn-sm"><i class="fa fa-send"></i> ENVOYER LA QUESTION</button> 
						</div>
							

					</div> 
					
					<br style="clear:both;"/>
						
				</div> 
				
				
			</div>
			
			<div class="col-md-2 text-center" id="boxJoueur2"> 
						
				<div class="col-md-12"> 
					<button id="AdversaireScoreBox" type="button" class="btn btn-info btn-sm rounded circle"><span id="score_adversaire"><?php echo e($score_adversaire); ?></span> <i class="fa fa-star"></i></button> 
				</div>
				
				<div class="player_photo col-md-12" style="margin-top:3px;">
				
					<img class="img-responsive rounded" src="<?php echo e(asset('images/avatars/'. $adversaire->photo )); ?>"/>
					
				</div>
				
				<div class="player_name col-md-12 "><?php echo e('@'.$adversaire->pseudo); ?></div>
				
			</div>

			<div class="col-md-2 text-center" style="margin-top:10px;"> 
				<div class="label_chrono">Chrono</div>
				<div id="chrono"></div>
				
			</div> 
			
			
		</div>
		
	
	</div>
	
  <link rel="stylesheet" href="<?php echo e(URL::asset('css/style_chat.css')); ?>"/>
  <script src="<?php echo e(URL::asset('js/app_kozerie.js')); ?>"></script>


<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>