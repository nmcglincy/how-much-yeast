# A function to calculate the initial dilution of yeast cultures
# 
args = commandArgs(T)
ods = read.csv(file = args[1],
               header = FALSE,
               stringsAsFactors = FALSE,
               row.names = FALSE)
dilFac = args[2]
finOd = args[3]
finVol = args[4]
howMuchYeast = function(ods, dilFac, finOd, finVol) {
  volYeast = (finOd/ods[,2])*finVol
  volMed = finVol - volYeast
  result = data.frame(strain = ods[,1],
                      vol.yeast = volYeast,
                      vol.media = volMed)
  print(result)
  write.csv(result, 
            file = "how-much-yeast.csv",
            row.names = FALSE)
}
howMuchYeast(ods, dilFac, finOd, finVol)
