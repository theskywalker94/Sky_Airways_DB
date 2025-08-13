import ast
import random
import numpy as np

flight_list = []
passengers_list = []
ticket_list = []
times = [1, 2, 3, 4, 5]
prob = [0.07, 0.8, 0.1, 0.02, 0.01]
classe = ['business', 'economy']
prob_classe = [0.2, 0.8]
lettere = ['F', 'A', 'B', 'C', 'D', 'E']
payment = ['credit card', 'cash', 'gift card']
prob_payment = [0.8, 0.1, 0.1]
count = []
max_passengers = 150
booking_list = []
random.seed(4)

with open ('real_flights.txt', 'r', encoding='utf-8') as file:
    for riga in file:
        riga = riga.strip().rstrip(',')
        if riga:
            tupla = ast.literal_eval(riga)
            #tupl = list(tupla)
            #tupl.append('0')
            flight_list.append(tupla)

print(f"\nLista dei {len(flight_list)} voli acquisita.\n")

c = np.empty([len(flight_list)])
c.fill(0)

#for c in range(len(flight_list)):
#    count.append('0')
#    c += 1

with open ('passengers_list.txt', 'r', encoding='utf-8') as filee:
    for rigaa in filee:
        rigaa = rigaa.strip().rstrip(',')
        if rigaa:
            tuplaa = ast.literal_eval(rigaa)
            passengers_list.append(tuplaa)

print(f"Lista dei {len(passengers_list)} passeggeri acquisita.\n")

i = 0 #contatore ID biglietti
pnr = 0 #contatore ID prenotazione, uno o più biglietti acquistati insieme per lo stesso volo hanno lo stesso numero di prenotazione
for passenger in passengers_list:
    how_many_bookings = int(np.random.choice(times, p=prob))
    for j in range(how_many_bookings):
        k = 0 #randomizza l'inclusione di ulteriori ticket a nome di altri passeggeri nella stessa prenotazione del primo passeggero
        #ticket_ID = f"TK{i+1:08d}"
        ticket = []
        booking = []
        pop = random.randint(0, len(flight_list)-1)
        first = True
        pnr = pnr + 1
        while k == 0:
            if int(c[pop]) <= max_passengers:
                c[pop] = str(int(c[pop]) + 1)
                posto = int(c[pop]) % 6
                ticket.append(f"TK{i+1:08d}")
                ticket.append(flight_list[pop][0])
                ticket.append(flight_list[pop][1])
                ticket.append(f"{int(c[pop])}{lettere[posto]}")
                ticket.append(str(np.random.choice(classe, p=prob_classe)))
                if first == True:
                    ticket.append(passenger[0])
                else:
                    ticket.append(passengers_list[random.randint(0, len(passengers_list)-1)][0])
                ticket.append(f"PNR{pnr+1:08d}")
                ticket.append(random.randrange(20, 200))
                if flight_list[pop][3] == 'programmato':
                    ticket.append('valido')
                elif flight_list[pop][3] == 'cancellato':
                    ticket.append('annullato')
                else:
                    ticket.append('utilizzato')
                ticket_list.append(tuple(ticket))
                ticket = []
                if first == True:
                    booking.append(f"PNR{pnr:08d}")
                    booking.append(passenger[0])
                    booking.append(f"{random.randint(1,28)}/{random.randint(1,12)}/2024")
                    booking.append(str(np.random.choice(payment, p = prob_payment)))
                    booking_list.append(tuple(booking))
            i += 1
            k = random.randint(0, 1)
            first = False
        j += 1
    print(i) #da cancellare, mi serve capire a che punto è il processo, max passengers = 99999

with open('ticket_list.txt', 'w', encoding='utf-8') as fileee:
    testo = ',\n'.join(str(tuple(biglietto)) for biglietto in ticket_list)
    fileee.write(testo)
print(f"Lista dei {len(ticket_list)} biglietti creata.\n")

with open('booking_list.txt', 'w', encoding='utf-8') as fileeee:
    testo = ',\n'.join(str(tuple(prenotazione)) for prenotazione in booking_list)
    fileeee.write(testo)
print(f"Lista delle {len(booking_list)} prenotazioni creata.\n")
