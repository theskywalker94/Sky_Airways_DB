-- dump_database.sql

-- Aeroporti
INSERT INTO Aeroporto (id_aeroporto, nome, città, paese, codice_IATA) VALUES
(10000, 'Milano Malpensa', 'Milano', 'Italy', 'MXP'),
(10001, 'Roma Fiumicino', 'Roma', 'Italy', 'FCO'),
(10002, 'Bari Karol Wojtyla', 'Bari', 'Italy', 'BRI'),
(10003, 'Venezia Marco Polo', 'Venezia', 'Italy', 'VCE'),
(10004, 'Napoli Capodichino', 'Napoli', 'Italy', 'NAP'),
(10005, 'London Heathrow', 'London', 'United Kingdom', 'LHR'),
(10006, 'Paris Charles de Gaulle', 'Paris', 'France', 'CDG'),
(10007, 'Berlin Brandenburg', 'Berlin', 'Germany', 'BER'),
(10008, 'Tokyo Haneda', 'Tokyo', 'Japan', 'HND'),
(10009, 'Bangkok Suvarnabuhmi', 'Bangkok', 'Thailand', 'BKK');

-- Tratte
INSERT INTO Tratta (id_tratta, aeroporto_partenza, aeroporto_arrivo, durata_minuti) VALUES
(20000, 10000, 10008, 12:39:00),
(20001, 10001, 10009, 10:50:00),
(20002, 10002, 10003, 01:25:00),
(20003, 10004, 10006, 02:20:00),
(20004, 10004, 10005, 02:31:00),
(20005, 10000, 10007, 01:33:00),
(20006, 10008, 10009, 05:36:00),
(20007, 10006, 10008, 18:01:00),
(20008, 10002, 10005, 02:57:00),
(20009, 10009, 10007, 11:17:00);

-- Voli
INSERT INTO Volo (id_volo, id_tratta, data_partenza, ora_partenza, numero_volo, stato) VALUES
('AZ101', 1, '2025-06-15', '10:00:00', 'programmato'),
('AZ102', 2, '2025-06-16', '11:00:00', 'programmato'),
('AZ103', 3, '2025-06-17', '12:00:00', 'completato'),
('AZ104', 4, '2025-06-18', '13:00:00', 'cancellato'),
('AZ105', 5, '2025-06-19', '14:00:00', 'programmato'),
('AZ106', 6, '2025-06-20', '15:00:00', 'completato'),
('AZ107', 7, '2025-06-21', '16:00:00', 'programmato'),
('AZ108', 8, '2025-06-22', '17:00:00', 'cancellato'),
('AZ109', 9, '2025-06-23', '18:00:00', 'programmato'),
('AZ110', 10, '2025-06-24', '19:00:00', 'programmato');

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
