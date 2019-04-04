
def partie 

		puts "Bienvenue dans notre super jeux de l'escalier"


		
						$stair_level=0
						$nb_tour=0


						def lancé_du_dé
							
						#	print "> Appui sur entrer pour lancer le dé"
						#	x = gets
							$n = rand (1..6)
							if $n==1 then
									$stair_level-=1
									puts "Vous avez fait #{$n}. Vous descendez d'une marche, vous êtes toujours sur la marche #{$stair_level}"
							elsif $n==2 then
									puts "Vous avez fait #{$n}. Vous ne bougez pas, vous êtes toujours sur la marche #{$stair_level}"
							elsif $n==3 then
									puts "Vous avez fait #{$n}. Vous ne bougez pas, vous êtes toujours sur la marche #{$stair_level}"
							elsif $n==4 then
									puts "Vous avez fait #{$n}. Vous ne bougez pas, vous êtes toujours sur la marche #{$stair_level}"

							else
									$stair_level+=1
									puts "Vous avez fait #{$n}. Vous montez d'une marche, vous êtes à présent sur la marche #{$stair_level}"

							end

						end

						while $stair_level<10

							lancé_du_dé
							$nb_tour+=1


						end

						puts "super vous avez gagné en #{$nb_tour} tour"


end 


def average_finish_time

	$nb_partie=0
	$stat_score = 0
	tableau_stat = []

		while $nb_partie<5 

			partie
			$stat_score = $stat_score + $nb_tour
			tableau_stat << $nb_tour.to_f
			$nb_partie+=1
			
		end
	
	$final_average= $stat_score.to_f/$nb_partie
	$final_average2 = tableau_stat.sum / tableau_stat.size.to_f

	puts "vous avez fait #{$nb_partie} partie"
	puts "Vous avez atteint la 10ème en marche au bout de #{$final_average} en moyenne. (calul via variable simple)"
	puts "Vous avez atteint la 10ème en marche au bout de #{$final_average2} tours en moyenne. (calcul via tableau)" 

      tableau_stat = tableau_stat.sort                     #sort the array from least to greatest
      if tableau_stat.length.odd?                   #is the length of the array odd?
        print "LA médiane du nombre de tour est "
        puts tableau_stat[(tableau_stat.length - 1) / 2] #find value at this index
      else tableau_stat.length.even?                #is the length of the array even?
        print "LA médiane du nombre de tour est "
        puts (tableau_stat[tableau_stat.length/2] + tableau_stat[tableau_stat.length/2 - 1])/2.to_f
                                             #average the values found at these two indexes and convert to float
      end

end
   


average_finish_time
