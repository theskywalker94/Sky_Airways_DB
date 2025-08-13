-- Query d'esempio n.3
-- Controlla la validità dei biglietti per un volo specifico

SELECT
	b.id_biglietto AS Codice_Biglietto,
	b.validità AS Validità_Biglietto,
	b.posto,
	b.classe,
	r.stato AS Stato_Volo,
	p.nome,
	p.cognome,
	p.email
FROM Biglietto b
JOIN Passeggero p
ON b.id_passeggero = p.id_passeggero
JOIN Volo_reale r
ON b.id_volo = r.id_volo
AND b.data_partenza = r.data_partenza
WHERE b.id_volo = 'SK1054'
AND b.data_partenza = '2025-09-26'
ORDER BY Codice_Biglietto, Validità_Biglietto, Posto
