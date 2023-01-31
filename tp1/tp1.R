brutToNet1 <-function(salaire_brut){
  if (is.numeric(salaire_brut)){
      salaire_net <- 0.78*salaire_brut
      return(salaire_net)
      }else {
    print("ERROR")
    }
  }
  
brutToNet1("fg")


brutToNet2<- function(salaire_brut,contrat){
  salaire_net_impot= salaire_brut*0.925
  if (contrat=="cadre"){
    salaire_net=salaire_net_impot*0.75
  }
  else if (contrat=="non cadre"){
    salaire_net=salaire_net_impot*0.78
  } 
  else {
    print("ERROR : contract unknown")
  }
  return(salaire_net)
  
}
brutToNet2(2000,"non cadre")
  
  