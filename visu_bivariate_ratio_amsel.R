rm(list = ls())

nb_l  = 50; 

datas     = matrix(0,nrow=6,ncol=11);
## ----------------------------------------------------------------

for (data_ in c("D1","D2","D3","D4","D6","D8")) { 
  names_res = NULL;
  
  cat("###################################################")
  
  as_left  = seq(-1.2,-0.05, length.out = nb_l);
  as_right = seq(0.05,+1.2,  length.out = nb_l);

  as = c(as_left, as_right);
  as00=as;
  
  source("~/visu-mean-estimator/getdata_art.R"); 
  
  ## ----------------------------------------------------------------
  
  cat("\n")
  
  V_YO        = lb*Y_bar^2*Cy_2
  
  MSE_yreg = lb*Sy_2*(1-rhoyx1^2-rhoyx2^2+2*rhoyx1*rhoyx2*rhox1x2);
  cat("V_YO/MSE_yreg=",V_YO/MSE_yreg,"\n");
  
  MSE_ydif = lb*Sy_2*(1-(rhoyx1^2+rhoyx2^2-2*rhoyx1*rhoyx2*rhox1x2)/(1-rhox1x2^2));
  cat("V_YO/MSE_ydif=",V_YO/MSE_ydif,"\n");   
  
  ## ----------------------------------------------------------------
}

