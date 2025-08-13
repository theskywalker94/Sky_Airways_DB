-- Calcola il totale delle entrate per un volo specifico

SELECT
	id_volo,
	COUNT(id_biglietto) AS Numero_Biglietti,
	SUM(prezzo) AS Totale_Incasso
FROM Biglietto
WHERE id_volo = 'SK1054'
  AND data_partenza = '2025-09-26'
GROUP BY id_volo;
