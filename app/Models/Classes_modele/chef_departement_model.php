<?php

namespace App\Models;

use CodeIgniter\Model;

class Chef_departement_model extends Model
{
    protected $table      = 'chef_departement';
    protected $primaryKey = 'id';

    protected $useAutoIncrement = true;

    protected $returnType     = 'array';
    protected $useSoftDeletes = true;

    protected $allowedFields = ['NOM_COMPLET', 'SIGNATURE_CHEF_DEP'];

    protected $useTimestamps = true;
    protected $createdField  = 'date_creation';
    protected $updatedField  = 'date_modification';
    protected $deletedField  = 'date_suppression';

    protected $validationRules    = [];
    protected $validationMessages = [];
    protected $skipValidation     = false;
}