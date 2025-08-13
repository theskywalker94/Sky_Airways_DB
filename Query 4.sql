-- Report sul numero di passeggeri di tutti i voli in partenza in una singola giornata

SELECT
	b.id_volo AS Codice_Volo,
	b.data_partenza,
	v.partenza AS Aeroporto_Partenza,
	v.destinazione AS Aeroporto_Destinazione,
	COUNT(DISTINCT b.id_biglietto) AS Numero_Passeggeri
FROM Biglietto b
JOIN Volo v
ON b.id_volo = v.id_volo
WHERE b.data_partenza = '2025-09-21'
GROUP BY b.id_volo, b.data_partenza, v.partenza, v.destinazione
ORDER BY Numero_Passeggeri DESC
