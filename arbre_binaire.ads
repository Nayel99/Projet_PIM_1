generic
    type T_Information_Noeud is private;

package Arbre_binaire is
    
    type T_ABR is limited private;
    
    procedure Initialiser_Arbre(ABR: out T_ABR);
    
    procedure Creer_Arbre_Minimal(ABR : in out T_ABR;Information_Noeud: in T_Information_Noeud);
    
    procedure Ajout_Noeud(ABR : in out T_ABR; Numero_Noeud: Integer; Gauche_Ou_Droite: String); --Nayel
    
    function Nombre_Noeud_Sous_Jacent(ABR : in T_ABR; Numero_Noeud: in Integer) return Integer; --Charly
    
    procedure Afficher_Arbre(ABR : in T_ABR; A_Partir_Noeud: in Integer); --Charly
    
    --Objectif: Retourner le pointeur qui pointe vers le noeud recherché
    procedure Pointeur_Du_Noeud(ABR : in T_ABR; Noeud_Recherche : in Integer); --Nayel
    
    
    
    
    
    
    
private
    
    type T_Noeud;
    type T_ABR is access T_Noeud;
    type T_Noeud is
        record
            Numero_Noeud: Integer;
            Information_Noeud: T_Information_Noeud;
            Niveau : Integer;
            Sous_Arbre_Gauche : T_ABR;
            Sous_Arbre_Droit : T_ABR;
        end record;
    

   

end Arbre_binaire;
