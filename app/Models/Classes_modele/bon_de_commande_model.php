<?php

namespace App\Models;

use CodeIgniter\Model;

class Bon_de_commande_model extends Model
{
    protected $table      = 'bon_de_commande';
    protected $primaryKey = 'id';

    protected $useAutoIncrement = true;

    protected $returnType     = 'array';
    protected $useSoftDeletes = true;

    protected $allowedFields = ['ID_FICHE_BESOIN', 'ID_SERVICE_GEN','ID_DAF','ID_DG','NOM_FOURNISSEUR',
                                'ADRESSE_FOURNISSEUR','TELEPHONE_FOURNISSEUR', 'DATE_BON_DEMANDE','DESIGNATION_PRODUIT','QUANTITE',
                                'OBSERVATION','PROFORMAT_FOURNISSEUR','FACTURE', 'TYPE_BON_COMMANDE',
                                'ETAT_BON_COMMANDE','EVALUATION_FOURNISSEUR','SIGNATURE_SERVICE_GEN','SIGNATURE_DAF','SIGNATURE_DG'];


    protected $useTimestamps = true;
    protected $createdField  = 'date_creation';
    protected $updatedField  = 'date_modification';
    protected $deletedField  = 'date_suppression';

    protected $validationRules    = [];
    protected $validationMessages = [];
    protected $skipValidation     = false;
}