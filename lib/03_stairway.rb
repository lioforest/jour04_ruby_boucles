puts "Bienvenue dans notre super jeux de l'escalier"

$nb_partie=1

while $nb_partie<5 

				$stair_level=0
				$nb_tour=0


				def lancé_du_dé

					
				#	print "> Appui sur entrer pour lancer le dé"

				#	x = gets

					$n = rand (6)

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

	$nb_partie+=1
	
end
puts "vous avez fait #{$nb_partie} partie"