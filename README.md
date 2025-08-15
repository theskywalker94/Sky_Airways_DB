# Sky Airways - Introduzione

Il presente project work ha come obiettivo la progettazione di un sistema di persistenza dei dati a supporto dei servizi di una compagnia aerea simulata, denominata Sky Airways. Il lavoro nasce dall’esigenza di gestire in modo efficiente e coerente il processo di vendita dei biglietti, considerando le complessità tipiche del trasporto aereo, come voli con scali, prenotazioni multiple e gestione dei passeggeri.

Il progetto si articola in diverse fasi: analisi del contesto normativo e operativo del settore, modellazione concettuale tramite diagramma entità-relazione (ER), traduzione in modello relazionale, normalizzazione fino alla Terza Forma Normale, definizione di indici per l’ottimizzazione delle query e implementazione di interrogazioni SQL rappresentative. È stato scelto il DBMS PostgreSQL per la sua affidabilità, compatibilità e diffusione in ambito professionale.

Il sistema risultante è scalabile, normalizzato e adatto all’integrazione con altri strumenti informativi aziendali. L’elaborato è stato completato con la realizzazione di un dump SQL con dati realistici e la pubblicazione del progetto su GitHub.

Il lavoro fornisce un’applicazione concreta delle competenze acquisite nel percorso accademico e rappresenta una solida base per l’implementazione di sistemi informativi nel settore dei trasporti.

# Sky Airways – Esempio di Dump Database PostgreSQL

Questo progetto contiene diversi file SQL con i dati di esempio relativi alla gestione del sistema di prenotazione voli per una compagnia aerea.

## Requisiti

- PostgreSQL installato (versione 12 o superiore consigliata)
- Utente con permessi di creazione database e tabelle
- Interfaccia grafica pgAdmin 4

## Istruzioni per l'importazione del dump

### 1. Creare un nuovo database

Aprire l'interfaccia pgAdmin 4, selezionare Query Tool Workspace nel menu sulla sinistra e collegarsi al server default selezionando il database "postgres":

![1st step](https://github.com/user-attachments/assets/83178586-9b7e-42fd-87e9-5564082697a0)

Nella sezione Query, digitare l'istruzione:

```sql
CREATE DATABASE sky_airways
```

quindi cliccare su "Execute Script" (o digitare F5):

![2nd step](https://github.com/user-attachments/assets/6ac3cb3a-8d8f-4e09-b749-ecd875031f3d)


### 2. Collegarsi al nuovo database

Ritornare nella schermata principale del Query Tool Workspace e selezionare il nuovo database "sky_airways":

![3rd step](https://github.com/user-attachments/assets/2e0986c4-e774-4b5f-81ce-199b808e2e1d)


### 3. Creazione di tabelle, definizione di indici e vincoli

Aprire il file `creazione_tabelle.sql` tramite pulsante "Open File" oppure copiarne il contenuto e incollarlo nella sezione Query, quindi cliccare su "Execute Script" (o digitare F5):

<img width="1780" height="1800" alt="image" src="https://github.com/user-attachments/assets/c085247f-02d1-4fe9-b119-b09bdef67670" />


### 4. Popolare il database

Scaricare il file `inserimento_valori.sql` tramite il link OneDrive condiviso: https://1drv.ms/u/c/4a2c65f17f79a5a2/ESR1E8UZPmBCuKjlol_8zHEBDoAU_PJUe3_Gh6BmG8wWgw?e=H2Qeby. Una volta completato il download, aprire il file `inserimento_valori.sql` tramite pulsante "Open File" in pgAdmin 4, quindi cliccare su "Execute Script" (o digitare F5):

![5th step](https://github.com/user-attachments/assets/70d95dea-8ca7-46f2-adf2-2172a845ad65)


## Contenuto del Dump

Il file include dati per le seguenti tabelle:

- `Volo` – 726 record
- `Volo_reale` – 34.848 record
- `Passeggero` – 250.000 record
- `Prenotazione` – 525.017 record
- `Biglietto` – 1.051.556 record


## Query d'esempio

Per eseguire le query d'esempio, è possibile aprire i singoli file .sql tramite pulsante "Open File" oppure copiare il loro contenuto (considerando una singola query per volta) e incollarlo nella sezione Query, quindi cliccare su "Execute Script" (o digita F5).

### Esempio n.1

![example_1](https://github.com/user-attachments/assets/ce2912e9-5b44-48a3-9ec0-1bc1501fc3b6)


### Esempio n.2

![example_2](https://github.com/user-attachments/assets/c343ece4-bf7e-4ff5-b023-cbd1af862381)


### Esempio n.3

![example_3](https://github.com/user-attachments/assets/6aeeae06-03e4-4a01-8152-ca6be49ec2ed)


### Esempio n.4

![example_4](https://github.com/user-attachments/assets/7e964a30-d714-4c43-b087-99f57dafe61a)


### Esempio n.5

![example_5](https://github.com/user-attachments/assets/3b5913d3-70cf-4314-9059-b6b217df9b90)


## Licenza

Questo dump è a scopo didattico e simulativo.
