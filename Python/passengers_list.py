#Python semplice per creare lista passeggeri casuale
#Ho installato modulo Faker tramite linea di comando --> pip install Faker

import random
from faker import Faker

# Inizializzo Faker e set lingua
fake = Faker(['it_IT', 'en_US', 'fr_FR', 'es_ES', 'de_DE'])
Faker.seed(2)

random.seed(4)
tuples = []
max_people = 250001

for i in range(1, max_people, 1):
    id_passenger = f"ID{i:08d}"
    first_name = fake.first_name()
    last_name = fake.last_name()
    email = fake.unique.ascii_email()
    phone_number = fake.unique.phone_number()
    birthday = fake.date(pattern = '%d/%m/%Y')
    tuples.append(f"('{id_passenger}', '{first_name}', '{last_name}', '{birthday}', '{email}', '{phone_number}'),")
    print(i) #mi serve per capire quando finisce la generazione del file.txt, su Macbook Air M1 2020 ci ha impiegato circa 30 minuti...
    with open("passengers_list.txt", "w", encoding="utf-8") as f:
        f.write('\n'.join(tuples))

print("File 'passengers_list.txt' generato con successo!")
