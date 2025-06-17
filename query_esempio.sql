-- query_esempio.sql

-- 1. Ricerca voli disponibili
SELECT v.id_volo, v.numero_volo, v.data_partenza, v.ora_partenza, v.stato
FROM Volo v
JOIN Tratta t ON v.id_tratta = t.id_tratta
JOIN Aeroporto a1 ON t.aeroporto_partenza = a1.id_aeroporto
JOIN Aeroporto a2 ON t.aeroporto_arrivo = a2.id_aeroporto
WHERE a1.codice_IATA = 'MXP' AND a2.codice_IATA = 'HND'
  AND v.data_partenza = '2025-12-24'
  AND v.stato = 'programmato';

-- 2. Storico prenotazioni
SELECT p.id_prenotazione, p.data_prenotazione, b.stato, v.numero_volo, v.data_partenza
FROM Prenotazione p
JOIN Biglietto b ON p.id_prenotazione = b.id_prenotazione
JOIN Volo v ON b.id_volo = v.id_volo
WHERE p.id_passeggero = '40017'
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
WHERE v.data_partenza = '2025-12-24'
GROUP BY v.numero_volo;

-- 5. Entrate da un volo -- correggere query, manca aggregazione su v.numero_volo
SELECT v.numero_volo, SUM(b.prezzo) AS totale_incassi
FROM Biglietto b
JOIN Volo v ON b.id_volo = v.id_volo
WHERE v.id_volo = 30009
  AND b.stato = 'valido';
