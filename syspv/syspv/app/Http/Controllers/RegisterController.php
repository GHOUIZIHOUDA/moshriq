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
    public function getvilles(){
        $villes = Ville::all();
        return view('pages.dashville', [
            'ville'=> $villes,
        ]);
    }
    public function addville(Request $request){
        $clients = Ville::create([
        'ville'=>$request->ville,
        'codepostal'=>$request->codepostal,
        ]);
        return redirect()->route('ville')
                        ->with('success','Ville added successfully');
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
        'typeprojet_id'=>$request->typeprojet,
        'secteur_id'=>$request->secteur,
        'client_id'=>$clients->id,
        ]);
        return view('pages.societe');
    }

    public function getprojets(){
        $projets = Projet::with(['secteurs','typeprojets','clients.villes'])->get();

        // $villes = Ville::select('ville')->where('ville_id','id');
        // $clients = Client::all();
        // $secteurs = Secteur::all();
        // $typeprojets = Typeprojet::all();
        // return $projets;
        return $projets;
        return view('pages.dashproj', [
            'projet'=> $projets,
            // 'client'=>$clients,
            // 'ville'=>$villes,
            // 'secteur'=>$secteurs,
            // 'typeprojet'=>$typeprojets
        ]);
    }

    public function destroy($id)
    {
        Projet::find($id)->delete();
  
        return redirect()->route('projet')
                        ->with('success','Projet deleted successfully');
    }
    public function deleteville($id)
    {
        Ville::find($id)->delete();
  
        return redirect()->route('ville')
                        ->with('success','Ville deleted successfully');
    }

    public function login(){
        $admins = Admin::all();
        if('email'==$request->email && 'password'==$request->password){
            return view('pages.dashproj', [
                'admin'=> $admins,
            ]);
        }
    }

}
