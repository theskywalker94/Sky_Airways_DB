-- modello_relazionale.sql

CREATE TABLE Aeroporto (
  id_aeroporto CHAR(3) PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  citta VARCHAR(100) NOT NULL,
  paese VARCHAR(100) NOT NULL
);

CREATE TABLE Tratta (
  id_tratta SERIAL PRIMARY KEY,
  aeroporto_partenza CHAR(3) REFERENCES Aeroporto(id_aeroporto),
  aeroporto_arrivo CHAR(3) REFERENCES Aeroporto(id_aeroporto),
);

CREATE TABLE Volo (
  id_volo VARCHAR(6) PRIMARY KEY,
  aeroporto_partenza CHAR(3) REFERENCES Aeroporto(id_aeroporto),
  aeroporto_arrivo CHAR(3) REFERENCES Aeroporto(id_aeroporto),
  data_partenza DATE NOT NULL,
  ora_partenza TIME NOT NULL,
  data_arrivo DATE NOT NULL,
  ora_arrivo TIME NOT NULL,
  stato VARCHAR(50) CHECK (stato IN ('programmato', 'cancellato', 'completato')),
  modello VARCHAR(10) CHECK (modello IN ('B787', 'A320neo'))
);

CREATE TABLE Passeggero (
  id_passeggero VARCHAR(6) PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  cognome VARCHAR(100) NOT NULL,
  email VARCHAR(150) NOT NULL,
  telefono VARCHAR(50)
);

CREATE TABLE Prenotazione (
  id_prenotazione SERIAL PRIMARY KEY,
  data_prenotazione DATE NOT NULL,
  metodo_pagamento VARCHAR(50) NOT NULL,
  id_passeggero VARCHAR(6) REFERENCES Passeggero(id_passeggero)
);

CREATE TABLE Biglietto (
  id_biglietto SERIAL PRIMARY KEY,
  id_prenotazione INT REFERENCES Prenotazione(id_prenotazione),
  id_volo VARCHAR(6) REFERENCES Volo(id_volo),
  classe VARCHAR(20) CHECK (classe IN ('economy', 'business')),
  posto VARCHAR(5) NOT NULL,
  check_in_effettuato BOOLEAN DEFAULT FALSE,
  prezzo DECIMAL (10,2) NOT NULL,
  qr_code VARCHAR(20) UNIQUE NOT NULL,
  stato VARCHAR(20) CHECK (stato IN ('valido', 'annullato', 'utilizzato'))
);
