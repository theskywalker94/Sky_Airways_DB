-- query_esempio.sql

-- 1. Ricerca voli disponibili -- testare query
SELECT v.id_volo, v.numero_volo, v.data_partenza, v.ora_partenza, v.stato
FROM Volo v
JOIN Tratta t ON v.id_tratta = t.id_tratta
JOIN Aeroporto a1 ON t.aeroporto_partenza = a1.id_aeroporto
JOIN Aeroporto a2 ON t.aeroporto_arrivo = a2.id_aeroporto
WHERE a1.codice_IATA = 'MXP' AND a2.codice_IATA = 'HND'
  AND v.data_partenza = '2025-06-18'
  AND v.stato = 'programmato';

-- 2. Storico prenotazioni
SELECT p.id_prenotazione, p.data_prenotazione, p.stato, v.numero_volo, v.data_partenza -- modificare da tabella Volo a tabella Biglietto
FROM Prenotazione p
JOIN Volo v ON p.id_volo = v.id_volo
WHERE p.id_passeggero = 'ID12345'
ORDER BY p.data_prenotazione DESC;

-- 3. Verifica validità biglietto
SELECT b.id_biglietto, b.stato, v.numero_volo, v.data_partenza
FROM Biglietto b
JOIN Volo v ON b.id_volo = v.id_volo
WHERE b.qr_code = 'QR00001'
  AND b.stato = 'valido'
  AND v.data_partenza >= CURRENT_DATE;

-- 4. Numero passeggeri per volo
SELECT v.numero_volo, COUNT(DISTINCT b.id_biglietto) AS numero_passeggeri
FROM Volo v
LEFT JOIN Biglietto b ON v.id_volo = b.id_volo
WHERE v.data_partenza = '2025-06-15'
GROUP BY v.numero_volo;

-- 5. Entrate da un volo -- correggere query, ho spostato prezzo su tabella prenotazione
SELECT v.numero_volo, SUM(b.prezzo) AS totale_incassi
FROM Biglietto b
JOIN Volo v ON b.id_volo = v.id_volo
WHERE v.id_volo = 56789
  AND b.stato = 'Valido';
