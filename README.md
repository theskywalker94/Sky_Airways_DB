# Sky Airways – Introduzione al database in PostgreSQL

In questo Project Work è stato analizzato e progettato un database relazionale per una compagnia aerea fittizia denominata "Sky Airways". Il DBMS scelto per le finalità del progetto è PostgreSQL e nella sezione successiva sarà spiegato passo dopo passo come creare un nuovo database e popolarlo in base ai file .sql presenti in questa repository.

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

<img width="1840" height="1800" alt="image" src="https://github.com/user-attachments/assets/49c32f70-7210-4724-a816-49158fcb7c26" />


## Contenuto del Dump

Il file include dati per le seguenti tabelle:

- `Volo` – 726 record
- `Volo_reale` – 34.848 record
- `Passeggero` – 250.000 record
- `Prenotazione` – 525.017 record
- `Biglietto` – 1.051.556 record


## Query d'esempio

Per eseguire le query d'esempio, è possibile aprire i singoli file .sql tramite pulsante "Open File" oppure copiare il loro contenuto e incollarlo nella sezione Query, quindi cliccare su "Execute Script" (o digita F5).

### Esempio n.1

<img width="2880" height="1800" alt="image" src="https://github.com/user-attachments/assets/c41840bc-768b-42b5-8b74-f3345a4af8ab" />


### Esempio n.2

<img width="2880" height="1800" alt="image" src="https://github.com/user-attachments/assets/80485209-70a2-41a1-9d83-c35e88576bfb" />


### Esempio n.3

<img width="2880" height="1800" alt="image" src="https://github.com/user-attachments/assets/cbf84e09-baa6-474c-b0b4-2419c206fef2" />


### Esempio n.4

<img width="2880" height="1800" alt="image" src="https://github.com/user-attachments/assets/ece761e7-881a-410a-ba22-3fbc3b4d10e0" />


### Esempio n.5

<img width="2880" height="1800" alt="image" src="https://github.com/user-attachments/assets/686a733e-67f1-47f4-9c8b-851756d4f6f8" />


## Licenza

Questo dump è a scopo didattico e simulativo. Ogni riferimento a persone esistenti è puramente casuale.
