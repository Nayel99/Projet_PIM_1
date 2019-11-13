package registre is
    
    type T_Date_De_Naissance is limited private; --A faire
    type T_Registre is limited private;
    

    type T_Individu is 
        record
            Identifiant: Integer;
            Nom: Character; -- 'v' = Vide
            Prenom: Character; -- 'v' = Vide
            Date_De_Naissance: T_Date_De_Naissance;
        end record;
    
    
    --Creer un registre nul
    procedure Initialiser_Registre(Registre: in out T_Registre);
    
    procedure Ajout_Registre(Registre: in out T_Registre; Individu: in out T_Individu; Nom : in out Character; Prenom: in out Character; Jour: in out Integer; Mois: in out Integer; Annee: in out Integer);
    
    function Est_Present_Dans_Registre(Registre: in T_Registre; Individu: in T_Individu) return Boolean;
    
    function Nombre_Individu_Dans_Registre(Registre: in T_Registre) return Integer;
    
    procedure Supprimer_Du_Registre(Registre: in out T_Registre; Individu: in T_Individu); 
    

    
        

        
        
        
        
    
    
    
            
    
    
    
    
private
    
    type T_Date_De_Naissance is 
        record
            Jour: Integer;
            Mois: Integer;
            Annee: Integer;
        end record;
    
    
    
    type Information_Registre;
    type T_Registre is access Information_Registre;
    type Information_Registre is
        record
            Individu: T_Individu;
            Suivant: T_Registre;
        end record;
    
    
            
    

   

end registre;
