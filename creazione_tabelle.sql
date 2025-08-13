-- Creazione delle Tabelle nel Database
-- esportato da dbdiagram.io, poi corretti i CHECK e le COMPOSITE KEY perchè non ancora supportate da dbdiagram.io

CREATE TABLE Volo (
  id_volo varchar(6) PRIMARY KEY NOT NULL,
  partenza char(3) NOT NULL,
  destinazione char(3) NOT NULL,
  ora_partenza time NOT NULL,
  ora_arrivo time NOT NULL,
  modello varchar(7) NOT NULL CHECK (modello IN ('B787', 'A320neo'))
);

CREATE TABLE Volo_reale (
  id_volo varchar(6) NOT NULL,
  data_partenza date NOT NULL,
  data_arrivo date NOT NULL,
  stato varchar(11) NOT NULL CHECK (stato IN ('programmato', 'cancellato', 'completato')),
  PRIMARY KEY (id_volo, data_partenza)
);

CREATE TABLE Biglietto (
  id_biglietto varchar(10) PRIMARY KEY NOT NULL,
  id_volo varchar(6) NOT NULL,
  data_partenza date NOT NULL,
  posto varchar(4) NOT NULL,
  classe varchar(8) NOT NULL CHECK (classe IN('business', 'economy')),
  id_passeggero varchar(10) NOT NULL,
  id_prenotazione varchar(11) NOT NULL,
  prezzo decimal NOT NULL,
  validità varchar(10) NOT NULL CHECK (validità IN ('valido', 'annullato', 'utilizzato'))
);

CREATE TABLE Prenotazione (
  id_prenotazione varchar(11) PRIMARY KEY NOT NULL,
  id_passeggero varchar(10) NOT NULL,
  data_prenotazione date NOT NULL,
  metodo_pagamento varchar(11) CHECK (metodo_pagamento IN ('credit card', 'cash', 'gift card'))
);

CREATE TABLE Passeggero (
  id_passeggero varchar(10) PRIMARY KEY NOT NULL,
  nome varchar(100) NOT NULL,
  cognome varchar(100) NOT NULL,
  data_nascita date NOT NULL,
  email varchar(200) UNIQUE NOT NULL,
  telefono varchar(50)
);

-- ho fatto diversi test tramite EXPLAIN SELECT ... e questi sono a mio avviso gli indici migliori e più utilizzati

CREATE INDEX idx_volo_partenza ON Volo (partenza);

CREATE INDEX idx_volo_arrivo ON Volo (destinazione);

CREATE INDEX idx_volo_ora_partenza ON Volo (ora_partenza);

CREATE INDEX idx_volo_ora_arrivo ON Volo (ora_arrivo);

CREATE INDEX idx_volo_reale_partenza ON Volo_reale (id_volo, data_partenza);

CREATE INDEX idx_ticket_partenza ON Biglietto (id_volo, data_partenza);

CREATE INDEX idx_buyer ON Prenotazione (id_passeggero, data_prenotazione);

CREATE INDEX idx_email ON Passeggero (email);

ALTER TABLE Volo_reale ADD CONSTRAINT Occorrenza FOREIGN KEY (id_volo) REFERENCES Volo (id_volo);

ALTER TABLE Biglietto ADD CONSTRAINT Prenota FOREIGN KEY (id_volo, data_partenza) REFERENCES Volo_reale (id_volo, data_partenza);

ALTER TABLE Biglietto ADD CONSTRAINT Possiede FOREIGN KEY (id_passeggero) REFERENCES Passeggero (id_passeggero);

ALTER TABLE Biglietto ADD CONSTRAINT "Include" FOREIGN KEY (id_prenotazione) REFERENCES Prenotazione (id_prenotazione);

ALTER TABLE Prenotazione ADD CONSTRAINT Effettua FOREIGN KEY (id_passeggero) REFERENCES Passeggero (id_passeggero);
