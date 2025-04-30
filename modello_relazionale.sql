-- modello_relazionale.sql

CREATE TABLE Aeroporto (
  id_aeroporto SERIAL PRIMARY KEY,
  nome VARCHAR(100),
  codice_IATA CHAR(3) UNIQUE,
  città VARCHAR(100),
  nazione VARCHAR(100)
);

CREATE TABLE Tratta (
  id_tratta SERIAL PRIMARY KEY,
  aeroporto_partenza INT REFERENCES Aeroporto(id_aeroporto),
  aeroporto_arrivo INT REFERENCES Aeroporto(id_aeroporto),
  durata_minuti INT,
  distanza_km INT
);

CREATE TABLE Volo (
  id_volo SERIAL PRIMARY KEY,
  numero_volo VARCHAR(20),
  id_tratta INT REFERENCES Tratta(id_tratta),
  data_partenza DATE,
  ora_partenza TIME,
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
  id_passeggero INT REFERENCES Passeggero(id_passeggero),
  id_volo INT REFERENCES Volo(id_volo),
  data_prenotazione DATE,
  stato VARCHAR(50)
);

CREATE TABLE Biglietto (
  id_biglietto SERIAL PRIMARY KEY,
  id_prenotazione INT REFERENCES Prenotazione(id_prenotazione),
  id_volo INT REFERENCES Volo(id_volo),
  prezzo DECIMAL(8,2),
  stato VARCHAR(50),
  qr_code VARCHAR(100)
);