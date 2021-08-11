<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Projet extends Model
{
    use HasFactory;
    protected $fillable = [
        'description', 'typeprojet_id', 'client_id', 'secteur_id',
    ];
    public function typeprojets(){
        return $this->belongsTo(Typeprojet::class);
    }
    public function status(){
        return $this->belongsTo(Status::class);
    }
    public function clients(){
        return $this->belongsTo(Client::class, 'id');
    }
    public function secteurs(){
        return $this->belongsTo(Secteur::class);
    }
    public function departements(){
        return $this->belongsTo(Departement::class);
    }

}
