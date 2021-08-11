<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
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


<br><div style="overflow:hidden">
    <br><br>
<!-- Button trigger modal -->
<button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#exampleModal">
  Ajouter une ville
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Ajouter une ville</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form class=" mb-6" action="{{route('ville')}}" method="POST">
            @csrf
            <div class="form-group">
                <label for="inputVille">Ville</label>
                <input type="text" class="form-control" id="inputVille" placeholder="Ville" name="ville">
            </div>
            <div class="form-group">
                <label for="inputCodepostal">Code postal</label>
                <input type="number" class="form-control" id="inputCodepostal" placeholder="Code postal" name="codepostal" >
            </div>
            <div><button type="submit" class="btn btn-warning float-right"><b class="text-white">Ajouter une ville</b></button><br><br></div>
        </form>
      </div>
    </div>
  </div>
</div>



<div>
    <div class="row">
        <b-col class="col-md-1"></b-col>
        <b-col class="col-md-10">
            <div class="container">           
                <table class="table table-striped table-responsive">
                    <thead class="bg-light">
                        <tr>
                            <th>ID</th>
                            <th>Ville</th>
                            <th>Code postal</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($ville as $vill)
                        <tr>
                            <td name="id">{{$vill->id}}</td>
                            <td name="ville">{{$vill->ville}}</td>
                            <td name="codepostal">{{$vill->codepostal}}</td>
                            <td><button class="btn btn-danger" ><a href = '/ville/delete/{{ $vill->id }}' style="text-decoration:none; color:#ffffff;">Delete</a></button></td>                            
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

