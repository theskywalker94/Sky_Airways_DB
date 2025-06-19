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
- Facoltativo: interfaccia grafica come pgAdmin

## Istruzioni per l'importazione del dump

### 1. Creare un nuovo database

Apri il terminale PostgreSQL e crea un nuovo database:

```sql
CREATE DATABASE sky_airways;
```

### 2. Collegarsi al nuovo database

Nel terminale:

```bash
psql -U [nome_utente] -d sky_airways
```

Oppure, con interfaccia grafica (es. pgAdmin), seleziona il database appena creato.

### 3. Eseguire il file SQL

Dal terminale (assicurati di essere nella cartella contenente il file `dump_database.sql`):

```bash
psql -U [nome_utente] -d sky_airways -f dump_database.sql
```

Oppure, se stai usando pgAdmin, puoi caricare ed eseguire il file manualmente tramite la funzione "Query Tool".

## Contenuto del Dump

Il file include dati per le seguenti tabelle:

- `Aeroporto` – 10 record
- `Tratta` – 10 record
- `Volo` – 10 record
- `Passeggero` – 20 record
- `Prenotazione` – 20 record
- `Biglietto` – 20 record

## Licenza

Questo dump è a scopo didattico e simulativo. Nessun dato reale è stato utilizzato.
