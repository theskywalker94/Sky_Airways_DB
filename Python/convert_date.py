#Python per convertire le date nel formato accettato da PostgreSQL: dd/mm/yyyy --> yyyy-mm-dd

import ast
from datetime import datetime

new_real_flights = []
new_ticket_list = []
new_booking_list = []
new_passengers_list = []

with open ('booking_list_FINAL.txt', 'r', encoding='utf-8') as file:
    for riga in file:
        real_flight = []
        riga = riga.strip().rstrip(',')
        if riga:
            tupla = ast.literal_eval(riga)
            real_flight.append(tupla[0])
            real_flight.append(tupla[1])
            # Converto la stringa in un oggetto datetime
            data_obj = datetime.strptime(tupla[2], "%d/%m/%Y")
            # Riformatto nel formato yyyy-mm-dd
            data_convertita = data_obj.strftime("%Y-%m-%d")
            real_flight.append(data_convertita)
            real_flight.append(tupla[3])
            new_booking_list.append(tuple(real_flight))

with open('booking_list_converted_FINAL.txt', 'w', encoding='utf-8') as file:
    testo = ',\n'.join(str(tuple(volo)) for volo in new_booking_list)
    file.write(testo)

with open ('passengers_list_FINAL.txt', 'r', encoding='utf-8') as file:
    for riga in file:
        real_flight = []
        riga = riga.strip().rstrip(',')
        if riga:
            tupla = ast.literal_eval(riga)
            real_flight.append(tupla[0])
            real_flight.append(tupla[1])
            real_flight.append(tupla[2])
            # Converto la stringa in un oggetto datetime
            data_obj = datetime.strptime(tupla[3], "%d/%m/%Y")
            # Riformatto nel formato yyyy-mm-dd
            data_convertita = data_obj.strftime("%Y-%m-%d")
            real_flight.append(data_convertita)
            real_flight.append(tupla[4])
            real_flight.append(tupla[5])
            new_passengers_list.append(tuple(real_flight))

with open('passengers_list_converted_FINAL.txt', 'w', encoding='utf-8') as file:
    testo = ',\n'.join(str(tuple(volo)) for volo in new_passengers_list)
    file.write(testo)

with open ('ticket_list_FINAL.txt', 'r', encoding='utf-8') as file:
    for riga in file:
        real_flight = []
        riga = riga.strip().rstrip(',')
        if riga:
            tupla = ast.literal_eval(riga)
            real_flight.append(tupla[0])
            real_flight.append(tupla[1])
            # Converto la stringa in un oggetto datetime
            data_obj = datetime.strptime(tupla[2], "%d/%m/%Y")
            # Riformatto nel formato yyyy-mm-dd
            data_convertita = data_obj.strftime("%Y-%m-%d")
            real_flight.append(data_convertita)
            real_flight.append(tupla[3])
            real_flight.append(tupla[4])
            real_flight.append(tupla[5])
            real_flight.append(tupla[6])
            real_flight.append(tupla[7])
            real_flight.append(tupla[8])
            new_ticket_list.append(tuple(real_flight))

with open('ticket_list_converted_FINAL.txt', 'w', encoding='utf-8') as file:
    testo = ',\n'.join(str(tuple(volo)) for volo in new_ticket_list)
    file.write(testo)

with open ('real_flights_FINAL.txt', 'r', encoding='utf-8') as file:
    for riga in file:
        real_flight = []
        riga = riga.strip().rstrip(',')
        if riga:
            tupla = ast.literal_eval(riga)
            real_flight.append(tupla[0])
            # Converto la stringa in un oggetto datetime
            data_obj = datetime.strptime(tupla[1], "%d/%m/%Y")
            # Riformatto nel formato yyyy-mm-dd
            data_convertita = data_obj.strftime("%Y-%m-%d")
            real_flight.append(data_convertita)
            # Converto la stringa in un oggetto datetime
            data_obj1 = datetime.strptime(tupla[2], "%d/%m/%Y")
            # Riformatto nel formato yyyy-mm-dd
            data_convertita1 = data_obj1.strftime("%Y-%m-%d")
            real_flight.append(data_convertita1)
            real_flight.append(tupla[3])
            new_real_flights.append(tuple(real_flight))

with open('real_flights_converted_FINAL.txt', 'w', encoding='utf-8') as file:
    testo = ',\n'.join(str(tuple(volo)) for volo in new_real_flights)
    file.write(testo)
