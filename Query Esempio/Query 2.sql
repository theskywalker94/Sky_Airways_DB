-- Query d'esempio n.2
-- Mostra tutte le prenotazioni effettuate da un passeggero specifico

SELECT
	p.id_prenotazione AS Codice_Prenotazione,
	p.data_prenotazione,
	b.id_biglietto AS Codice_Biglietto,
	t.nome AS Nome_Viaggiatore,
	t.cognome AS Cognome_Viaggiatore,
	b.id_volo AS Codice_Volo,
	b.data_partenza,
	v.partenza AS Aeroporto_Partenza,
	v.destinazione AS Aeroporto_Destinazione
FROM Prenotazione p
JOIN Biglietto b
ON p.id_prenotazione = b.id_prenotazione
JOIN Volo v
ON b.id_volo = v.id_volo
JOIN Passeggero t -- JOIN per mostrare nome e cognome dei passeggeri inclusi nella prenotazione
ON b.id_passeggero = t.id_passeggero 
JOIN Passeggero u -- JOIN per ricercare la prenotazione tramite email dell'acquirente
ON p.id_passeggero = u.id_passeggero
WHERE u.email = 'qackermann@gmx.de'
ORDER BY p.data_prenotazione DESC;
