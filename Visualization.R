# Load necessary libraries
library(ggplot2)

# Histogram of additional charges
ggplot(df, aes(x = Additional_charges)) +
  geom_histogram(binwidth = 1000, fill = "springgreen4", color = "black", alpha = 0.7) +
  labs(title = "Histogram of Additional Charges",
       x = "Additional Charges",
       y = "Frequency") +
  theme_minimal()

# Histogram of age
ggplot(df, aes(x = Age)) +
  geom_histogram(binwidth = 1, fill = "lavender", color = "black", alpha = 0.7) +
  labs(title = "Histogram of Age",
       x = "Age",
       y = "Frequency") +
  theme_minimal()


# Create a bar plot for the "Services" variable
ggplot(df, aes(x = Services)) +
  geom_bar(fill = "mistyrose3", color = "black") +
  labs(title = "Distribution of Services",
       x = "Services",
       y = "Count") +
  theme_minimal()

# Create a histogram for the "Doc_visits" variable
ggplot(df, aes(x = Doc_visits)) +
  geom_histogram(binwidth = 1, fill = "darkseagreen1", color = "black", alpha = 0.7) +
  labs(title = "Histogram of Doctor Visits",
       x = "Doctor Visits",
       y = "Frequency") +
  theme_minimal()

# Create a bar plot for the "Complication_risk" variable
ggplot(df, aes(x = Complication_risk, fill = Complication_risk)) +
  geom_bar() +
  labs(title = "Distribution of Complication Risk",
       x = "Complication Risk Level",
       y = "Count") +
  theme_minimal()

# Create a histogram for the "TotalCharge" variable
ggplot(df, aes(x = TotalCharge)) +
  geom_histogram(binwidth = 100, fill = "lightsalmon", color = "black", alpha = 0.7) +
  labs(title = "Histogram of Total Charges",
       x = "Total Charges",
       y = "Frequency") +
  theme_minimal()

# Calculate the frequency of each category
freq_hb <- table(df$HighBlood)

# Print the frequency table
print(freq_hb)

# Create a bar plot for HighBlood
ggplot(df, aes(x = factor(HighBlood))) +
  geom_bar(fill = "rosybrown1", color = "black") +
  labs(title = "Bar Plot: High Blood Frequency",
       x = "High Blood",
       y = "Frequency") +
  theme_minimal()

# Calculate the frequency of each category
freq_stroke <- table(df$Stroke)

# Print the frequency table
print(freq_stroke)

# Create a bar plot for Stroke
ggplot(df, aes(x = factor(Stroke))) +
  geom_bar(fill = "orange1", color = "black") +
  labs(title = "Bar Plot: Stroke Frequency",
       x = "Stroke",
       y = "Frequency") +
  theme_minimal()

# Calculate the frequency of each category
freq_ow <- table(df$Overweight)

# Print the frequency table
print(freq_ow)

# Create a bar plot for Overweight
ggplot(df, aes(x = factor(Overweight))) +
  geom_bar(fill = "peachpuff", color = "black") +
  labs(title = "Bar Plot: Overweight Frequency",
       x = "Overweight",
       y = "Frequency") +
  theme_minimal()

# Calculate the frequency of each category
freq_ar <- table(df$Arthritis)

# Print the frequency table
print(freq_ar)

# Create a bar plot for Arthritis
ggplot(df, aes(x = factor(Arthritis))) +
  geom_bar(fill = "steelblue4", color = "black") +
  labs(title = "Bar Plot: Arthritis Frequency",
       x = "Arthritis",
       y = "Frequency") +
  theme_minimal()

# Calculate the frequency of each category
freq_dia <- table(df$Diabetes)
print(freq_dia)

# Bar plot for Diabetes
ggplot(df, aes(x = factor(Diabetes))) +
  geom_bar(fill = "powderblue", color = "black") +
  labs(title = "Bar Plot: Diabetes Frequency",
       x = "Diabetes",
       y = "Frequency") +
  theme_minimal()

