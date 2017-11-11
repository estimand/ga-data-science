
p <- c(
    seq(0, 0.01, length.out = 1001),
    seq(0.011, 0.989, 0.001),
    seq(0.99, 1, length.out = 1001)
)

pdf("logit.pdf")
par(
    mar = c(2.5, 2.5, 1, 1),
    pty = "s"
)

plot(NA, type = "n", xlim = c(0, 1), ylim = c(-10, 10), xlab = "", ylab = "")
lines(p, p / (1-p), lwd = 2, col = "#009688")
lines(p, log(p / (1-p)), lwd = 2, col = "#FF5722")

dev.off()

