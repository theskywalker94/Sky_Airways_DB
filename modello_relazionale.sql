-- modello_relazionale.sql

CREATE TABLE Aeroporto (
  id_aeroporto SERIAL PRIMARY KEY,
  nome VARCHAR(100),
  citta VARCHAR(100),
  paese VARCHAR(100),
  codice_IATA CHAR(3) UNIQUE
);

CREATE TABLE Tratta (
  id_tratta SERIAL PRIMARY KEY,
  aeroporto_partenza INT REFERENCES Aeroporto(id_aeroporto),
  aeroporto_arrivo INT REFERENCES Aeroporto(id_aeroporto),
  durata_minuti INT -- correggere tipo
);

CREATE TABLE Volo (
  id_volo SERIAL PRIMARY KEY,
  id_tratta INT REFERENCES Tratta(id_tratta),
  data_partenza DATE,
  ora_partenza TIME,
  numero_volo VARCHAR(10),
  stato VARCHAR(50)
);

CREATE TABLE Passeggero (
  id_passeggero SERIAL PRIMARY KEY,
  nome VARCHAR(100),
  cognome VARCHAR(100),
  email VARCHAR(150),
  telefono VARCHAR(20),
  documento_identita VARCHAR(50)
);

CREATE TABLE Prenotazione (
  id_prenotazione SERIAL PRIMARY KEY,
  data_prenotazione DATE,
  metodo_pagamento VARCHAR(50),
  totale_pagato DECIMAL(10,2),
  id_passeggero INT REFERENCES Passeggero(id_passeggero)
);

CREATE TABLE Biglietto (
  id_biglietto SERIAL PRIMARY KEY,
  id_prenotazione INT REFERENCES Prenotazione(id_prenotazione),
  id_volo INT REFERENCES Volo(id_volo),
  classe VARCHAR(20),
  posto VARCHAR(5),
  check_in_effettuato BOOLEAN,
  qr_code TEXT, -- oppure VARCHAR?
  stato VARCHAR(20)
);