# Calculate the frequency of each category
freq_hyp <- table(df$Hyperlipidemia)
print(freq_hyp)

# Bar plot for Hyperlipidemia
ggplot(df, aes(x = factor(Hyperlipidemia))) +
  geom_bar(fill = "maroon", color = "black") +
  labs(title = "Bar Plot: Hyperlipidemia Frequency",
       x = "Hyperlipidemia",
       y = "Frequency") +
  theme_minimal()

# Calculate the frequency of each category
freq_bp <- table(df$BackPain)
print(freq_bp)

# Bar plot for BackPain
ggplot(df, aes(x = factor(BackPain))) +
  geom_bar(fill = "lavenderblush2", color = "black") +
  labs(title = "Bar Plot: Back Pain Frequency",
       x = "Back Pain",
       y = "Frequency") +
  theme_minimal()

# Calculate the frequency of each category
freq_an <- table(df$Anxiety)
print(freq_an)

# Bar plot for Anxiety
ggplot(df, aes(x = factor(Anxiety))) +
  geom_bar(fill = "lemonchiffon1", color = "black") +
  labs(title = "Bar Plot: Anxiety Frequency",
       x = "Anxiety",
       y = "Frequency") +
  theme_minimal()

# Calculate the frequency of each category
freq_alr <- table(df$Allergic_rhinitis)
print(freq_alr)

# Bar plot for Allergic rhinitis
ggplot(df, aes(x = factor(Allergic_rhinitis))) +
  geom_bar(fill = "mediumorchid4", color = "black") +
  labs(title = "Bar Plot: Allergic Rhinitis Frequency",
       x = "Allergic Rhinitis",
       y = "Frequency") +
  theme_minimal()

# Calculate the frequency of each category
freq_re <- table(df$Reflux_esophagitis)
print(freq_re)

# Bar plot for Allergic rhinitis
ggplot(df, aes(x = factor(Reflux_esophagitis))) +
  geom_bar(fill = "lightsteelblue1", color = "black") +
  labs(title = "Bar Plot: Reflux Esophagitis Frequency",
       x = "Reflux Esophagitis",
       y = "Frequency") +
  theme_minimal()

# Calculate the frequency of each category
freq_asthma <- table(df$Asthma)
print(freq_asthma)

# Bar plot for Allergic rhinitis
ggplot(df, aes(x = factor(Asthma))) +
  geom_bar(fill = "plum1", color = "black") +
  labs(title = "Bar Plot: Asthma Frequency",
       x = "Asthma",
       y = "Frequency") +
  theme_minimal()


#Univariate

# Create a scatter plot for Additional charges vs Age
ggplot(df, aes(x = Age, y = Additional_charges)) +
  geom_point(alpha = 0.3, color = "darkblue") +
  labs(title = "Scatter Plot: Additional Charges vs Age",
       x = "Age",
       y = "Additional Charges") +
  theme_minimal()

# Calculate the correlation coefficient
cc_age_addc <- cor(df$Age, df$Additional_charges)
cat("Correlation Coefficient between Age and Additional Charges:", cc_age_addc, "\n")

# Create a box plot for Additional charges by Services
ggplot(df, aes(x = Services, y = Additional_charges, fill = Services)) +
  geom_boxplot() +
  labs(title = "Box Plot: Additional Charges by Services",
       x = "Services",
       y = "Additional Charges") +
  theme_minimal()

# Create a scatter plot for Additional charges vs Doc visits
ggplot(df, aes(x = Doc_visits, y = Additional_charges)) +
  geom_point(alpha = 0.5, color = "darkslategray4") +
  labs(title = "Scatter Plot: Additional Charges vs Doc Visits",
       x = "Doc Visits",
       y = "Additional Charges") +
  theme_minimal()

# Calculate the correlation coefficient
cc_dv_addc <- cor(df$Doc_visits, df$Additional_charges)
cat("Correlation Coefficient between Doc Visits and Additional Charges:", cc_dv_addc, "\n")

