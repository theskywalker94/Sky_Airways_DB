-- vincoli_e_indici.sql

CREATE INDEX idx_volo_data ON Volo(data_partenza);
CREATE INDEX idx_biglietto_qr ON Biglietto(qr_code);
CREATE INDEX idx_prenotazione_passeggero ON Prenotazione(id_passeggero);