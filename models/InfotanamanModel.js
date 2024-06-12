import db from '../database/db.js';

// Get all Infotanaman
const getAllInfotanaman = async () => {
    return new Promise((resolve, reject) => {
        db.query('SELECT * FROM Infotanaman', (err, results) => {
            if (err) {
                return reject(err);
            }
            resolve(results);
        });
    });
};

// Get Infotanaman by ID
const getInfotanamanById = async (id_Infotanaman) => {
    return new Promise((resolve, reject) => {
        db.query('SELECT * FROM Infotanaman WHERE id_Infotanaman = ?', [id_Infotanaman], (err, results) => {
            if (err) {
                return reject(err);
            }
            resolve(results);
        });
    });
};

// Get Infotanaman by nama Infotanaman
const getInfotanamanByName = async (nama_Infotanaman) => {
    return new Promise((resolve, reject) => {
        db.query('SELECT * FROM Infotanaman WHERE nama_Infotanaman = ?', [nama_Infotanaman], (err, results) => {
            if (err) {
                return reject(err);
            }
            resolve(results);
        });
    });
};


// Add new Infotanaman
const addInfotanaman = async (nama_Infotanaman, deskripsi_Infotanaman, foto_Infotanaman) => {
    return new Promise((resolve, reject) => {
        const sql = 'INSERT INTO Infotanaman (nama_Infotanaman, deskripsi_Infotanaman, foto_Infotanaman) VALUES (?, ?, ?)';
        db.query(sql, [nama_Infotanaman, deskripsi_Infotanaman, foto_Infotanaman], (err, result) => {
            if (err) {
                return reject(err);
            }
            resolve(result);
        });
    });
};

// Update Infotanaman
const updateInfotanaman = async (id_Infotanaman, nama_Infotanaman, deskripsi_Infotanaman, foto_Infotanaman) => {
    return new Promise((resolve, reject) => {
        db.query('UPDATE Infotanaman SET nama_Infotanaman = ?, deskripsi_Infotanaman = ?, foto_Infotanaman = ? WHERE id_Infotanaman = ?', 
                 [nama_Infotanaman, deskripsi_Infotanaman, foto_Infotanaman, id_Infotanaman], (err, results) => {
            if (err) {
                return reject(err);
            }
            resolve(results);
        });
    });
};

// Delete Infotanaman
const deleteInfotanaman = async (id_Infotanaman) => {
    return new Promise((resolve, reject) => {
        db.query('DELETE FROM Infotanaman WHERE id_Infotanaman = ?', [id_Infotanaman], (err, result) => {
            if (err) {
                return reject(err);
            }
            resolve(result);
        });
    });
};

export { getAllInfotanaman, getInfotanamanById, getInfotanamanByName, addInfotanaman, updateInfotanaman, deleteInfotanaman };