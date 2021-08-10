<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
@include('../../layouts/navbar')
@include('../../layouts/header')


<br><div style="overflow:hidden">
    <br><br>

    <div>
        <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6 form ml-1" style="background-color: #191749; color: #ffffff;">
        <h1 class="title text-center" style="color: #ffffff;">Demande de projet</h1><br><br>
        <form class=" mb-6" action="{{route('register')}}" method="POST">
            @csrf
            <div class="form-group">
                <label for="inputNom">Nom</label>
                <input type="text" class="form-control" id="inputNom" placeholder="Nom" name="nom">
            </div>
            <div class="form-group">
                <label for="inputPrenom">Prénom</label>
                <input type="text" class="form-control" id="inputPrenom" placeholder="Prénom" name="prenom" >
            </div>
            <div class="form-group">
                <label for="inputTelephone">Téléphone</label>
                <input type="number" class="form-control" id="inputTelephone" placeholder="Téléphone" name="telephone" >
            </div>
            <div class="form-group">
                <label for="inputAdresse">Adresse</label>
                <input type="text" class="form-control" id="inputAdresse" placeholder="Adresse" name="adresse" >
            </div>
            <div class="form-group">
                <label for="inputVille">Ville</label>
                <select class="custom-select" id="inputGroupSelect02" name="ville">
                    <option selected>Choisir une ville</option>
                    @foreach ($ville as $vill)
                        <option value="{{$vill->id}}">{{$vill->ville}}</option>
                    @endforeach
                </select>
            </div>
            <div class="form-group">
                <label for="inputSecteur">Secteur du projet</label>
                <select class="custom-select" id="inputGroupSelect02" name="secteur">
                    <option selected>Choisir un secteur de votre projet</option>
                    @foreach ($secteur as $sect)
                        <option value="{{$sect->id}}">{{$sect->secteur}}</option>
                    @endforeach
                </select>
            </div>
            <div class="form-group">
                <label for="inputType">Type du projet</label>
                <select class="custom-select" id="inputGroupSelect02" name="typeprojet">
                    <option selected>Choisir un type de votre projet</option>
                    @foreach ($typeprojet as $type)
                        <option value="{{$type->id}}">{{$type->type}}</option>
                    @endforeach
                </select>
            </div>
            <div class="form-group">
                <label for="inputEmail">Email</label>
                <input type="email" class="form-control" id="inputEmail" placeholder="Email" name="email" >
            </div>
            <div class="form-group">
                <label for="inputPassword2">Mot de passe</label>
                <input type="password" class="form-control" id="inputPassword2" placeholder="Mot de passe"  name="motdepasse">
            </div>
            <div class="form-group">
                <label for="inputNote2">Discription du projet</label>
                <textarea type="text" class="form-control" id="inputDescription2" placeholder="Description" name="description"></textarea>
            </div>
            <div><button type="submit" class="btn btn-warning float-right"><b class="text-white">Envoyer la demande</b></button><br><br></div>
        </form>
        </div>
        <div class="col-md-1"><br><br></div>
    </div><br><br>
    </div><br><br>
</div>

@include('../../layouts/footer')





<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>