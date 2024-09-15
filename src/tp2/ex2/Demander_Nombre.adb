with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Demander_Nombre is
   Nombre : Integer;  -- Variable pour stocker la saisie de l'utilisateur
   Dummy  : Character; -- Variable pour capturer une touche à la fin
begin
   -- Boucle infinie jusqu'à ce que l'utilisateur entre un nombre valide
   loop
      -- Demander à l'utilisateur d'entrer un nombre compris entre 1 et 3
      Put("Entrez un nombre entre 1 et 3 : ");
      Get(Nombre);

      -- Vérifier si le nombre est valide
      if Nombre >= 1 and Nombre <= 3 then
         -- Si le nombre est compris entre 1 et 3, afficher un message de validation et sortir de la boucle
         Put_Line("Nombre correct : " & Integer'Image(Nombre));
         exit;  -- Sortir de la boucle
      else
         -- Sinon, afficher un message d'erreur et redemander
         Put_Line("Erreur : Le nombre doit être compris entre 1 et 3.");
      end if;
   end loop;

   -- Pause à la fin pour éviter que le terminal ne se ferme immédiatement
   Put_Line("Appuyez sur une touche pour fermer le programme.");
   Get(Dummy);  -- Attend une entrée utilisateur avant de fermer

end Demander_Nombre;
