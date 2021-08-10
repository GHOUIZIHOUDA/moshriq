<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Ville;
use App\Models\Secteur;
use App\Models\Typeprojet;
use App\Models\Client;
use App\Models\Projet;
use DB;


class RegisterController extends Controller
{
    public function index(){
        $villes = Ville::all();
        $secteurs = Secteur::all();
        $typeprojets = Typeprojet::all();
        return view('pages.register', [
            'ville'=> $villes,
            'secteur'=>$secteurs,
            'typeprojet'=>$typeprojets
        ]);
    }
    public function save(Request $request){
        $clients = Client::create([
        'nom'=>$request->nom,
        'prenom'=>$request->prenom,
        'email'=>$request->email,
        'passeword'=>$request->motdepasse,
        'telephone'=>$request->telephone,
        'adresse'=>$request->adresse,
        'descriptionprojet'=>$request->description,
        'ville_id'=>$request->ville
    ]);
        $projets = Projet::create([
        'description'=>$request->description,
        'status_id'=>0,
        'typeprojet_id'=>$request->typeprojet,
        'secteur_id'=>$request->secteur,
        'client_id'=>$clients->id,
        ]);
        return view('pages.connexion');
    }

    public function getprojets(){
        $projets = Projet::all();
        $villes = Ville::select('ville')->where('ville_id','id');
        $clients = Client::all();
        $secteurs = Secteur::all();
        $typeprojets = Typeprojet::all();
        return view('pages.dashproj', [
            'projet'=> $projets,
            'client'=>$clients,
            'ville'=>$villes,
            'secteur'=>$secteurs,
            'typeprojet'=>$typeprojets
        ]);
    }

    public function destroy($id)
    {
        Projet::find($id)->delete();
  
        return redirect()->route('projet')
                        ->with('success','User deleted successfully');
    }

    public function login(){
        $admins = Admin::all();
        return view('pages.connexion', [
            'admin'=> $admins,
        ]);
    }

}
