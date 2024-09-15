with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Mention_Baccalaureat is
   Note : Integer;  -- Variable pour la note
   Choix : Integer;  -- Variable pour stocker le choix de l'utilisateur

   procedure Afficher_Mention is
   begin
      -- Demander la saisie de la note
      Put("Entrez la note sur 20 : ");
      Get(Note);

      -- Utilisation de la structure de sélection (if-elsif) pour afficher la mention
      if Note >= 16 then
         Put_Line("Mention : Très bien");
      elsif Note >= 14 then
         Put_Line("Mention : Bien");
      elsif Note >= 12 then
         Put_Line("Mention : Assez bien");
      elsif Note >= 10 then
         Put_Line("Mention : Passable");
      elsif Note >= 0 then
         Put_Line("Mention : Insuffisant");
      else
         -- Si la note saisie est hors des limites valides (par exemple, négative ou > 20)
         Put_Line("Note invalide. Veuillez entrer une note entre 0 et 20.");
      end if;
   end Afficher_Mention;

begin
   loop
      -- Appeler la procédure pour afficher la mention
      Afficher_Mention;

      -- Proposer à l'utilisateur de fermer ou refaire un calcul
      Put_Line("Tapez '1' pour quitter ou '2' pour faire un nouveau calcul : ");
      Get(Choix);

      -- Vérifier le choix de l'utilisateur
      if Choix = 1 then
         exit;  -- Quitte la boucle et termine le programme
      elsif Choix = 2 then
         Put_Line("Nouveau calcul...");
      else
         Put_Line("Choix invalide. Veuillez entrer '1' ou '2'.");
      end if;
   end loop;

   Put_Line("Fin du programme.");
end Mention_Baccalaureat;
