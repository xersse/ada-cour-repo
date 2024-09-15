with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;  -- Pour formater la sortie des floats

procedure Imprimer_Calendriers is
   Nombre_Calendriers : Integer;
   Prix_Total         : Float := 0.0;
   Choix              : Integer;  -- Variable pour le choix de l'utilisateur

   procedure Calculer_Prix is
   begin
      -- Afficher un message pour demander le nombre de calendriers à imprimer
      Put("Entrez le nombre de calendriers à imprimer : ");
      
      -- Lire la valeur souhaitée
      Get(Nombre_Calendriers);
      
      -- Si le nombre de calendriers est inférieur à 75
      if Nombre_Calendriers < 75 then
         Prix_Total := Float(Nombre_Calendriers);  -- Le prix total est le nombre de calendriers
      else
         -- Sinon, calculer le prix total avec une réduction de 10€
         Prix_Total := Float(Nombre_Calendriers) - 10.0;
      end if;
      
      -- Ajouter un forfait de 3€ et 4€ de frais de transport
      Prix_Total := Prix_Total + 3.0 + 4.0;
      
      -- Afficher le prix total à payer en format arrondi avec deux décimales
      Put("Le prix total à payer est de : ");
      Ada.Float_Text_IO.Put(Item => Prix_Total, Fore => 1, Aft => 2, Exp => 0);
      Put_Line(" euros.");
   end Calculer_Prix;

begin
   loop
      -- Appeler la procédure pour calculer le prix
      Calculer_Prix;

      -- Proposer à l'utilisateur de fermer ou refaire un calcul
      Put_Line("Tapez '1' pour quitter ou '2' pour faire un nouveau calcul : ");
      Get(Choix);

      -- Vérifier le choix de l'utilisateur
      if Choix = 1 then
         exit;  -- Quitte la boucle et termine le programme
      elsif Choix = 2 then
         -- Relancer la boucle pour un nouveau calcul
         Put_Line("On refait un calcul...");
      else
         -- Si l'utilisateur tape autre chose
         Put_Line("Choix invalide. Veuillez entrer '1' ou '2'.");
      end if;
   end loop;

   Put_Line("Fin du programme.");
end Imprimer_Calendriers;
