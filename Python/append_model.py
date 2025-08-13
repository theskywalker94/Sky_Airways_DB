#Pyhton semplicissimo per aggiungere modello velivolo in base alla tratta (Europa o intercontinentale)

import ast

flight_list = []
with open('flight_list.txt', 'r', encoding = 'utf-8') as file:
    for riga in file:
        riga = riga.strip().rstrip(',')
        if riga:
            tupla = ast.literal_eval(riga)
            flight = list(tupla)
            if tupla[1] in ['FCO', 'MXP', 'VCE', 'NAP', 'TRN', 'BRI', 'CDG', 'LHR', 'AMS', 'FRA', 'BCN', 'VIE', 'CPH', 'OSL', 'ARN', 'DUB', 'ATH'] and tupla[2] in ['FCO', 'MXP', 'VCE', 'NAP', 'TRN', 'BRI', 'CDG', 'LHR', 'AMS', 'FRA', 'BCN', 'VIE', 'CPH', 'OSL', 'ARN', 'DUB', 'ATH']:
                flight.append('A320neo')
            else:
                flight.append('B787')
            flight_list.append(tuple(flight))

with open('flight_list_FINAL.txt', 'w', encoding = 'utf-8') as file:
    testo = ',\n'.join(str(tuple(volo)) for volo in flight_list)
    file.write(testo)