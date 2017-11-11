
random_points <- function(n_points = 250, n_squares = 1) {
    set.seed(1)
	limits <- seq(0, 1, length.out = n_squares+1)
	n <- n_points / n_squares**2
	plot(NA, type = "n", xlim = range(limits), ylim = range(limits),
	     xlab = "", ylab = "")
	abline(h = seq(0, 1, 0.2), v = seq(0, 1, 0.2), lty = 3 , col = "darkgray")
	for (i in 2:length(limits)) for (j in 2:length(limits)) {
		x <- runif(n, min = limits[i-1], max = limits[i])
		y <- runif(n, min = limits[j-1], max = limits[j])
		points(x, y, pch = 20, cex = 2)
	}
}

pdf("random_points.pdf", width = 15, height = 5)
par(
    mar=c(2.5, 2.5, 1, 1),
    mfrow=c(1, 3),
    pty="s"
)
random_points(144, 12)
random_points(144, 6)
random_points(144, 1)
dev.off()

