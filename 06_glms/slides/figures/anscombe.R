
pdf("anscombe.pdf", width = 10, height = 10)

par(
    mar = c(2.5, 2.5, 1, 1),
    mfrow = c(2, 2),
    pty = "s"
)

for (i in 1:4) {
    f <- sprintf("y%d ~ x%d", i, i)
    model <- lm(as.formula(f), data = anscombe)
    plot(as.formula(f), data = anscombe, type = "n",
         xlim = c(0, 20), ylim = c(0, 20))
    abline(model, lwd = 2, col = "#FF5722")
    points(as.formula(f), data = anscombe, pch = 20)
}

dev.off()

