import db from '../database/db.js';

const getAllInformasi = () => {
  return new Promise((resolve, reject) => {
    db.query('SELECT * FROM informasi', (err, results) => {
      if (err) {
        return reject(err);
      }
      resolve(results);
    });
  });
};

const getInformasiByKategori = (kategori) => {
  return new Promise((resolve, reject) => {
    db.query('SELECT * FROM informasi WHERE kategori = ?', [kategori], (err, results) => {
      if (err) {
        console.error('Database query failed:', err); 
        return reject(err);
      }
      console.log(`Query results for kategori ${kategori}:`, results); 
      resolve(results);
    });
  });
};

const addInformasi = (judul, isi_artikel, kategori, penerbit, foto_informasi, tanggal, url) => {
  return new Promise((resolve, reject) => {
    db.query('INSERT INTO informasi (judul, isi_artikel, kategori, penerbit, foto_informasi, tanggal, url) VALUES (?, ?, ?, ?, ?, ?, ?)', 
    [judul, isi_artikel, kategori, penerbit, foto_informasi, tanggal, url], 
    (error, results) => {
      if (error) {
        return reject(error);
      }
      resolve(results);
    });
  });
};

const updateInformasi = (id_informasi, judul, isi_artikel, kategori, penerbit, foto_informasi, tanggal, url) => {
  return new Promise((resolve, reject) => {
    db.query('UPDATE informasi SET judul = ?, isi_artikel = ?, kategori = ?, penerbit = ?, foto_informasi = ?, tanggal = ?, url = ? WHERE id_informasi = ?', 
    [judul, isi_artikel, kategori, penerbit, foto_informasi, tanggal, url, id_informasi], 
    (error, results) => {
      if (error) {
        return reject(error);
      }
      resolve(results);
    });
  });
};

const deleteInformasi = (id_informasi) => {
  return new Promise((resolve, reject) => {
    db.query('DELETE FROM informasi WHERE id_informasi = ?', 
    [id_informasi], 
    (error, results) => {
      if (error) {
        return reject(error);
      }
      resolve(results);
    });
  });
};

export { getAllInformasi, getInformasiByKategori, addInformasi, updateInformasi, deleteInformasi };


// import db from '../database/db.js';

// const getAllInformasi = () => {
//   return new Promise((resolve, reject) => {
//     db.query('SELECT * FROM informasi', (err, results) => {
//       if (err) {
//         return reject(err);
//       }
//       resolve(results);
//     });
//   });
// };

// const getInformasiByKategori = (kategori) => {
//   return new Promise((resolve, reject) => {
//     db.query('SELECT * FROM informasi WHERE kategori = ?', [kategori], (err, results) => {
//       if (err) {
//         console.error('Database query failed:', err); 
//         return reject(err);
//       }
//       console.log(`Query results for kategori ${kategori}:`, results); 
//       resolve(results);
//     });
//   });
// };

// // Menambahkan informasi baru
// const addInformasi = (judul, isi_artikel, kategori, penerbit, foto_informasi) => {
//   return new Promise((resolve, reject) => {
//     db.query('INSERT INTO informasi (judul, isi_artikel, kategori, penerbit, foto_informasi) VALUES (?, ?, ?, ?, ?)', 
//     [judul, isi_artikel, kategori, penerbit, foto_informasi], 
//     (error, results) => {
//       if (error) {
//         return reject(error);
//       }
//       resolve(results);
//     });
//   });
// };

// // Memperbarui informasi
// const updateInformasi = (id_informasi, judul, isi_artikel, kategori, penerbit, foto_informasi) => {
//   return new Promise((resolve, reject) => {
//     db.query('UPDATE informasi SET judul = ?, isi_artikel = ?, kategori = ?, penerbit = ?, foto_informasi = ? WHERE id_informasi = ?', 
//     [judul, isi_artikel, kategori, penerbit, foto_informasi, id_informasi], 
//     (error, results) => {
//       if (error) {
//         return reject(error);
//       }
//       resolve(results);
//     });
//   });
// };

// // Menghapus informasi
// const deleteInformasi = (id_informasi) => {
//   return new Promise((resolve, reject) => {
//     db.query('DELETE FROM informasi WHERE id_informasi = ?', 
//     [id_informasi], 
//     (error, results) => {
//       if (error) {
//         return reject(error);
//       }
//       resolve(results);
//     });
//   });
// };

// export { getAllInformasi, getInformasiByKategori, addInformasi, updateInformasi, deleteInformasi };