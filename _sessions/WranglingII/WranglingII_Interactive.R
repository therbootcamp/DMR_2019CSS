### Wrangling II
### Data Mining mit R
### Dezember 2019


kc_house <- read_csv(file = "1_Data/kc_house.csv")

# Datensatz vorbereiten (Aufgaben B1, B4-B6)
kc_house <- kc_house %>%
  mutate(qm_wohnraum = qf_wohnraum * 0.093,
         qm_dachstock = qf_dachstock * 0.093,
         qm_keller  = qf_keller * 0.093,
         qm_total = qm_wohnraum + qm_dachstock + qm_keller,
         villa = case_when(
           qm_total > 750 ~ "ja",
           qm_total <= 750~ "nein"))

# C7. Berechne die mittlere Anzahl Stockwerke (`stoecke`) und Badezimmer
# (`badezimmer`) von Villen (`villa`).


# D5. Diese Tabelle hat recht viele Zeilen und ist daher etwas unübersichtlich.
# Kreiere eine neue Variable `baujahrzehnt`, welche angibt, in welchem Jahrzehnt
# ein Haus gebaut wurde und erstelle dann die Tabelle der letzten Aufgabe Gruppiert
# nach dieser neuen Variable. Tipp: die `floor()` Funktion rundet eine Zahl auf
# die nächst kleinere ganze Zahl ab.


# E1. Dein Freund Theodorus interessiert sich für Häuser einer bestimmten Gegend,
# nämlich mit den Postleitzahlen (`postleitzahl`) 98001, 98109, 98117 und 98199.
# Stelle ihm einen neuen Datensatz `theodorus` zusammen, welcher nur die Häuser
# dieser Gegend enthält. Tipp: der `%in%` Operator testet ob Elemente des Vektors
# auf der rechten Seite im Vektor auf der linken Seite enthalten sind.


# E2. Berechne für Theodorus den mittleren, den Median-, den Minimum-, den
# Maximumpreis, sowie die Anzahl Häuser pro Gruppe, separat für die
# Postleitzahlen und ob es eine Villa ist.

# 1. Welche Postleitzahl hat den höchsten Anteil Häuser, welche am Wasser gebaut
# sind (`ufer`)? Printe nur diese Zeile des Datensatzes.