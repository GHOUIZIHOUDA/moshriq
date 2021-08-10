@include('../../layouts/navbar')
@include('../../layouts/header')

<div style="overflow:hidden">
    <br><br><div>
        <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6 form ml-1" style="background-color: #191749; color: #ffffff;">
        <h1 class="title text-center" style="color: #ffffff; font-family:roboto;">Connexion</h1><br><br>
        <form class=" mb-6" method="POST" action="{{route('login')}}">
        @csrf
            <div class="form-group">
                <label for="inputEmail" style="font-family:roboto;">Email</label>
                <input type="email" class="form-control" id="inputEmail" placeholder="Email" name="email">
                @if ($errors->has('email'))
                    <span class="text-danger">{{ $errors->first('email') }}</span>
                @endif
            </div>
            <div class="form-group">
                <label for="inputPassword2" style="font-family:roboto;">Mot de passe</label>
                <input type="password" class="form-control" id="inputPassword2" placeholder="Mot de passe" name="passeword">
                @if ($errors->has('passeword'))
                    <span class="text-danger">{{ $errors->first('passeword') }}</span>
                @endif
            </div>
            <div class="form-group mb-3">
                <div class="checkbox">
                    <label>
                        <input type="checkbox" name="remember"  style="font-family:roboto;"> Remember Me
                    </label>
                </div>
            </div>
            <div><button type="submit" class="btn btn-warning float-right"><b class="text-white"  style="font-family:roboto;">Login</b></button></div><br><br>
        </form>
        </div>
        <div class="col-md-1"></div>
    </div><br><br>
    </div><br><br>
</div>

@include('../../layouts/footer')
