# Sky Airways - Introduzione

Il presente project work ha come obiettivo la progettazione di un sistema di persistenza dei dati a supporto dei servizi di una compagnia aerea simulata, denominata Sky Airways. Il lavoro nasce dall’esigenza di gestire in modo efficiente e coerente il processo di vendita dei biglietti, considerando le complessità tipiche del trasporto aereo, come voli con scali, prenotazioni multiple e gestione dei passeggeri.

Il progetto si articola in diverse fasi: analisi del contesto normativo e operativo del settore, modellazione concettuale tramite diagramma entità-relazione (ER), traduzione in modello relazionale, normalizzazione fino alla Terza Forma Normale, definizione di indici per l’ottimizzazione delle query e implementazione di interrogazioni SQL rappresentative. È stato scelto il DBMS PostgreSQL per la sua affidabilità, compatibilità e diffusione in ambito professionale.

Il sistema risultante è scalabile, normalizzato e adatto all’integrazione con altri strumenti informativi aziendali. L’elaborato è stato completato con la realizzazione di un dump SQL con dati realistici e la pubblicazione del progetto su GitHub.

Il lavoro fornisce un’applicazione concreta delle competenze acquisite nel percorso accademico e rappresenta una solida base per l’implementazione di sistemi informativi nel settore dei trasporti.

# Sky Airways – Esempio di Dump Database PostgreSQL

Questo progetto contiene un file SQL (`dump_database.sql`) con i dati di esempio relativi alla gestione del sistema di prenotazione voli per una compagnia aerea.

## Requisiti

- PostgreSQL installato (versione 12 o superiore consigliata)
- Utente con permessi di creazione database e tabelle
- Interfaccia grafica pgAdmin 4

## Istruzioni per l'importazione del dump

### 1. Creare un nuovo database

Apri l'interfaccia pgAdmin 4, seleziona Query Tool Workspace nel menu sulla sinistra e collegati al server default selezionando il database "postgres":

![1st step](https://github.com/user-attachments/assets/83178586-9b7e-42fd-87e9-5564082697a0)

Nella sezione Query, digita l'istruzione:

```sql
CREATE DATABASE sky_airways
```

quindi clicca su "Execute Script" (o digita F5):

![2nd step](https://github.com/user-attachments/assets/6ac3cb3a-8d8f-4e09-b749-ecd875031f3d)


### 2. Collegarsi al nuovo database

Ritorna nella schermata principale del Query Tool Workspace, tuttavia questa volta seleziona il nuovo database "sky_airways":

![3rd step](https://github.com/user-attachments/assets/2e0986c4-e774-4b5f-81ce-199b808e2e1d)


### 3. Creazione di tabelle

Copia il contenuto del file `modello_relazionale.sql` e incollalo nella sezione Query, quindi clicca su "Execute Script" (o digita F5):

![4th step](https://github.com/user-attachments/assets/2868f419-fd96-4f2d-a21c-be41b5bc25bd)


### 4. Popolare il database

Copia il contenuto del file `dump_database.sql` e incollalo nella sezione Query, quindi clicca su "Execute Script" (o digita F5):

![5th step](https://github.com/user-attachments/assets/70d95dea-8ca7-46f2-adf2-2172a845ad65)


## Contenuto del Dump

Il file include dati per le seguenti tabelle:

- `Aeroporto` – 10 record
- `Tratta` – 10 record
- `Volo` – 10 record
- `Passeggero` – 20 record
- `Prenotazione` – 20 record
- `Biglietto` – 20 record


## Query d'esempio

Per eseguire le query d'esempio, copia il contenuto del file `query_esempio.sql` (considerando una singola query per volta) e incollalo nella sezione Query, quindi clicca su "Execute Script" (o digita F5).

### Esempio n.1

![example_1](https://github.com/user-attachments/assets/ce2912e9-5b44-48a3-9ec0-1bc1501fc3b6)


### Esempio n.2

![example_2](https://github.com/user-attachments/assets/c22efbe1-df5a-46ca-bc5d-6b67c276c79a)


### Esempio n.3

![example_3](https://github.com/user-attachments/assets/6aeeae06-03e4-4a01-8152-ca6be49ec2ed)


### Esempio n.4

![example_4](https://github.com/user-attachments/assets/7e964a30-d714-4c43-b087-99f57dafe61a)


### Esempio n.5

![example_5](https://github.com/user-attachments/assets/3b5913d3-70cf-4314-9059-b6b217df9b90)


## Licenza

Questo dump è a scopo didattico e simulativo. Nessun dato reale è stato utilizzato.
