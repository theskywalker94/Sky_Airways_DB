-- dump_database.sql

-- Aeroporti
INSERT INTO Aeroporto (id_aeroporto, nome, citta, paese) VALUES
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
INSERT INTO Tratta (id_tratta, aeroporto_partenza, aeroporto_arrivo) VALUES
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
INSERT INTO Volo (id_volo, id_tratta, data_partenza, ora_partenza, numero_volo, stato, modello) VALUES
(30000, 20002, '2025-08-15', '10:00:00', 'SK1001', 'programmato', 'A320neo'),
(30001, 20007, '2025-07-16', '11:00:00', 'SK1002', 'programmato', 'B787'),
(30002, 20002, '2025-06-07', '12:00:00', 'SK1003', 'completato', 'A320neo'),
(30003, 20000, '2025-12-24', '13:00:00', 'SK1004', 'programmato', 'B787'),
(30004, 20009, '2025-09-19', '14:00:00', 'SK1005', 'cancellato', 'B787'),
(30005, 20001, '2025-06-20', '15:00:00', 'SK1006', 'completato', 'A320neo'),
(30006, 20004, '2025-08-21', '16:00:00', 'SK1007', 'programmato', 'A320neo'),
(30007, 20008, '2025-06-22', '17:00:00', 'SK1008', 'cancellato', 'A320neo'),
(30008, 20003, '2025-11-23', '18:00:00', 'SK1009', 'programmato', 'A320neo'),
(30009, 20005, '2025-12-24', '19:00:00', 'SK1010', 'programmato', 'A320neo');

-- Passeggeri
INSERT INTO Passeggero (id_passeggero, nome, cognome, email, telefono, documento_identita) VALUES
(40000, 'Mario', 'Rossi', 'mario.rossi@email.it', '3331234567', 'ID12345'),
(40001, 'Luisa', 'Verdi', 'luisa.verdi@email.it', '3317654321', 'ID12346'),
(40002, 'Paolo', 'Bianchi', 'paolo.bianchi@email.it', '3279876543', 'ID12347'),
(40003, 'Sara', 'Neri', 'sara.neri@email.it', '3356789012', 'ID12348'),
(40004, 'Luca', 'Russo', 'luca.russo@email.it', '0881212619', 'ID12349'),
(40005, 'Margherita', 'Carollo', 'margherita.carollo@email.it', '3408938993', 'ID12350'),
(40006, 'Michela', 'Gallo', 'michela.gallo@email.it', '3202549057', 'ID12351'),
(40007, 'Mariella', 'Ieva', 'mariella.ieva@email.it', '3312352068', 'ID12352'),
(40008, 'Lisa', 'Holzmann', 'lisa.holzmann@email.it', '0461724201', 'ID12353'),
(40009, 'Viviana', 'Tenore', 'viviana.tenore@email.it', '3383677695', 'ID12354'),
(40010, 'Carmen', 'Zampol', 'carmen.zampol@email.it', '3332234891', 'ID12355'),
(40011, 'Rita', 'Gallo', 'rita.gallo@email.it', '3337909234', 'ID12356'),
(40012, 'Giovanna', 'Squillace', 'giovanna.squillace@email.it', '3311176923', 'ID12357'),
(40013, 'Julia', 'Trenkwalder', 'julia.trenkwalder@email.it', '3309889177', 'ID12358'),
(40014, 'Claudio', 'Russo', 'claudio.russo@email.it', '3354559560', 'ID12359'),
(40015, 'Marco', 'Milano', 'marco.milano@email.it', '3334342785', 'ID12360'),
(40016, 'Caterina', 'Sansonna', 'caterina.sansonna@email.it', '3387877516', 'ID12361'),
(40017, 'Marco', 'Russo', 'marco.russo@email.it', '3271717436', 'ID12362'),
(40018, 'Vito', 'Sansonna', 'vito.sansonna@email.it', '0885678531', 'ID12363'),
(40019, 'Rosa', 'Brizzi', 'rosa.brizzi@email.it', '3275678719', 'ID12364');

