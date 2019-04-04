

def signup 
	puts "Merci de définir votre mot de passe ?"
 	print ">  "  

 	$pwd = gets.chomp


end


# 	puts "votre mot de passe est #{$pwd}"
def login 

	puts "Bienvenue. Pour accéder à votre espace, entrez votre mot de passe :"
 	print ">  "  

 	$pwd_verif = gets.chomp

 		while $pwd!=$pwd_verif

			puts "Perdu, entrez votre bon mot de passe :"
		 	print ">  "  

		 	$pwd_verif = gets.chomp

 			
 		end

	puts "Bienvenue!"

end

def welcome_screen

	puts "Bienvenue dans le monde secret de THP !!!"
	puts "Attention c'est vraiment secret, si tu dévoiles ces infos on te tue!!!"
	puts ""
	puts "Message de lionel à léo : Roseline nous dit qu'elle va jeuner et elle va à la boulangerie !!!"
	puts "Message de leo à Roseline : Hey Roseline, tu as vu lionel il est arrivé à 10h30 !!!"



end

def perfom
		signup
		login
		welcome_screen
end

perfom

