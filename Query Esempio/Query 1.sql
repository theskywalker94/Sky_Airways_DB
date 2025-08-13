-- Query d'esempio n.1
-- Ricerca di voli diretti e/o con scalo da Milano Malpensa MXP a Tokyo Narita NRT con partenza in data 10-12-2025

WITH RECURSIVE cte AS (
    -- ANCHOR MEMBER: primo volo diretto da MXP
    SELECT 
        v.partenza,
        v.destinazione,
        r.data_partenza,
        r.data_arrivo,
        v.ora_partenza,
        v.ora_arrivo,
        CAST(CONCAT(v.partenza, ' - ', v.destinazione) AS varchar(1000)) AS tratta,
        v.partenza AS origine,
        r.data_partenza AS origine_partenza,
        v.ora_partenza AS origine_orario,
        0 AS scali,
        CAST(v.id_volo AS varchar(1000)) AS str_flight,
		r.stato
    FROM Volo v
    JOIN Volo_reale r
      ON v.id_volo = r.id_volo
    WHERE v.partenza = 'MXP' -- aeroporto di partenza iniziale: Milano Malpensa
	AND r.stato = 'programmato'

    UNION ALL

    -- RECURSIVE MEMBER: collegamenti successivi
    SELECT 
        ua.partenza,
        ua.destinazione,
        ur.data_partenza,
        ur.data_arrivo,
        ua.ora_partenza,
        ua.ora_arrivo,
        CAST(CONCAT(c.tratta, ' - ', ua.destinazione) AS varchar(1000)),
        c.origine,
        c.origine_partenza,
        c.origine_orario,
        c.scali + 1,
        CAST(CONCAT(c.str_flight, ' - ', ua.id_volo) AS varchar(1000)),
		ur.stato
    FROM cte c
    JOIN Volo ua
      ON c.destinazione = ua.partenza
     AND c.tratta NOT LIKE CONCAT('%', ua.destinazione, '%') -- evita cicli
     AND c.scali < 2 -- numero massimo di scali; es. c.scali < 2 considera al massimo 2 scali
    JOIN Volo_reale ur
      ON ua.id_volo = ur.id_volo
     AND c.data_arrivo < ur.data_partenza
     AND (ur.data_partenza - c.data_arrivo) < 2 -- massimo 1 giorno di stop, altrimenti non si considera più 'scalo' bensì 'soggiorno'
	 AND ur.stato = 'programmato'
)

-- RISULTATO: un solo percorso per data di partenza + orario di partenza + combinazione volo
SELECT DISTINCT ON (origine_partenza, orario_partenza, str_flight)
       str_flight AS ID_Voli,
       origine AS Aeroporto_Partenza,
       destinazione AS Aeroporto_Destinazione,
       scali AS Numero_Scali,
       tratta AS Scali,
       origine_partenza AS Data_Partenza,
       origine_orario AS Orario_Partenza,
       data_arrivo AS Data_Arrivo,
       ora_arrivo AS Orario_Arrivo
FROM cte
WHERE destinazione = 'NRT' -- destinazione finale: Tokyo Narita
AND origine_partenza = '2025-12-10' -- data di partenza desiderata
ORDER BY origine_partenza, orario_partenza, str_flight, numero_scali, data_partenza, orario_partenza;
