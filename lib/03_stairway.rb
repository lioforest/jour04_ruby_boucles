
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

		while $nb_partie<5 

			partie

			$stat_score = $stat_score + $nb_tour

			$nb_partie+=1
			
		end
	
	$final_average= $stat_score.to_f/$nb_partie

end

average_finish_time
puts "vous avez fait #{$nb_partie} partie"
puts "Vous avez atteint la 10ème en marche au bout de #{$final_average} en moyenne."

