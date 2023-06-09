@extends('layouts.app')

@section('content')

<ul class="breadcrumb no-border no-radius b-b b-light pull-in"> 
	<li><a href="{{route('home')}}"><i class="fa fa-home"></i> Accueil</a></li>  
	<li class="active">Mes souscriptions</li> 
</ul> 


@if(Session::has('warning'))
	<div class="alert alert-warning">
	  {{Session::get('warning')}}
	</div>
@endif

@if(Session::has('message'))
	<div class="alert alert-success">
	  {{Session::get('message')}}
	</div>
@endif


<div class="m-b-md"> 
	<h3 class="m-b-none">Historique des souscriptions</h3> 
</div>

<section class="panel panel-default"> 
	<header class="panel-heading"> Liste des dépots <i class="fa fa-info-sign text-muted" data-toggle="tooltip" data-placement="bottom" data-title="ajax to load the data."></i>
	</header> 
	
	<div class="table-responsive"> 
		<table class="table table-striped m-b-none datatable" data-ride="listeusers"> 
			<thead> 
				<tr> 
					<th width="10%">Réf</th>
					<th width="25%">Bénéficiaire</th>
					<th width="15%">Quantité</th>
					<th width="15%">Montant</th>
					<th width="20%">Date</th>
				</tr> 
			</thead> 
			<tbody>
			@foreach($souscriptions as $souscription)
				<tr>
					<td>{{ $souscription->souscription_id }}</td> 
					<td>{{ $souscription->pseudo }}</td>
					<td>{{ $souscription->souscription_quantite }}</td>
					<td>{{ $souscription->souscription_montant }}</td>
					<td>{{ Stdfn::dateTimeFromDB($souscription->souscription_date) }}</td>
				</tr>	
			@endforeach
			</tbody> 
		</table> 
	</div> 
</section>

@endsection