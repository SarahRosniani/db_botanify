import db from '../database/db.js';

// Get all collections
const getAllCollections = () => {
    return new Promise((resolve, reject) => {
        db.query('SELECT * FROM koleksi', (err, results) => {
            if (err) {
                return reject(err);
            }
            resolve(results);
        });
    });
};

// Get collection by ID
const getCollectionById = (id) => {
    return new Promise((resolve, reject) => {
        db.query('SELECT * FROM koleksi WHERE id = ?', [id], (err, results) => {
            if (err) {
                return reject(err);
            }
            resolve(results);
        });
    });
};

// Add new collection
const addCollection = (nama_tanaman, tgl_penyiraman, jam_penyiraman, foto_tanaman) => {
    return new Promise((resolve, reject) => {
        const sql = 'INSERT INTO koleksi (nama_tanaman, tgl_penyiraman, jam_penyiraman, foto_tanaman) VALUES (?, ?, ?, ?)';
        db.query(sql, [nama_tanaman, tgl_penyiraman, jam_penyiraman, foto_tanaman], (err, result) => {
            if (err) {
                return reject(err);
            }
            resolve(result);
        });
    });
};

// Update collection
const updateCollection = (id, nama_tanaman, tgl_penyiraman, jam_penyiraman, foto_tanaman) => {
    return new Promise((resolve, reject) => {
        db.query('UPDATE koleksi SET nama_tanaman = ?, tgl_penyiraman = ?, jam_penyiraman = ?, foto_tanaman =? WHERE id_koleksi = ?', 
                 [nama_tanaman, tgl_penyiraman, jam_penyiraman, foto_tanaman,id], (err, results) => {
            if (err) {
                return reject(err);
            }
            resolve(results);
        });
    });
};

// Delete collection
const deleteCollection = (id) => {
    return new Promise((resolve, reject) => {
        db.query('DELETE FROM koleksi WHERE id = ?', [id], (err, result) => {
            if (err) {
                return reject(err);
            }
            resolve(result);
        });
    });
};

export { getAllCollections, getCollectionById, addCollection, updateCollection, deleteCollection };
