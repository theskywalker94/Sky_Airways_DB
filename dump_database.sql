-- dump_database.sql

-- Aeroporti
INSERT INTO Aeroporto (nome, codice_IATA, città, nazione) VALUES
('Milano Malpensa', 'MXP', 'Milano', 'Italia'),
('Roma Fiumicino', 'FCO', 'Roma', 'Italia'),
('Venezia Marco Polo', 'VCE', 'Venezia', 'Italia'),
('Napoli Capodichino', 'NAP', 'Napoli', 'Italia'),
('Palermo Punta Raisi', 'PMO', 'Palermo', 'Italia'),
('Bologna Guglielmo Marconi', 'BLQ', 'Bologna', 'Italia'),
('Catania Fontanarossa', 'CTA', 'Catania', 'Italia'),
('Torino Caselle', 'TRN', 'Torino', 'Italia'),
('Lamezia Terme', 'SUF', 'Lamezia Terme', 'Italia'),
('Bari Karol Wojtyla', 'BRI', 'Bari', 'Italia');

-- Tratte
INSERT INTO Tratta (aeroporto_partenza, aeroporto_arrivo, durata_minuti, distanza_km) VALUES
(1, 2, 75, 570),
(2, 3, 60, 410),
(3, 4, 90, 660),
(4, 5, 70, 490),
(5, 6, 80, 510),
(6, 7, 85, 520),
(7, 8, 75, 470),
(8, 9, 65, 430),
(9, 10, 95, 620),
(10, 1, 100, 700);

-- Voli
INSERT INTO Volo (numero_volo, id_tratta, data_partenza, ora_partenza, stato) VALUES
('AZ101', 1, '2025-06-15', '10:00:00', 'Attivo'),
('AZ102', 2, '2025-06-16', '11:00:00', 'Attivo'),
('AZ103', 3, '2025-06-17', '12:00:00', 'Attivo'),
('AZ104', 4, '2025-06-18', '13:00:00', 'Attivo'),
('AZ105', 5, '2025-06-19', '14:00:00', 'Attivo'),
('AZ106', 6, '2025-06-20', '15:00:00', 'Attivo'),
('AZ107', 7, '2025-06-21', '16:00:00', 'Attivo'),
('AZ108', 8, '2025-06-22', '17:00:00', 'Attivo'),
('AZ109', 9, '2025-06-23', '18:00:00', 'Attivo'),
('AZ110', 10, '2025-06-24', '19:00:00', 'Attivo');

-- Passeggeri
INSERT INTO Passeggero (nome, cognome, email, telefono, documento_identita) VALUES
('Mario', 'Rossi', 'mario.rossi@email.it', '3331234567', 'ID12345'),
('Luisa', 'Verdi', 'luisa.verdi@email.it', '3337654321', 'ID12346'),
('Paolo', 'Bianchi', 'paolo.bianchi@email.it', '3339876543', 'ID12347'),
('Sara', 'Neri', 'sara.neri@email.it', '3336789012', 'ID12348'),
('Giovanni', 'Russo', 'giovanni.russo@email.it', '3334567890', 'ID12349'),
('Anna', 'Ferrari', 'anna.ferrari@email.it', '3333216549', 'ID12350'),
('Stefano', 'Romano', 'stefano.romano@email.it', '3331472589', 'ID12351'),
('Laura', 'Conti', 'laura.conti@email.it', '3332581476', 'ID12352'),
('Marco', 'De Luca', 'marco.deluca@email.it', '3333692581', 'ID12353'),
('Elena', 'Marini', 'elena.marini@email.it', '3337418529', 'ID12354');

-- Prenotazioni
INSERT INTO Prenotazione (id_passeggero, id_volo, data_prenotazione, stato) VALUES
(1, 1, '2025-05-01', 'Confermata'),
(2, 2, '2025-05-02', 'Confermata'),
(3, 3, '2025-05-03', 'Confermata'),
(4, 4, '2025-05-04', 'Confermata'),
(5, 5, '2025-05-05', 'Confermata'),
(6, 6, '2025-05-06', 'Confermata'),
(7, 7, '2025-05-07', 'Confermata'),
(8, 8, '2025-05-08', 'Confermata'),
(9, 9, '2025-05-09', 'Confermata'),
(10, 10, '2025-05-10', 'Confermata');

-- Biglietti
INSERT INTO Biglietto (id_prenotazione, id_volo, prezzo, stato, qr_code) VALUES
(1, 1, 89.99, 'Valido', 'QR00001'),
(2, 2, 79.99, 'Valido', 'QR00002'),
(3, 3, 99.99, 'Valido', 'QR00003'),
(4, 4, 69.99, 'Valido', 'QR00004'),
(5, 5, 109.99, 'Valido', 'QR00005'),
(6, 6, 59.99, 'Valido', 'QR00006'),
(7, 7, 119.99, 'Valido', 'QR00007'),
(8, 8, 129.99, 'Valido', 'QR00008'),
(9, 9, 139.99, 'Valido', 'QR00009'),
(10, 10, 149.99, 'Valido', 'QR00010');