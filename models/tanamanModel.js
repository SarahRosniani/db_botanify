import db from '../database/db.js';

// Get all tanaman
const getAllTanaman = async () => {
    return new Promise((resolve, reject) => {
        db.query('SELECT * FROM tanaman', (err, results) => {
            if (err) {
                return reject(err);
            }
            resolve(results);
        });
    });
};

// Get tanaman by ID
const getTanamanById = async (id_tanaman) => {
    return new Promise((resolve, reject) => {
        db.query('SELECT * FROM tanaman WHERE id_tanaman = ?', [id_tanaman], (err, results) => {
            if (err) {
                return reject(err);
            }
            resolve(results);
        });
    });
};

// Get tanaman by nama tanaman
const getTanamanByName = async (nama_tanaman) => {
    return new Promise((resolve, reject) => {
        db.query('SELECT * FROM tanaman WHERE nama_tanaman = ?', [nama_tanaman], (err, results) => {
            if (err) {
                return reject(err);
            }
            resolve(results);
        });
    });
};


// Add new tanaman
const addTanaman = async (nama_tanaman, deskripsi_tanaman, foto_tanaman) => {
    return new Promise((resolve, reject) => {
        const sql = 'INSERT INTO tanaman (nama_tanaman, deskripsi_tanaman, foto_tanaman) VALUES (?, ?, ?)';
        db.query(sql, [nama_tanaman, deskripsi_tanaman, foto_tanaman], (err, result) => {
            if (err) {
                return reject(err);
            }
            resolve(result);
        });
    });
};

// Update tanaman
const updateTanaman = async (id_tanaman, nama_tanaman, deskripsi_tanaman, foto_tanaman) => {
    return new Promise((resolve, reject) => {
        db.query('UPDATE tanaman SET nama_tanaman = ?, deskripsi_tanaman = ?, foto_tanaman = ? WHERE id_tanaman = ?', 
                 [nama_tanaman, deskripsi_tanaman, foto_tanaman, id_tanaman], (err, results) => {
            if (err) {
                return reject(err);
            }
            resolve(results);
        });
    });
};

// Delete tanaman
const deleteTanaman = async (id_tanaman) => {
    return new Promise((resolve, reject) => {
        db.query('DELETE FROM tanaman WHERE id_tanaman = ?', [id_tanaman], (err, result) => {
            if (err) {
                return reject(err);
            }
            resolve(result);
        });
    });
};

export { getAllTanaman, getTanamanById, getTanamanByName, addTanaman, updateTanaman, deleteTanaman };