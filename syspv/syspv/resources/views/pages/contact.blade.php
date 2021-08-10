@include('../../layouts/navbar')
@include('../../layouts/header')
<div style="overflow:hidden">
    <br><br>

    <div>
        <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6 form ml-1" style="background-color: #191749; color: #ffffff;">
        <h1 class="title text-center" style="color: #ffffff">Contactez-nous</h1><br><br>
        <form class=" mb-6">
            <div class="form-group">
                <label for="inputEmail">Email</label>
                <input type="email" class="form-control" id="inputEmail" placeholder="Email">
            </div>
            <div class="form-group">
                <label for="inputPassword2">Mot de passe</label>
                <input type="password" class="form-control" id="inputPassword2" placeholder="Mot de passe">
            </div>
            <div class="form-group">
                <label for="inputNote2">Note</label>
                <textarea type="text" class="form-control" id="inputNote2" placeholder="Note"></textarea>
            </div>
            <div><button type="submit" class="btn btn-warning float-right"><b class="text-white">Envoyer</b></button></div><br><br>
        </form>
        </div>
        <div class="col-md-1"></div>
    </div><br><br>
    </div><br><br>
</div>

@include('../../layouts/footer')