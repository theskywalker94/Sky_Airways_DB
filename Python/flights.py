#Python per generare una prima lista di tratte

import ast
import itertools
import random

lista_aeroporti = []

with open('airport_list.txt', 'r', encoding='utf-8') as file:
    for riga in file:
        riga = riga.strip().rstrip(',')
        if riga:
            tupla = ast.literal_eval(riga)
            lista_aeroporti.append(tupla[0])

lista_tratte = list(itertools.permutations(lista_aeroporti, 2))  # Genera tutte le permutazioni di 2 aeroporti

lista_voli = []
random.seed(42) # Inizializzo un seed per poter replicare la generazione casuale di un orario di partenza per ogni tratta
i = 1000

for tratta in lista_tratte:
    if tratta[0] in ['FCO', 'MXP', 'VCE', 'NAP', 'TRN', 'BRI'] and tratta[1] in ['FCO', 'MXP', 'VCE', 'NAP', 'TRN', 'BRI']:  #Tratte da-per aeroporti italiani
        for j in range(3): # Genera 3 voli con orari differenti Italia - Italia
            codice_volo = f"SK{i:04d}" 
            flight = list(tratta)
            flight.insert(0, codice_volo) 
            i += 1
            ora = random.randint(0, 23)
            minuto = random.randint(0, 59)
            orario = f"{ora:02d}:{minuto:02d}"
            flight.append(orario)
            lista_voli.append(tuple(flight))
            j += 1
    elif (tratta[0] in ['FCO', 'MXP', 'VCE', 'NAP', 'TRN', 'BRI'] and tratta[1] in ['CDG', 'LHR', 'AMS', 'FRA', 'BCN', 'VIE', 'CPH', 'OSL', 'ARN', 'DUB', 'ATH']) or (tratta[1] in ['CDG', 'LHR', 'AMS', 'FRA', 'BCN', 'VIE', 'CPH', 'OSL', 'ARN', 'DUB', 'ATH'] and tratta[0] in ['FCO', 'MXP', 'VCE', 'NAP', 'TRN', 'BRI']):  #Tratte Italia - Europa e viceversa
        for j in range(2): #Genera 2 voli con orari differenti Italia - Europa e viceversa
            codice_volo = f"SK{i:04d}" 
            flight = list(tratta)
            flight.insert(0, codice_volo)
            i += 1
            ora = random.randint(0, 23) 
            minuto = random.randint(0, 59)
            orario = f"{ora:02d}:{minuto:02d}"
            flight.append(orario)
            lista_voli.append(tuple(flight))
            j += 1
    else:  # Per tutte le altre tratte
        codice_volo = f"SK{i:04d}"
        flight = list(tratta)
        flight.insert(0, codice_volo)
        i += 1
        ora = random.randint(0, 23)
        minuto = random.randint(0, 59)
        orario = f"{ora:02d}:{minuto:02d}"
        flight.append(orario)
        lista_voli.append(tuple(flight))

with open('flight_list.txt', 'w', encoding='utf-8') as file:
    testo = ',\n'.join(str(tuple(volo)) for volo in lista_voli)
    file.write(testo)

print(f"\nTratte generate e salvate in 'flight_list.txt'.\n")

#da completare manualmente aggiungendo l'orario di arrivo in base alla stima fatta da https://www.tempo-di-volo.it