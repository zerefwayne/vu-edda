# Part (a)

n_s1 <- 100
s1 <- rnorm(n_s1)
mean_s1 <- mean(s1)
sd_s1 <- sd(s1)
par(mfrow=c(2,2))
hist(s1, plot=TRUE)
qqnorm(s1)

n_s2 <- 10000
s2 <- rnorm(n_s2)
mean_s2 <- mean(s2)
sd_s2 <- sd(s2)
hist(s2, plot=TRUE)
qqnorm(s2)

# Part (b)

p_lt_2 <- pnorm(2)
p_gt_minus_half <- 1 - pnorm(-0.5)
p_bw_minus_1_and_2 <- pnorm(2) - pnorm(-1)

# Part (c)

p_lt_2_s1 <- sum(s1<2) / n_s1
p_lt_2_s2 <- sum(s2<2) / n_s2

p_gt_minus_half_s1 <- sum(s1>-0.5) / n_s1
p_gt_minus_half_s2 <- sum(s2>-0.5) / n_s2

p_bw_minus_1_and_2_s1 <- sum(s1>-1&s1<2 ) / n_s1
p_bw_minus_1_and_2_s2 <- sum(s2>-1&s2<2) / n_s2

# Part (d)
s1_3_2 <- rnorm(n_s1, mean=3, sd=2)
s1_ms_3_2 <- c(mean(s1_3_2), sd(s1_3_2))
par(mfrow=c(2,2))
hist(s1_3_2)
qqnorm(s1_3_2)

s2_3_2 <- rnorm(n_s2, mean=3, sd=2)
s2_ms_3_2 <- c(mean(s2_3_2), sd(s2_3_2))
hist(s2_3_2)
qqnorm(s2_3_2)

qnorm(0.95, mean=3, sd=2)

qnorm(0.95, mean=3, sd=2) == 3 + qnorm(0.95)*2 #TRUE

# Part (e)
n <- 1000
mu <- -10
sd <- 5

Z <- rnorm(n)
X <- mu + sd*Z
mu_new <- mean(X)
sd_new <- sd(X)
