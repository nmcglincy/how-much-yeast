# A function to calculate the initial dilution of yeast cultures
# need to have a blank line at the end of your csv
# 
args = commandArgs(T)
ods = read.csv(file = args[1],
               header = FALSE,
               stringsAsFactors = FALSE)
dilFac = as.numeric(args[2])
finOd = as.numeric(args[3])
finVol = as.numeric(args[4])
howMuchYeast = function(ods, dilFac, finOd, finVol) {
  volYeast = (finOd/(ods[,2]*dilFac))*finVol
  volMed = finVol - volYeast
  result = data.frame(strain = ods[,1],
                      mLs.yeast = signif(volYeast, digits = 2),
                      mLs.media = signif(volMed, digits = 3))
  print(result)
  write.csv(result, 
            file = paste(Sys.Date(),"yeast-ODs.csv", sep = "-"),
            row.names = FALSE)
}
howMuchYeast(ods, dilFac, finOd, finVol)
