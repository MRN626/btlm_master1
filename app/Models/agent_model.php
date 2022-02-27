<?php

namespace App\Models;

use CodeIgniter\Model;

class Agent_model extends Model
{
    protected $table      = 'agent';
    protected $primaryKey = 'id';

    protected $useAutoIncrement = true;

    protected $returnType     = 'array';
    protected $useSoftDeletes = false;

    protected $allowedFields = ['NOM_COMPLET', 'DEPARTEMENT','FONCTION','CHEF_DEPARTEMENT','TELEPHONE','MOT_DE_PASSE'];

    protected $useTimestamps = true;
    protected $createdField  = 'date_creation';
    protected $updatedField  = 'date_modification';
    protected $deletedField  = 'date_suppression';

    protected $validationRules    = [];
    protected $validationMessages = [];
    protected $skipValidation     = false;
}