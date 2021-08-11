<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<div class="bg-white nab" style="overflow:hidden">
  <nav class="navbar navbar-expand-lg fixed-top opacity-0" style="background: rgba(255,255,255)">
    <a href="#" class="navbar-brand float-left"><img src="/image/moshriq.png" alt="logo" class="logo" style="width:100%; height:22px; float:right;" /> </a>
    <button type="button" class="navbar-toggler border-warning" data-toggle="collapse" data-target="#navbarCollapse1">
      <span class=" border-warning text-warning"><b>Menu</b></span>
    </button>
    <div class="collapse navbar-collapse float-right" id="navbarCollapse1">
      <div class="navbar-nav d-flex align-items-center">
          <a href="" class="nav-item nav-link text-warning">Logout</a>
      </div>
    </div>
  </nav>

</div>
<br><br><br><br><br>
            <h5>Bonjour, Mme GHOUIZI HOUDA</h5>

    </template><br><br>

<div>
    <div class="row">
        <b-col class="col-md-1"></b-col>
        <b-col class="col-md-10">
            <div class="container">           
                <table class="table table-striped table-responsive" @submit.prevent="submit">
                    <thead class="bg-light">
                        <tr>
                            <th>ID</th>
                            <th>Nom du client</th>
                            <th>Prénom du client</th>
                            <th>Email du client</th>
                            <th>Téléphone du client</th>
                            <th>Adresse du client</th>
                            <th>Ville du client</th>
                            <th>Secteur du projet</th>
                            <th>Type de projet</th>
                            <th>Description du projet</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($projet as $proj)
                        <tr>
                            <td name="id">{{$proj->id}}</td>
                            <td name="nom">{{$proj->clients->nom}}</td>
                            <td name="prenom">{{$proj->clients->prenom}}</td>
                            <td name="email">{{$proj->clients->email}}</td>
                            <td name="telephone">{{$proj->clients->telephone}}</td>
                            <td name="adresse">{{$proj->clients->adresse}}</td>
                            <td name="ville">{{$proj->clients->villes->ville}}</td>              
                            <td name="secteur">{{$proj->secteurs->secteur}}</td>
                            <td name="typeprojet">{{$proj->typeprojets->type}}</td>
                            <td name="descriptionprojet">{{$proj->description}}</td>
                            <td><button class="btn btn-danger" ><a href = '/projet/delete/{{ $proj->id }}' style="text-decoration:none; color:#ffffff;">Delete</a></button></td>                            
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </b-col>
    </div>
</div>
</div>



<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
