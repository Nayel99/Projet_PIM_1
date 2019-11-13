package body Arbre_binaire is
    
    procedure Initialiser_Arbre(ABR: out T_ABR) is 
    begin
        ABR:=null;
    end Initialiser_Arbre;
    
    
    procedure Creer_Arbre_Minimal(ABR : in out T_ABR;Information_Noeud: in T_Information_Noeud) is 
    begin
        ABR:= new T_Noeud;
        ABR.Numero_Noeud:=1000;
        ABR.all.Information_Noeud:=Information_Noeud;
        ABR.all.Niveau:=0;
        ABR.all.Sous_Arbre_Gauche:=null;
        ABR.all.Sous_Arbre_Droit:=null;
    end Creer_Arbre_Minimal;
    
    
    procedure Ajout_Noeud(ABR : in out T_ABR; Numero_Noeud: Integer; Gauche_Ou_Droite: String) is 
    begin
        null;
    end Ajout_Noeud;
    
    
    function Nombre_Noeud_Sous_Jacent(ABR : in T_ABR; Numero_Noeud: in Integer) return Integer  is 
    begin
        return(0);
    end Nombre_Noeud_Sous_Jacent;
    
    
    procedure Afficher_Arbre(ABR : in T_ABR; A_Partir_Noeud: in Integer) is 
    begin
        null;
    end Afficher_Arbre;
    
    
    procedure Pointeur_Du_Noeud(ABR : in T_ABR;Noeud_Recherche : in Integer) is
    begin 
        
        null;
    end Pointeur_Du_Noeud;
    
    
    

   

end Arbre_binaire;
