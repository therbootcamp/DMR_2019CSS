### Wrangling II
### Data Mining mit R
### Dezember 2019


kc_house <- read_csv(file = "1_Data/kc_house.csv")

# Datensatz vorbereiten (Aufgaben B1, B4-B6)
kc_house <- kc_house %>%
  mutate(living_sqm = sqft_living * 0.093,
         above_sqm = sqft_above * 0.093,
         basement_sqm  = sqft_basement * 0.093,
         total_sqm = living_sqm + above_sqm + basement_sqm,
         mansion = case_when(
           total_sqm > 750 ~ "yes",
           total_sqm <= 750~ "no"))

# C7. Berechne die mittlere Anzahl Stockwerke (`floors`) und Badezimmer
# (`bathrooms`) von Villen (`mansion`).


# D5. Kreiere eine neue Variable `built_decade`, welche angibt, in welchem
# Jahrzehnt ein Haus gebaut wurde und erstelle dann die Tabelle der letzten
# Aufgabe Gruppiert nach dieser neuen Variable. Tipp: die `floor()` Funktion
# rundet eine Zahl auf die nächst kleinere ganze Zahl ab.


# E1. Dein Freund Theodorus interessiert sich für Häuser einer bestimmten Gegend,
# nämlich mit den Postleitzahlen (`zipcode`) 98001, 98109, 98117 und 98199.
# Stelle ihm einen neuen Datensatz `theodorus` zusammen, welcher nur die Häuser
# dieser Gegend enthält. Tipp: der `%in%` Operator testet ob Elemente des Vektors
# auf der rechten Seite im Vektor auf der linken Seite enthalten sind.


# E2. Berechne für Theodorus den mittleren, den Median-, den Minimum-, den
# Maximumpreis, sowie die Anzahl Häuser pro Gruppe, separat für die
# Postleitzahlen und ob es eine Villa ist.

# 1. Welche Postleitzahl hat den höchsten Anteil Häuser, welche am Wasser gebaut
# sind (`waterfront`)? Printe nur diese Zeile des Datensatzes.