# Create a box plot for Additional charges by Complication risk
ggplot(df, aes(x = Complication_risk, y = Additional_charges, fill = Complication_risk)) +
  geom_boxplot() +
  labs(title = "Box Plot: Additional Charges by Complication Risk",
       x = "Complication Risk",
       y = "Additional Charges") +
  theme_minimal()

# Create a scatter plot for Additional charges vs Total Charge
ggplot(df, aes(x = Additional_charges, y = TotalCharge)) +
  geom_point(alpha = 0.5, color = "thistle4") +
  labs(title = "Scatter Plot: Additional Charges vs Total Charge",
       x = "Additional Charges",
       y = "Total Charge") +
  theme_minimal()

# Calculate the correlation coefficient
cc_tc_addc <- cor(df$Additional_charges, df$TotalCharge)
cat("Correlation Coefficient between Additional Charges and Total Charge:", cc_tc_addc, "\n")

# Create a box plot for Additional charges by High Blood
ggplot(df, aes(x = factor(HighBlood), y = Additional_charges, fill = factor(HighBlood))) +
  geom_boxplot() +
  labs(title = "Box Plot: Additional Charges by High Blood",
       x = "High Blood",
       y = "Additional Charges") +
  theme_minimal()

# Perform a t-test to compare means between high blood levels
t_test_result <- t.test(Additional_charges ~ HighBlood, data = df)
cat("T-test p-value:", t_test_result$p.value, "\n")

# Create a box plot for Additional charges by Stroke
ggplot(df, aes(x = factor(Stroke), y = Additional_charges, fill = factor(Stroke))) +
  geom_boxplot() +
  labs(title = "Box Plot: Additional Charges by Stroke",
       x = "Stroke",
       y = "Additional Charges") +
  theme_minimal()

# Perform a t-test to compare means between stroke levels
t_test_result <- t.test(Additional_charges ~ Stroke, data = df)
cat("T-test p-value:", t_test_result$p.value, "\n")

# Create a box plot for Additional charges by Overweight 
ggplot(df, aes(x = factor(Overweight), y = Additional_charges, fill = factor(Overweight))) +
  geom_boxplot() +
  labs(title = "Box Plot: Additional Charges by Overweight",
       x = "Overweight",
       y = "Additional Charges") +
  scale_fill_manual(values = c("0" = "rosybrown3", "1" = "palegreen4")) +
  theme_minimal()

# Perform a t-test to compare means between stroke levels
t_test_result <- t.test(Additional_charges ~ Overweight, data = df)
cat("T-test p-value:", t_test_result$p.value, "\n")

# Create a box plot for Additional charges by Arthritis
ggplot(df, aes(x = factor(Arthritis), y = Additional_charges, fill = factor(Arthritis))) +
  geom_boxplot() +
  labs(title = "Box Plot: Additional Charges by Arthritis",
       x = "Arthritis",
       y = "Additional Charges") +
  scale_fill_manual(values = c("0" = "skyblue", "1" = "salmon")) +
  theme_minimal()

# Perform a t-test to compare means between arthritis levels
t_test_result <- t.test(Additional_charges ~ Arthritis, data = df)
cat("T-test p-value:", t_test_result$p.value, "\n")

# Create a box plot for Additional charges by Diabetes
ggplot(df, aes(x = factor(Diabetes), y = Additional_charges, fill = factor(Diabetes))) +
  geom_boxplot() +
  labs(title = "Box Plot: Additional Charges by Diabetes",
       x = "Diabetes",
       y = "Additional Charges") +
  scale_fill_manual(values = c("0" = "darkgreen", "1" = "purple4")) + 
  theme_minimal()

# Perform a t-test to compare means between diabetes levels
t_test_result <- t.test(Additional_charges ~ Diabetes, data = df)
cat("T-test p-value:", t_test_result$p.value, "\n")

color_palette <- c("pink", "peachpuff")

