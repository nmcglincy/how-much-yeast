png(file = paste(Sys.Date(),"-cultures-od.png", sep = "-"),
    width = 7, 
    height = 7, 
    units = "in",
    res = 300)
plot(x = c(0, 3),
     y = c(0.1, 0.29),
     type = "b",
     xlim = c(0,6),
     ylim = c(0,1),
     col = "#000000",
     pch = 19,
     xlab = "Time, hrs",
     ylab = "OD600",
     main = paste(Sys.Date(), ", pN52.sims into NIY112 redux, cultures OD", sep = ""))
# points(x = c(0, 1.083, 2, 3, 4, 4.5, 4.75),
# 		y = c(0.05, 0.088, 0.118, 0.171, 0.286, 0.357, 0.397),
# 		col = "#56B4E9",
# 		pch = 19,
#      	type = "b")
# points(x = c(0, 1.083, 2, 3, 4, 4.5, 4.75, 5.67),
# 		y = c(0.05, 0.087, 0.119, 0.176, 0.287, 0.36, 0.396, (5*0.132)),
# 		col = "#009E73",
# 		pch = 19,
#      	type = "b")
# points(x = c(0, 1.083, 2, 3, 4, 4.5, 4.75, 5.67),
# 		y = c(0.05, 0.086, 0.127, 0.174, 0.285, 0.367, 0.403, (5*0.125)),
# 		col = "#D55E00",
# 		pch = 19,
#      	type = "b")
abline(h = c(0.4, 0.6),
       lty = 2)
#abline(h = 0.6,
#       lty = 2)
# abline(v = c(4.75, 5.25),
#        lty = 2)
# abline(v = c(5.3, 5.46, 5.92),
#        lty = 3)
legend(x = "topleft",
		legend = c("1: NIY112"),
		col = c("#000000", "#E69F00", "#56B4E9", "#009E73", "#D55E00"),
		pch = 19)
dev.off()
# todo - geralise plot title and legend and extra points
