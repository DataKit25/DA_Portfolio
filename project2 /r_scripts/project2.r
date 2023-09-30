# Load libraries
library(readr)
library(dplyr)

# Load dataset 
# Note : To have this command work make sure the data file is in the working directory of R Studio
by_tag_year <- read_csv("by_tag_year.csv")

# Inspect the dataset
head(by_tag_year)


# Add fraction column
by_tag_year_fraction <- by_tag_year %>%
 mutate (fraction = number/year_total)

# Print the new table
print(by_tag_year_fraction)


# Filter for R tags
r_over_time <- by_tag_year %>%
filter(tag == "r")

# Print the new table
print(r_over_time)


# Load ggplot2
library(ggplot2)

# Create a line plot of fraction over time
ggplot(r_over_time) +
  geom_line(aes(x = year, y = fraction))



# A vector of selected tags
selected_tags <- c("r", "dplyr", "ggplot2")

# Filter for those tags
selected_tags_over_time <- by_tag_year_fraction %>%
filter (tag %in% selected_tags)

# Plot tags over time on a line plot using color to represent tag
ggplot(selected_tags_over_time, aes(x = year, y = fraction, color = tag)) +
geom_line()


# Find total number of questions for each tag
sorted_tags <- by_tag_year %>%
  group_by(tag) %>%
  summarize(tag_total = sum(number)) %>%
  arrange(desc(tag_total))

# Print the new table
print(sorted_tags)

# Get tags of interest
my_tags <- c("android", "ios", "windows-phone")

# Filter for those tags
by_tag_subset <- by_tag_year_fraction %>%
filter(tag %in% my_tags)

# Plot tags over time on a line plot using color to represent tag
ggplot(by_tag_subset, aes(x = year, y = fraction, color = tag)) +
geom_line()