# Create a box plot for Additional charges by Hyperlipidemia
ggplot(df, aes(x = factor(Hyperlipidemia), y = Additional_charges, fill = factor(Hyperlipidemia))) +
  geom_boxplot() +
  scale_fill_manual(values = color_palette) +
  labs(title = "Box Plot: Additional Charges by Hyperlipidemia",
       x = "Hyperlipidemia",
       y = "Additional Charges") +
  theme_minimal()

# Perform a t-test to compare means between hyperlipidemia levels
t_test_result <- t.test(Additional_charges ~ Hyperlipidemia, data = df)
cat("T-test p-value:", t_test_result$p.value, "\n")

# Choose colors
color_palette <- c("mistyrose", "mediumaquamarine")

# Create a box plot for Additional charges by BackPain
ggplot(df, aes(x = factor(BackPain), y = Additional_charges, fill = factor(BackPain))) +
  geom_boxplot() +
  scale_fill_manual(values = color_palette) +
  labs(title = "Box Plot: Additional Charges by Back Pain",
       x = "Back Pain",
       y = "Additional Charges") +
  theme_minimal()

# Perform a t-test to compare means between back pain levels
t_test_result <- t.test(Additional_charges ~ BackPain, data = df)
cat("T-test p-value:", t_test_result$p.value, "\n")

# Choose colors
color_palette <- c("cadetblue2", "darkmagenta")

# Create a box plot for Additional charges by Anxiety 
ggplot(df, aes(x = factor(Anxiety), y = Additional_charges, fill = factor(Anxiety))) +
  geom_boxplot() +
  scale_fill_manual(values = color_palette) +
  labs(title = "Box Plot: Additional Charges by Anxiety",
       x = "Anxiety",
       y = "Additional Charges") +
  theme_minimal()

# Perform a t-test to compare means between anxiety levels
t_test_result <- t.test(Additional_charges ~ Anxiety, data = df)
cat("T-test p-value:", t_test_result$p.value, "\n")

# Choose colors
color_palette <- c("deeppink", "gold1")

# Create a box plot for Additional charges by Allergic rhinitis 
ggplot(df, aes(x = factor(Allergic_rhinitis), y = Additional_charges, fill = factor(Allergic_rhinitis))) +
  geom_boxplot() +
  scale_fill_manual(values = color_palette) +
  labs(title = "Box Plot: Additional Charges by Allergic Rhinitis",
       x = "Allergic Rhinitis",
       y = "Additional Charges") +
  theme_minimal()

# Perform a t-test to compare means between allergic rhinitis levels
t_test_result <- t.test(Additional_charges ~ Allergic_rhinitis, data = df)
cat("T-test p-value:", t_test_result$p.value, "\n")

# Choose colors
color_palette <- c("hotpink4", "lightblue1")

# Create a box plot for Additional charges by Reflux Esophagitis
ggplot(df, aes(x = factor(Reflux_esophagitis), y = Additional_charges, fill = factor(Reflux_esophagitis))) +
  geom_boxplot() +
  scale_fill_manual(values = color_palette) +
  labs(title = "Box Plot: Additional Charges by Reflux Esophagitis",
       x = "Reflux Esophagitis",
       y = "Additional Charges") +
  theme_minimal()

# Perform a t-test to compare means between reflux esophagitis levels
t_test_result <- t.test(Additional_charges ~ Reflux_esophagitis, data = df)
cat("T-test p-value:", t_test_result$p.value, "\n")

# Choose colors
color_palette <- c("sienna1", "paleturquoise")

# Create a box plot for Additional charges by Asthma
ggplot(df, aes(x = factor(Asthma), y = Additional_charges, fill = factor(Asthma))) +
  geom_boxplot() +
  scale_fill_manual(values = color_palette) +
  labs(title = "Box Plot: Additional Charges by Asthma",
       x = "Asthma",
       y = "Additional Charges") +
  theme_minimal()

# Perform a t-test to compare means between asthma levels
t_test_result <- t.test(Additional_charges ~ Asthma, data = df)
cat("T-test p-value:", t_test_result$p.value, "\n")
