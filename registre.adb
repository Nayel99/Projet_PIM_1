with Ada.Unchecked_Deallocation;

package body registre is
    


    procedure Initialiser_Registre(Registre: in out T_Registre) is 
    begin
        Registre:=null;
    end Initialiser_Registre;
    
    procedure Ajout_Registre(Registre: in out T_Registre; Individu: in out T_Individu; Nom : in out Character; Prenom: in out Character; Jour: in out Integer; Mois: in out Integer; Annee: in out Integer) is
        Nouvelle_Cellule_Registre: T_Registre;
    begin
        --Création d'une nouvelle cellule 
        Nouvelle_Cellule_Registre:= new Information_Registre;
        Nouvelle_Cellule_Registre.all.Individu:=Individu;
        Individu.Identifiant:=Nombre_Individu_Dans_Registre(Registre);
        Individu.Nom:= Nom;
        Individu.Prenom:=Prenom;
        Individu.Date_De_Naissance.Jour:=Jour;
        Individu.Date_De_Naissance.Mois:=Mois;
        Individu.Date_De_Naissance.Annee:=Annee;
        Nouvelle_Cellule_Registre.all.Suivant:=Registre;
        
        --Insertion de la cellule dans le registre(au début)
        Registre:=Nouvelle_Cellule_Registre;
    end Ajout_Registre;
    

    function Est_Present_Dans_Registre(Registre: in T_Registre; Individu: in T_Individu) return boolean is
        Pointeur_Mobile: T_Registre;
    begin
        Pointeur_Mobile:=Registre;
        
        --Si le registre est nul, l'individu n'est pas dedant
        if Pointeur_Mobile = null then
            return (False);
        end if;
        
        --On parcourt la liste 
        while Pointeur_Mobile.all.Individu /=Individu loop  
            Pointeur_Mobile:=Pointeur_Mobile.all.Suivant;
            --Si une cellule ne pointe plus vers rien: fin de la liste, 
            --et donc l'individu n'est pas dans le registre
            if Pointeur_Mobile = null then
                return(False);
            end if;
        end loop;
        
        --L'individu est dans une cellule si on arrive à cette étape
        return(True);
        
    end Est_Present_Dans_Registre;
    
 
    
    function Nombre_Individu_Dans_Registre(Registre: in T_Registre) return Integer is
        Compteur_Individu: Integer:=0;
        Pointeur_Mobile: T_Registre;
    begin
        Pointeur_Mobile:=Registre;
        while Pointeur_Mobile /= null loop
            Pointeur_Mobile:=Pointeur_Mobile.all.Suivant;
            Compteur_Individu:= Compteur_Individu +1;
        end loop;
        return(Compteur_Individu);
    end Nombre_Individu_Dans_Registre;
    
    procedure Supprimer_Du_Registre(Registre: in out T_Registre; Individu: in T_Individu) is
    Pointeur_Cellule_A_Supprimer: T_Registre;
        Pointeur_Cellule_Avant_Cellule_A_Supprimer: T_Registre;
    begin
        if not Est_Present_Dans_Registre(Registre,Individu) then
            null;
        elsif Registre.all.Individu=Individu then
            Registre:=Registre.all.Suivant;

        else
            Pointeur_Cellule_A_Supprimer:=Registre;
            while Pointeur_Cellule_A_Supprimer.all.Individu /= Individu loop
                Pointeur_Cellule_Avant_Cellule_A_Supprimer:=Pointeur_Cellule_A_Supprimer;
                Pointeur_Cellule_A_Supprimer:=Pointeur_Cellule_A_Supprimer.all.Suivant;
            end loop;
            Pointeur_Cellule_Avant_Cellule_A_Supprimer.all.suivant:=Pointeur_Cellule_A_Supprimer.all.suivant;
        end if;
    end Supprimer_Du_Registre;
    
        
    

end registre;
