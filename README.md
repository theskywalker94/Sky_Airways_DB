
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
- `Passeggero` – 10 record
- `Prenotazione` – 10 record
- `Biglietto` – 10 record

## Licenza

Questo dump è a scopo didattico e simulativo. Nessun dato reale è stato utilizzato.