-- Prenotazioni
INSERT INTO Prenotazione (id_prenotazione, data_prenotazione, metodo_pagamento, id_passeggero) VALUES
(50000, '2024-12-30', 'Credit card', '40000'),
(50001, '2025-01-12', 'Credit card', '40001'),
(50002, '2025-01-03', 'Cash', '40002'),
(50003, '2025-02-25', 'Gift card', '40003'),
(50004, '2024-11-10', 'Cash', '40004'),
(50005, '2024-12-30', 'Credit card', '40005'),
(50006, '2024-09-21', 'Credit card', '40006'),
(50007, '2025-03-03', 'Credit card', '40007'),
(50008, '2025-04-02', 'Gift card', '40008'),
(50009, '2024-05-01', 'Credit card', '40009'),
(50010, '2024-12-30', 'Credit card', '40010'),
(50011, '2025-01-12', 'Credit card', '40011'),
(50012, '2025-01-03', 'Cash', '40012'),
(50013, '2025-02-25', 'Gift card', '40013'),
(50014, '2024-11-10', 'Cash', '40014'),
(50015, '2024-12-30', 'Credit card', '40015'),
(50016, '2024-09-21', 'Credit card', '40016'),
(50017, '2024-07-17', 'Gift card', '40017'),
(50018, '2024-03-09', 'Gift card', '40018'),
(50019, '2024-01-02', 'Gift card', '40019');

-- Biglietti
INSERT INTO Biglietto (id_biglietto, id_prenotazione, id_volo, classe, posto, check_in_effettuato, prezzo, qr_code, stato) VALUES
(60000, 50000, 30000, 'economy', 'E019F', FALSE, 89.99, 'QR00001', 'valido'),
(60001, 50007, 30001, 'business', 'B003C', TRUE, 75.80, 'QR00002', 'valido'),
(60002, 50004, 30004, 'business', 'B001A', TRUE, 97.65, 'QR00003', 'annullato'),
(60003, 50002, 30002, 'economy', 'E019F', TRUE, 62.30, 'QR00004', 'utilizzato'),
(60004, 50009, 30003, 'economy', 'E017D', TRUE, 110.15, 'QR00005', 'valido'),
(60005, 50001, 30006, 'business', 'B003C', FALSE, 60.70, 'QR00006', 'valido'),
(60006, 50008, 30008, 'business', 'B004D', TRUE, 125.00, 'QR00007', 'valido'),
(60007, 50006, 30005, 'economy', 'E016C', FALSE, 455.90, 'QR00008', 'utilizzato'),
(60008, 50003, 30009, 'economy', 'E021B', TRUE, 203.10, 'QR00009', 'valido'),
(60009, 50005, 30004, 'economy', 'E018E', FALSE, 149.90, 'QR00010', 'annullato'),
(60010, 50010, 30000, 'economy', 'E029F', FALSE, 89.99, 'QR00011', 'valido'),
(60011, 50011, 30001, 'business', 'B013C', TRUE, 75.80, 'QR00012', 'valido'),
(60012, 50014, 30004, 'business', 'B011A', TRUE, 97.65, 'QR00013', 'annullato'),
(60013, 50012, 30002, 'economy', 'E029F', TRUE, 62.30, 'QR00014', 'utilizzato'),
(60014, 50013, 30003, 'economy', 'E027D', TRUE, 110.15, 'QR00015', 'valido'),
(60015, 50016, 30008, 'business', 'B013C', FALSE, 60.70, 'QR00016', 'valido'),
(60016, 50015, 30008, 'business', 'B014D', TRUE, 125.00, 'QR00017', 'valido'),
(60017, 50017, 30009, 'economy', 'E026C', TRUE, 177.70, 'QR00018', 'valido'),
(60018, 50018, 30009, 'economy', 'E011B', TRUE, 122.10, 'QR00019', 'valido'),
(60019, 50019, 30009, 'economy', 'E008E', TRUE, 149.90, 'QR00020', 'valido');
