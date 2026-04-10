library("Rlab")

# custom function for counting matches in columns of a matrix
colMatches <- function(m, size) {
  apply(m, 2, function(x) {
    as.numeric(max(table(x)) >= size)
  })
}

# --- PART 1: A Single Trial ---
nsides = 20
nrolls = 8
ntrials = 10
size_match = 2
die = 1:nsides
N = length(nrolls)

# Perform one trial of 8 rolls
trial = sample(die, nrolls, replace=TRUE)

print("Single Trial Results:")
print(trial)

print("Does the single trial have a match? (1 = Yes, 0 = No)") # For testing purposes, i need guidance for the meantime
print(colMatches(as.matrix(trial), size_match))

# --- PART 2: Running 10 Trials at Once ---
y = sample(die, nrolls * ntrials, replace=TRUE)

# Arrange into 8 rows (rolls) and 10 columns (trials)
trials = matrix(y, nrow=nrolls, ncol=ntrials)

print("Trials Matrix (8 rows of rolls, 10 columns of trials):")
print(trials)

# Find matches in each column
w = colMatches(trials, size_match)

print("Matches found per trial (1 = Yes, 0 = No):")
print(w)

print("Total number of trials that had a match:")
print(sum(w))

print("Probability (Proportion) of a match:")
print(sum(w) / ntrials)

# basic ploting wahhhhhhhhh

# new settings
nsides = 20
ntrials = 1000
die = 1:nsides
nrolls = 1:60   # We are testing 1 roll, then 2, all the way to 60 wutttt
N = length(nrolls)

# --- 1. Graph for SIZE_MATCH = 2 (Pairs) ---
size_match = 2
prob = rep(0, N)   # Create an empty vector to store results

for (j in 1:N) {
    nr = nrolls[j]
    y = sample(die, nr * ntrials, replace = TRUE)
    trials = matrix(y, nrow = nr, ncol = ntrials)
    w = colMatches(trials, size_match)
    prob[j] = mean(w)
}

# Create the initial plot (Red Line)
plot(nrolls, prob, type = 'l', col = "red", lwd = 2, 
     main = "Probability of Matches", xlab = "Number of Rolls", ylab = "Probability")

# --- 2. Graph for SIZE_MATCH = 3 (Three of a Kind) ---
size_match = 3
prob = rep(0, N)

for (j in 1:N) {
    nr = nrolls[j]
    y = sample(die, nr * ntrials, replace = TRUE)
    trials = matrix(y, nrow = nr, ncol = ntrials)
    w = colMatches(trials, size_match)
    prob[j] = mean(w)
}
# Add to the existing plot (Green Line)
lines(nrolls, prob, col = "green", lwd = 2)

# --- 3. Graph for SIZE_MATCH = 4 (Four of a Kind) ---
size_match = 4
prob = rep(0, N)

for (j in 1:N) {
    nr = nrolls[j]
    y = sample(die, nr * ntrials, replace = TRUE)
    trials = matrix(y, nrow = nr, ncol = ntrials)
    w = colMatches(trials, size_match)
    prob[j] = mean(w)
}
# Add to the existing plot (Blue Line)
lines(nrolls, prob, col = "blue", lwd = 2)

# Add a legend so you know which color is which
legend("topleft", legend=c("Pair", "3-of-a-kind", "4-of-a-kind"), 
       col=c("red", "green", "blue"), lwd=2)
