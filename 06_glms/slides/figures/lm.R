
set.seed(1)

n <- 50
x <- runif(n, -7.5, 7.5)
y <- 0.75*x + 0.5 + rnorm(n, sd = 2)

stopifnot(all(y > -10 & y < 10))

model <- lm(y ~ x)


pdf("lm.pdf", width = 5, height = 5)
par(
    mar = c(2.5, 2.5, 1, 1),
    pty = "s"
)

plot(x, y, pch = 20, xlim = c(-10, 10), ylim = c(-10, 10))
abline(model, lwd = 2, col = "#FF5722")

dev.off()


pdf("lm_ols.pdf", width = 5, height = 5)
par(
    mar = c(2.5, 2.5, 1, 1),
    pty = "s"
)

plot(x, y, type = "n", xlim = c(-10, 10), ylim = c(-10, 10))

alpha <- coef(model)["(Intercept)"]
beta <- coef(model)["x"]

y1 <- alpha + beta*x

segments(x, y, x, y1, col = "darkgray")
abline(model, lwd = 2, col = "#FF5722")
points(x, y, pch = 20)

dev.off()

