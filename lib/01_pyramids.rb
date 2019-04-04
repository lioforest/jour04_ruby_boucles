
def half_pyramid ()
  

        puts "Bonjour, merci d'indiquer le nombre d ?"
        print "> "
        number = gets.to_i
        lignepyramid ="" 

        if number >0 and number <26 then

        n=1
        x=number-n #Variable indiquant le nombre d'espace à mettre dans le texte
        y=1 #Variable indiquant le nombre de # à mettre dans le texte
        # Sachant que x+y est égale à chaque ligne au nombre indiqué par l'utilisateur

         
        	while n <= number # Tant que n est inférieur ou égal au chiffre indiqué par l'utilisateur, le code est exécuté.

            		while x > 0 #on ajoute les espaces
          				lignepyramid = lignepyramid + " "
          				x=x-1
          			end

                while y <= n #on ajoute les #
                  lignepyramid = lignepyramid + "#"
                  y=y+1
                end
          			
                puts lignepyramid	
          			lignepyramid =""	

          	n = n + 1 # On ajoute 1 à n à chaque tour pour que sa valeur atteigne le chiffre demandé.
            x=number-n #A chaque passage j'enlève un espace au nombre total indiqué par l'utilisateur
            y=1 #A chaque passage je remets y à 1
        	end
        else

        	puts "Votre nombre n'est pas compris entre 1 et 25, je vous dis à bientôt ! "
        end


end



# exercice semaine 01 - jour 04 - projet 2.2.2 pyramide de Gizeh
def full_pyramid

        puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
        print "> "
        number = gets.to_i
        lignepyramid ="" 


        n=1
        x=number-n #Variable indiquant le nombre d'espace à mettre dans le texte
        y=0 #Variable indiquant le nombre de # à mettre dans le texte
        # Sachant que x+y est égale à chaque ligne au nombre indiqué par l'utilisateur

        # Sachant que x+y est égale à chaque ligne au nombre indiqué par l'utilisateur

         
          while n <= number # Tant que n est inférieur ou égal au chiffre indiqué par l'utilisateur, le code est exécuté.

                  lignepyramid = lignepyramid + " " * x + "#" * (2*y+1)
           
                  x-=1
                  y+=1
              
                puts lignepyramid 
                lignepyramid ="" 

            n = n + 1 # On ajoute 1 à n à chaque tour pour que sa valeur atteigne le chiffre demandé.
          end


  
end

# exercice semaine 01 - jour 04 - projet 2.2.2 pyramide de Gizeh versio itime
def full_pyramid2

        puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
        print "> "
        n = gets.to_i

        n.times do |i|
          puts ' ' * (n - 1) + '#' * (2 * i + 1)
          n -= 1
        end 

  
end


# exercice semaine 01 - jour 04 - projet 2.2.3 alexandrie alexandra
def wtf_pyramid

    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu (choisis un nombre impair)?"
    print "> "
    $n = gets.to_i

    if $n%2 ==0 then
      

      puts "Ton nombre est paire abrutit ! recommences !"    

    else
       def full_pyramid_haut
                x=$n/2+1
                x.times do |i|
                  puts ' ' * (x - 1) + '#' * (2 * i + 1)
                  x -= 1
                end 
        end

        def full_pyramid_bas
                y=$n/2
                y.times do |i|
                  puts ' ' * (i + 1) + '#' * (2 * y - 1) 
                  y -= 1
                end 
        end
        
        def perform
        full_pyramid_haut 
        full_pyramid_bas
       
        end

        perform

    end


      
end

wtf_pyramid