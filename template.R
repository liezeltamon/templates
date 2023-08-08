################################################################################
# 
################################################################################
# FLAGS * FLAGS * FLAGS * FLAGS * FLAGS * FLAGS * FLAGS * FLAGS * FLAGS * FLAGS
### DIRECTORY STRUCTURE ########################################################
start_time <- Sys.time()

# Warning for left to right partial matching by $
options(warnPartialMatchDollar = T) 
# Expands warnings
options(warn = 1) 

whorunsit = "LiezelCluster" 

if( !is.null(whorunsit[1]) ){
  
  if(whorunsit == "LiezelMac"){
    home_dir = "/Users/ltamon"
    os = "Mac"
  } else if(whorunsit == "LiezelCluster"){
    home_dir = "/project/sahakyanlab/ltamon"
    os = "Linux"
  } else {
    stop("The supplied <whorunsit> option is not created in the script.")
  }
  
}

lib
wk_dir
out_dir
src_file
### OTHER SETTINGS #############################################################

################################################################################
# LIBRARIES & DEPENDENCIES * LIBRARIES & DEPENDENCIES * LIBRARIES & DEPENDENCIES 
################################################################################

################################################################################
# MAIN CODE * MAIN CODE * MAIN CODE * MAIN CODE * MAIN CODE * MAIN CODE * MAIN
################################################################################
toExport <- c("chrs")

#### PARALLEL EXECUTION #########
foreach(itr=isplitVector(1:chrs_len, chunks=nCPU), .inorder = FALSE, 
        .export=toExport, .noexport=ls()[!ls()%in%toExport]
        
) %op% {
  
  for(i in itr){
    
  }
  
}
### END OF PARALLEL EXECUTION ###

end_time <- Sys.time()
end_time - start_time 

# rm(list=ls()); gc()