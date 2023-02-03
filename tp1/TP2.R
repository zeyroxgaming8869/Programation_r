#afficher le nombre de ligne 

L <- nrow(pokemon)
cat("Le nombre de lignes est :", L)



# afficher le nombre de colonne

C <- ncol(pokemon)
cat("Le nombre de colonnes est :", C)



#afficher le nom de toutes les colonnes

nom_col <- colnames(pokemon)
cat("Les noms de colonnes sont :", nom_col)



#afficher le type de chaque colonne

col_types <- sapply(pokemon, class)
cat("Les types de colonnes sont :\n")
print(col_types) 



#modifier le type 

pokemon$generation <- as.factor(pokemon$generation)
pokemon$is_legendary <- as.factor(pokemon$is_legendary)
pokemon$type <- as.factor(pokemon$type)

#verification 
cat("Le type de la colonne generation est :", class(pokemon$generation), "\n")
cat("Le type de la colonne is_legendary est :", class(pokemon$is_legendary), "\n")
cat("Le type de la colonne type est :", class(pokemon$type), "\n")



#afficher le level des 3 colonnes precedentes
level_generation = nlevels(pokemon$generation)
cat("Le type de level de la colone generation est de :", level_generation)

level_is_legendary = nlevels(pokemon$is_legendary)
cat("Le type de level de la colone is_legendary est de :", level_is_legendary)

level_type = nlevels(pokemon$type)
cat("Le type de level de la colone level_type est de :", level_type)


#affiché le résumer des données
summary(pokemon)


# Moyenne poids pokemon 





