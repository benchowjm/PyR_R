# Load data
d <- read.csv("pop2015.csv", stringsAsFactors=F)

# Find the rows which have an empty second column
ndx <- d[,2] != ""

# Subset out the requisite rows
d <- d[ndx,]

# Get rid of the header row & keep only the first 3 columns
d <- d[-1,1:3]

# Change the names of the columns
names(d) <- c("year", "total_pop", "sg_resi")

# Add in a new column called 'Census'
d$census <- ifelse(grepl("\\(", d$year), "Yes", "No")

# Get rid of the word 'Census'
d$year <- gsub("\\(Census\\)", "", d$year)

# Get rid of commas
d$total_pop <- gsub(",", "", d$total_pop)
d$sg_resi <- gsub(",", "", d$sg_resi)

# Change blank spaces to NA
ndx2 <- d$sg_resi == ""
d[ndx2, "sg_resi"] <- NA

# Write as a new csv file
write.csv(d, "pop2015_R.csv", row.names=F)
