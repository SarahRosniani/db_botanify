import db from '../database/db.js';

// Get all users
const getAllUsers = () => {
    return new Promise((resolve, reject) => {
        db.query('SELECT * FROM user', (err, results) => {
            if (err) {
                return reject(err);
            }
            resolve(results);
        });
    });
};

// Get user by ID
const getUserById = (id_user) => {
    return new Promise((resolve, reject) => {
        db.query('SELECT * FROM user WHERE id_user = ?', [id_user], (err, results) => {
            if (err) {
                return reject(err);
            }
            resolve(results);
        });
    });
};

// Add new user
const addUser = (nama, email, password) => {
    return new Promise((resolve, reject) => {
        const sql = 'INSERT INTO user (nama, email, password) VALUES (?, ?, ?)';
        db.query(sql, [nama, email, password], (err, result) => {
            if (err) {
                return reject(err);
            }
            resolve(result);
        });
    });
};

// Update user
const updateUser = (id_user, nama, email, password) => {
    return new Promise((resolve, reject) => {
        db.query('UPDATE user SET nama = ?, email = ?, password = ? WHERE id_user = ?', 
                 [nama, email, password, id_user], (err, results) => {
            if (err) {
                return reject(err);
            }
            resolve(results);
        });
    });
};

// Delete user
const deleteUser = (id_user) => {
    return new Promise((resolve, reject) => {
        db.query('DELETE FROM user WHERE id_user = ?', [id_user], (err, result) => {
            if (err) {
                return reject(err);
            }
            resolve(result);
        });
    });
};

export { getAllUsers, getUserById, addUser, updateUser, deleteUser };


// import db from '../database/db.js';
// import admin from 'firebase-admin';
// import serviceAccount from '../database/key.json';

// // admin.initializeApp({
// //     credential: admin.credential.cert(serviceAccount),
// //     databaseURL: "https://bota-727a1-default-rtdb.firebaseio.com/"
// // });

// // const firestore = admin.firestore();

// // Get all users
// const getAllUsers = () => {
//     return new Promise((resolve, reject) => {
//         db.query('SELECT * FROM user', (err, results) => {
//             if (err) {
//                 return reject(err);
//             }
//             resolve(results);
//         });
//     });
// };

// // Get user by ID
// const getUserById = (id_user) => {
//     return new Promise((resolve, reject) => {
//         db.query('SELECT * FROM user WHERE id_user = ?', [id_user], (err, results) => {
//             if (err) {
//                 return reject(err);
//             }
//             resolve(results);
//         });
//     });
// };

// // Add new user
// const addUser = (nama, email, password) => {
//     return new Promise((resolve, reject) => {
//         const sql = 'INSERT INTO user (nama, email, password) VALUES (?, ?, ?)';
//         db.query(sql, [nama, email, password], async (err, result) => {
//             if (err) {
//                 return reject(err);
//             }

//             // Kirim data ke Firebase Firestore setelah berhasil menambahkan ke MySQL
//             try {
//                 await firestore.collection('users').doc(result.insertId.toString()).set({
//                     nama: nama,
//                     email: email,
//                     password: password
//                 });
//                 resolve(result);
//             } catch (error) {
//                 reject(error);
//             }
//         });
//     });
// };

// // Update user
// const updateUser = (id_user, nama, email, password) => {
//     return new Promise((resolve, reject) => {
//         db.query('UPDATE user SET nama = ?, email = ?, password = ? WHERE id_user = ?', 
//                  [nama, email, password, id_user], async (err, results) => {
//             if (err) {
//                 return reject(err);
//             }

//             // Kirim data yang diperbarui ke Firebase Firestore
//             try {
//                 await firestore.collection('users').doc(id_user.toString()).update({
//                     nama: nama,
//                     email: email,
//                     password: password
//                 });
//                 resolve(results);
//             } catch (error) {
//                 reject(error);
//             }
//         });
//     });
// };

// // Delete user
// const deleteUser = (id_user) => {
//     return new Promise((resolve, reject) => {
//         db.query('DELETE FROM user WHERE id_user = ?', [id_user], async (err, result) => {
//             if (err) {
//                 return reject(err);
//             }

//             // Hapus data dari Firebase Firestore setelah dihapus dari MySQL
//             try {
//                 await firestore.collection('users').doc(id_user.toString()).delete();
//                 resolve(result);
//             } catch (error) {
//                 reject(error);
//             }
//         });
//     });
// };

// export { getAllUsers, getUserById, addUser, updateUser, deleteUser };
