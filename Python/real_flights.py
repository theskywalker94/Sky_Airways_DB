#Python per generare i voli reali in base alla lista dei voli e a date di partenza casuali nel 2025

import ast
import random
import numpy as np

months = list(range(1, 13))
new_flights =[]
stato = ['completato', 'cancellato']
february = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28]
december = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]
thirty_days = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30]
thirtyone_days = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]

with open('flight_with_next_day.txt', 'r', encoding='utf-8') as file: #ho inserito a mano nelle tuple un valore true = 1 o false = 0 se la data di arrivo è nel giorno successivo a quello di partenza
   for riga in file:
        riga = riga.strip().rstrip(',')
        if riga:
            tupla = ast.literal_eval(riga)
            for month in months:
                february_cicle = february[:]
                december_cicle = december[:]
                thirty_cicle = thirty_days[:]
                thirtyone_cicle = thirtyone_days[:]
                for i in range(4):
                    real_year = 2025
                    if month == 2:
                        day = february_cicle.pop(random.randrange(len(february_cicle))) # Febbraio ha 28 giorni
                        if day == 28 and int(tupla[5]) == 1:
                            next_day = 1
                            real_month = month + 1
                        else:
                            next_day = day + int(tupla[5])
                            real_month = month
                    elif month in [4, 6, 9, 11]:
                        day = thirty_cicle.pop(random.randrange(len(thirty_cicle)))  # Aprile, Giugno, Settembre e Novembre hanno 30 giorni
                        if day == 30 and int(tupla[5]) == 1:
                            next_day = 1
                            real_month = month + 1
                        else:
                            next_day = day + int(tupla[5])
                            real_month = month
                    elif month == 12:
                        day = december_cicle.pop(random.randrange(len(december_cicle))) # Dicembre ha 31 giorni
                        if day == 31 and int(tupla[5]) == 1:
                            next_day = 1
                            real_month = 1
                            real_year = 2026
                        else:
                            next_day = day + int(tupla[5])
                            real_month = month
                    else:
                        day = thirtyone_cicle.pop(random.randrange(len(thirtyone_cicle)))
                        if day == 31 and int(tupla[5]) == 1:
                            next_day = 1
                        else:
                            next_day = day + int(tupla[5])
                            real_month = month
                    flights = list(tupla)
                    flights.pop(5)
                    flights.pop(4)
                    flights.pop(3)
                    flights.pop(2)
                    flights.pop(1)
                    date_departure = f"{day:02d}/{month:02d}/2025"
                    date_arrival = f"{next_day:02d}/{real_month:02d}/{real_year}"

                    flights.append(date_departure)
                    flights.append(date_arrival)

                    if month >= 7:
                        flights.append('programmato')
                    else:
                        flights.append(str(np.random.choice(stato, p=[0.9, 0.1])))

                    new_flights.append(tuple(flights))

                    print(flights)

with open('real_flights.txt', 'w', encoding='utf-8') as file:
    testo = ',\n'.join(str(tuple(volo)) for volo in new_flights)
    file.write(testo)