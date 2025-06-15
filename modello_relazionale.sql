-- modello_relazionale.sql

CREATE TABLE Aeroporto (
  id_aeroporto SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  citta VARCHAR(100) NOT NULL,
  paese VARCHAR(100) NOT NULL,
  codice_IATA CHAR(3) UNIQUE NOT NULL
);

CREATE TABLE Tratta (
  id_tratta SERIAL PRIMARY KEY,
  aeroporto_partenza INT REFERENCES Aeroporto(id_aeroporto),
  aeroporto_arrivo INT REFERENCES Aeroporto(id_aeroporto),
  durata_minuti INT NOT NULL -- correggere tipo
);

CREATE TABLE Volo (
  id_volo SERIAL PRIMARY KEY,
  id_tratta INT REFERENCES Tratta(id_tratta),
  data_partenza DATE NOT NULL,
  ora_partenza TIME NOT NULL,
  numero_volo VARCHAR(10) NOT NULL,
  stato VARCHAR(50) CHECK (stato IN ('programmato', 'cancellato', 'completato'))
);

CREATE TABLE Passeggero (
  id_passeggero SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  cognome VARCHAR(100) NOT NULL,
  email VARCHAR(150) NOT NULL,
  telefono VARCHAR(20),
  documento_identita VARCHAR(50) NOT NULL
);

CREATE TABLE Prenotazione (
  id_prenotazione SERIAL PRIMARY KEY,
  data_prenotazione DATE NOT NULL,
  metodo_pagamento VARCHAR(50) NOT NULL,
  totale_pagato DECIMAL(10,2) NOT NULL,
  id_passeggero INT REFERENCES Passeggero(id_passeggero)
);

CREATE TABLE Biglietto (
  id_biglietto SERIAL PRIMARY KEY,
  id_prenotazione INT REFERENCES Prenotazione(id_prenotazione),
  id_volo INT REFERENCES Volo(id_volo),
  classe VARCHAR(20) CHECK (classe IN ('economy', 'business')),
  posto VARCHAR(5) NOT NULL,
  check_in_effettuato BOOLEAN DEFAULT FALSE,
  qr_code TEXT UNIQUE, -- oppure VARCHAR?
  stato VARCHAR(20) CHECK (stato IN ('valido', 'annullato', 'utilizzato'))
);
