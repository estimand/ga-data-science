library(pROC)

set.seed(1)

n <- 1000

x <- rnorm(n, sd = 5)
y <- 2 + 3*x + rnorm(n, sd = 10)

x1 <- rnorm(n, sd = 5)
x2 <- rnorm(n, sd = 3)
x3 <- rnorm(n, sd = 2)
y <- rbinom(n, 1, plogis(0.01*x1 - 0.5*x2 + x3)) > 0.5

xp <- rnorm(n)
yp <- xp > 0

model1 <- glm(y ~ x1, family = binomial)
model2 <- glm(y ~ x2, family = binomial)
model3 <- glm(y ~ x3, family = binomial)

modelp <- glm(yp ~ xp, family = binomial)

roc1 <- roc(y, predict(model1, type = "response"))
roc2 <- roc(y, predict(model2, type = "response"))
roc3 <- roc(y, predict(model3, type = "response"))

rocp <- roc(yp, predict(modelp, type = "response"))

pdf("roc.pdf")
par(mar = c(5, 5, 1, 1))
plot(roc1, type = "l", lwd = 2, col = "#263238")
lines(roc2, type = "l", lwd = 2, col = "#009688")
lines(roc3, type = "l", lwd = 2, col = "#FF5722")
lines(rocp, type = "l", lwd = 2, col = "#9C27B0")
legend("bottomright", c(
    sprintf("AUC = %.2f%%", auc(roc1) * 100),
    sprintf("AUC = %.2f%%", auc(roc2) * 100),
    sprintf("AUC = %.2f%%", auc(roc3) * 100),
    sprintf("AUC = %.2f%%", auc(rocp) * 100)
), lwd = 2, col = c("#263238", "#009688", "#FF5722", "#9C27B0"), bty = "n")
dev.off()

