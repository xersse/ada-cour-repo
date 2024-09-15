with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Demander_Nombre is
   Nombre : Integer;  -- Variable pour stocker la saisie de l'utilisateur
   Choix  : Integer;  -- Variable pour permettre à l'utilisateur de continuer ou de quitter
   Dummy  : Character; -- Variable pour capturer une touche à la fin

begin
   -- Boucle principale pour demander à l'utilisateur d'entrer un nombre ou de quitter
   loop
      -- Boucle pour s'assurer que l'utilisateur entre un nombre valide (entre 10 et 20)
      loop
         -- Demander à l'utilisateur d'entrer un nombre compris entre 10 et 20
         Put("Entrez un nombre entre 10 et 20 : ");
         Get(Nombre);

         -- Vérifier si le nombre est valide
         if Nombre > 20 then
            -- Si le nombre est supérieur à 20
            Put_Line("Plus petit !");
         elsif Nombre < 10 then
            -- Si le nombre est inférieur à 10
            Put_Line("Plus grand !");
         else
            -- Si le nombre est valide, afficher un message et sortir de la boucle
            Put_Line("Nombre correct : " & Integer'Image(Nombre));
            exit;  -- Sortir de la boucle (nombre correct)
         end if;
      end loop;

      -- Demander à l'utilisateur s'il veut entrer un nouveau nombre ou quitter
      Put_Line("Tapez '1' pour quitter ou un autre chiffre pour entrer un nouveau nombre : ");
      Get(Choix);

      -- Vérifier le choix de l'utilisateur
      if Choix = 1 then
         -- Si l'utilisateur tape "1", quitter le programme
         exit;  -- Quitte la boucle principale et termine le programme
      else
         -- Si l'utilisateur tape autre chose, relancer la boucle pour entrer un nouveau nombre
         Put_Line("Vous avez choisi de continuer.");
      end if;
   end loop;

   -- Pause à la fin pour éviter que le terminal ne se ferme immédiatement
   Put_Line("Fin du programme. Appuyez sur une touche pour fermer.");
   Get(Dummy);  -- Attend une entrée utilisateur avant de fermer

end Demander_Nombre;
