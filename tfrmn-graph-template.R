png(file = paste(Sys.Date(),"trnfm-yeast-ODs.png", sep = "-"),
    width = 7, 
    height = 7, 
    units = "in",
    res = 300)
plot(x = c(0, 3.75, 4.12),
     y = c(0.1, 0.476, 0.564),
     type = "b",
     xlim = c(0,6),
     ylim = c(0,1),
     xlab = "Time, hrs",
     ylab = "OD600",
     main = "N59N62 into 295, mch-SL")
# points()
abline(h = 0.4,
       lty = 2,
       col = "green")
abline(h = 0.6,
       lty = 2,
       col = "red")
dev.off()
# todo - geralise plot title and legend and extra points
