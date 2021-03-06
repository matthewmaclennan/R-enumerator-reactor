#Mode refers to the following:
#Enumerate the combinations of atoms based on supplying the final atom string length.
atomComboFinalLength<-function(atomlist,finallength,){
  atomlist<-as.character(atomlist)
  finallength<-as.numeric(finallength)
  listing<-list(list())
  for(i in 1:finallength){
    listing[[i]]<-atomlist
  }  
  atomstrings<-do.call(paste0,expand.grid(listing))
  mirrorimages<-unlist(lapply(strsplit(atomstrings,""),function(x) paste(rev(x),collapse="")))
  uniques<-unique(c(atomstrings,mirrorimages))
}
