-- dump_database.sql

-- Aeroporti
INSERT INTO Aeroporto (id_aeroporto, nome, citta, paese, codice_IATA) VALUES
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
(20000, 10000, 10008, '12:39:00'),
(20001, 10001, 10009, '10:50:00'),
(20002, 10002, 10003, '01:25:00'),
(20003, 10004, 10006, '02:20:00'),
(20004, 10004, 10005, '02:31:00'),
(20005, 10000, 10007, '01:33:00'),
(20006, 10008, 10009, '05:36:00'),
(20007, 10006, 10008, '18:01:00'),
(20008, 10002, 10005, '02:57:00'),
(20009, 10009, 10007, '11:17:00');

-- Voli
INSERT INTO Volo (id_volo, id_tratta, data_partenza, ora_partenza, numero_volo, stato) VALUES
(30000, 20002, '2025-08-15', '10:00:00', 'SK1001', 'programmato'),
(30001, 20007, '2025-07-16', '11:00:00', 'SK1002', 'programmato'),
(30002, 20002, '2025-06-07', '12:00:00', 'SK1003', 'completato'),
(30003, 20000, '2025-06-18', '13:00:00', 'SK1004', 'programmato'),
(30004, 20009, '2025-09-19', '14:00:00', 'SK1005', 'cancellato'),
(30005, 20001, '2025-06-20', '15:00:00', 'SK1006', 'completato'),
(30006, 20004, '2025-08-21', '16:00:00', 'SK1007', 'programmato'),
(30007, 20008, '2025-06-22', '17:00:00', 'SK1008', 'cancellato'),
(30008, 20003, '2025-11-23', '18:00:00', 'SK1009', 'programmato'),
(30009, 20005, '2025-12-24', '19:00:00', 'SK1010', 'programmato');

-- Passeggeri
INSERT INTO Passeggero (id_passeggero, nome, cognome, email, telefono, documento_identita) VALUES
(40000, 'Mario', 'Rossi', 'mario.rossi@email.it', '3331234567', 'ID12345'),
(40001, 'Luisa', 'Verdi', 'luisa.verdi@email.it', '3337654321', 'ID12346'),
(40002, 'Paolo', 'Bianchi', 'paolo.bianchi@email.it', '3339876543', 'ID12347'),
(40003, 'Sara', 'Neri', 'sara.neri@email.it', '3336789012', 'ID12348'),
(40004, 'Giovanni', 'Russo', 'giovanni.russo@email.it', '3334567890', 'ID12349'),
(40005, 'Anna', 'Ferrari', 'anna.ferrari@email.it', '3333216549', 'ID12350'),
(40006, 'Stefano', 'Romano', 'stefano.romano@email.it', '3331472589', 'ID12351'),
(40007, 'Laura', 'Conti', 'laura.conti@email.it', '3332581476', 'ID12352'),
(40008, 'Marco', 'De Luca', 'marco.deluca@email.it', '3333692581', 'ID12353'),
(40009, 'Elena', 'Marini', 'elena.marini@email.it', '3337418529', 'ID12354');

-- Prenotazioni
INSERT INTO Prenotazione (id_prenotazione, data_prenotazione, metodo_pagamento, totale_pagato, id_passeggero) VALUES
(50000, '2024-12-30', 'Credit card', 89.99, 'ID12345'),
(50001, '2025-01-12', 'Credit card', 75.80, 'ID12346'),
(50002, '2025-01-03', 'Cash', 97.65, 'ID12347'),
(50003, '2025-02-25', 'Gift card', 62.30, 'ID12348'),
(50004, '2024-11-10', 'Cash', 110.15, 'ID12349'),
(50005, '2024-12-30', 'Credit card', 60.70, 'ID12350'),
(50006, '2024-09-21', 'Credit card', 125.00, 'ID12351'),
(50007, '2025-03-03', 'Credit card', 455.90, 'ID12352'),
(50008, '2025-04-02', 'Gift card', 203.10, 'ID12353'),
(50009, '2024-05-01', 'Credit card', 149.90, 'ID12354');

-- Biglietti
INSERT INTO Biglietto (id_biglietto, id_prenotazione, id_volo, classe, posto, check_in_effettuato, qr_code, stato) VALUES
(60000, 50000, 30000, 'economy', 'E019F', FALSE, 'QR00001', 'valido'),
(60001, 50007, 30001, 'business', 'B003C', TRUE, 'QR00002', 'valido'),
(60002, 50004, 30004, 'business', 'B001A', TRUE, 'QR00003', 'annullato'),
(60003, 50002, 30002, 'economy', 'E019F', TRUE, 'QR00004', 'utilizzato'),
(60004, 50009, 30003, 'economy', 'E017D', TRUE, 'QR00005', 'valido'),
(60005, 50001, 30006, 'business', 'B003C', FALSE, 'QR00006', 'valido'),
(60006, 50008, 30008, 'business', 'B004D', TRUE, 'QR00007', 'valido'),
(60007, 50006, 30005, 'economy', 'E016C', FALSE, 'QR00008', 'utilizzato'),
(60008, 50003, 30009, 'economy', 'E021B', TRUE, 'QR00009', 'valido'),
(60009, 50005, 30007, 'economy', 'E018E', FALSE, 'QR00010', 'annullato');
