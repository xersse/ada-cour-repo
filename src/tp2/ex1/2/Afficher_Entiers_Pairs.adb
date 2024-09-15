with Ada.Text_IO; use Ada.Text_IO;

procedure Afficher_Entiers_Pairs is
   Dummy : Character;  -- Variable pour attendre une entrée utilisateur à la fin
begin
   -- Boucle pour afficher les entiers pairs de 50 à 100
   for I in 50 .. 100 loop
      if I mod 2 = 0 then
         Put_Line(Integer'Image(I));
      end if;
   end loop;

   -- Pause pour éviter la fermeture immédiate du terminal
   Put_Line("Appuyez sur une touche pour fermer le programme.");
   Get(Dummy);  -- Attend une entrée utilisateur avant de fermer
end Afficher_Entiers_Pairs;
