<?php

namespace App\Controllers;
use App\Models\Agent_model;

class Home extends BaseController
{

    public function index()
    {
        

        
        /**CRUD TEST
         $model_chef_departement = new Chef_departement_model();
        AJOUT avec insert
        $donnees = ['NOM_COMPLET'=>"ngalukiye maureen",'SIGNATURE_CHEF_DEP'=>"MRN"];
        $model_chef_departement ->insert($donnees);

        LECTURE avec find all
        $departement = $model_chef_departement ->findAll();
        var_dump($departement);

        MODIFICATION avec update
        $donnees =['NOM_COMPLET'=>"CHARMANT SAMPI"];
        $model_chef_departement->update(2,$donnees);

        SUPPRESSION avec delete
        $model_chef_departement->delete(1);**/

        return view('pages/sign-in');
    }


    public function login()
    {
        helper(['form', 'url']);

        if ($this->request->getMethod() === 'post' && $this->validate([
            'username' => 'required|min_length[3]|max_length[255]',
            'password'  => 'required|min_length[5]|max_length[255]',
        ])){

            $agent_data = new Agent_model();
            $agent =$agent_data->where([
                    'MOT_DE_PASSE'=>$this->request->getPost('password'),
                    'TELEPHONE'=>$this->request->getPost('username')
                ])->first();

            if($agent == null){
                
                $session = session();
                $session->setFlashdata('not_account', 'le compte n existe pas avec ces donnees');
                return  redirect()->to($_SERVER['HTTP_REFERER']);
            }
            if(count($agent)>0){

                $session = session();
                $session->set([
                    'id'=>$agent['ID'],
                    'name'=>$agent['NOM_COMPLET'],
                    'departement'=>$agent['DEPARTEMENT'],
                    'function'=>$agent['FONCTION'],
                    'phone'=>$agent['TELEPHONE'],
                    'status'=> true
                ]);
                 
                return redirect()->to('/demander');
            }
            
        }
        else {
    
            $session->setFlashdata('rules_repect', true);
            return  redirect()->to($_SERVER['HTTP_REFERER']);
        }
    }
}
