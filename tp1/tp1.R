brutToNet1 <- function(salaire_brut){
  # Vérifier que le salaire brut est un nombre (numeric)
  if (is.numeric(salaire_brut)){
    # Calculer le salaire net
    salaire_net <- 0.78 * salaire_brut
    # Renvoyer le salaire net
    return(salaire_net)
  } else {
    # Afficher une erreur si le salaire brut n'est pas un nombre
    print("ERROR : le salaire brut doit être un nombre")
  }
}
# Exemple d'utilisation
brutToNet1(1543)



brutToNet2 <- function(salaire_brut, contrat){
  # Calcul du salaire net imposable
  salaire_net_impot <- salaire_brut * 0.925
  
  # Selon le contrat, le salaire net est différent
  if (contrat == "cadre"){
    salaire_net <- salaire_net_impot * 0.75
  } else if (contrat == "non cadre"){
    salaire_net <- salaire_net_impot * 0.78
  } else {
    stop("ERROR : contrat inconnu")
  }
  
  return(salaire_net)
}
# Exemple d'utilisation
brutToNet2(10000, "cadre")



brutToNet3 <- function(salaire_brut, contrat, prelevement = 7.5 , temps = 100){
  # Conversion de prelevement de pourcentage à décimal
  prelevement <- prelevement / 100
  
  # Conversion de temps de pourcentage à décimal
  temps <- temps / 100
  
  # Vérification si temps est négatif
  if (temps < 0){
    stop("ERROR : temps ne peut pas être négatif")
  } 
  
  # Vérification si temps est supérieur à 1
  else if (temps > 1){
    stop("ERROR : temps ne peut pas être supérieur à 1")
  } 
  
  # Vérification si prelevement est négatif
  else if (prelevement < 0){
    stop("ERROR : prélèvement ne peut pas être négatif")
  } 
  
  # Vérification si prelevement est supérieur à 1
  else if (prelevement > 1){
    stop("ERROR : prélèvement ne peut pas être supérieur à 1")
  }
  
  # Calcul du salaire
  salaire <- salaire_brut * temps
  
  # Calcul du salaire après impôts
  salaire_net_impot <- salaire_brut * (1 - prelevement)
  
  # Calcul du salaire net en fonction du contrat
  if (contrat == "cadre"){
    salaire_net <- salaire_net_impot * 0.75
  } else if (contrat == "non cadre"){
    salaire_net <- salaire_net_impot * 0.78
  }
  
  # Retourne le salaire brut et le salaire net
  return(c(salaire_brut, salaire_net))
}

# Exemple d'utilisation
brutToNet3(1500, "cadre")

