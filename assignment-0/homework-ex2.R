par(mfrow=c(1,3))

# Part (a)
s1 <- rlnorm(10000, 2, 2)
hist(s1, xlim=c(0, 100), breaks=1000); boxplot(s1); qqnorm(s1)

# Part (b)
s2 <- rbinom(40, 50, 0.25)
hist(s2); boxplot(s2); qqnorm(s2)

# Part (c)
s3 <- runif(60, -2, 3)
hist(s3); boxplot(s3); qqnorm(s3)

# Part (d)
s4 <- rpois(200, 9)
hist(s4); boxplot(s4); qqnorm(s4)
