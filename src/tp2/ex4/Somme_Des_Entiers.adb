with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Somme_Des_Entiers is
   Nombre : Integer;  -- Variable pour stocker la saisie de l'utilisateur
   Somme  : Integer;  -- Variable pour stocker la somme des entiers
   Choix  : Integer;  -- Variable pour le choix de continuer ou quitter
   Dummy  : Character;  -- Variable pour capturer une touche à la fin

begin
   -- Boucle principale pour continuer à faire des calculs ou quitter
   loop
      -- Initialiser la somme à 0 au début de chaque calcul
      Somme := 0;

      -- Demander à l'utilisateur d'entrer un nombre
      Put("Entrez un nombre de départ : ");
      Get(Nombre);

      -- Calculer la somme des entiers de 1 jusqu'à Nombre
      for I in 1 .. Nombre loop
         Somme := Somme + I;
      end loop;

      -- Afficher le résultat de la somme
      Put("La somme des entiers de 1 à " & Integer'Image(Nombre) & " est : ");
      Put_Line(Integer'Image(Somme));

      -- Demander à l'utilisateur s'il veut faire un autre calcul ou quitter
      Put_Line("Tapez '1' pour quitter ou un autre chiffre pour faire un nouveau calcul : ");
      Get(Choix);

      -- Si l'utilisateur tape "1", quitter le programme
      if Choix = 1 then
         exit;  -- Quitte la boucle principale et termine le programme
      else
         -- Si l'utilisateur tape autre chose, continuer avec un nouveau calcul
         Put_Line("Vous avez choisi de faire un nouveau calcul.");
      end if;
   end loop;

   -- Pause à la fin pour éviter que le terminal ne se ferme immédiatement
   Put_Line("Fin du programme. Appuyez sur une touche pour fermer.");
   Get(Dummy);  -- Attend une entrée utilisateur avant de fermer

end Somme_Des_Entiers;
