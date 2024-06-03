import dotenv from 'dotenv';
import { 
    getAllCollections as fetchAllCollections, 
    getCollectionById as fetchCollectionById, 
    addCollection, 
    updateCollection as modifyCollection, 
    deleteCollection as removeCollection 
} from '../models/koleksiModels.js';

dotenv.config();

export const getAllCollections = async (req, res) => {
    try {
        const result = await fetchAllCollections();
        return res.status(200).json({ data: result });
    } catch (error) {
        console.error(error);
        return res.status(500).json({ error: "Terjadi kesalahan saat mengambil Koleksi" });
    }
};

export const getCollectionById = async (req, res) => {
    const { id } = req.params;
    try {
        const result = await fetchCollectionById(id);
        if (result.length === 0) {
            return res.status(404).json({ message: "Koleksi tidak ditemukan" });
        }
        return res.status(200).json({ data: result[0] });
    } catch (error) {
        console.error(error);
        return res.status(500).json({ error: "Terjadi kesalahan saat mengambil Koleksi" });
    }
};

export const createCollection = async (req, res) => {
    const { nama_tanaman, tgl_penyiraman, jam_penyiraman, foto_tanaman, id_user } = req.body;

    try {
        const result = await addCollection(nama_tanaman, tgl_penyiraman, jam_penyiraman, foto_tanaman, id_user);
        res.status(201).json({ id: result.insertId, nama_tanaman, tgl_penyiraman, jam_penyiraman, foto_tanaman, id_user });
    } catch (err) {
        console.error(err);
        res.status(500).send(err);
    }
};

export const updateCollection = async (req, res) => {
    const { id } = req.params;
    const {nama_tanaman, tgl_penyiraman, jam_penyiraman, foto_tanaman } = req.body;

    try {
        const result = await modifyCollection(id , nama_tanaman, tgl_penyiraman, jam_penyiraman, foto_tanaman);
        if (result.affectedRows === 0) {
            return res.status(404).json({ message: "Koleksi tidak ditemukan" });
        }
        return res.status(200).json({
            message: "Sukses update koleksi",
            data: { id, nama_tanaman, tgl_penyiraman, jam_penyiraman, foto_tanaman }
        });
    } catch (error) {
        console.error(error);
        return res.status(500).json({ error: "Terjadi kesalahan saat update Koleksi" });
    }
};

export const deleteCollection = async (req, res) => {
    const { id } = req.params;
    try {
        const result = await removeCollection(id);
        if (result.affectedRows === 0) {
            return res.status(404).json({ message: "Koleksi tidak ditemukan" });
        }
        return res.status(200).json({ message: "Koleksi sukses terhapus" });
    } catch (error) {
        console.error("Error details:", error);
        return res.status(500).json({ error: "Terjadi kesalahan saat menghapus Koleksi", details: error.message });
    }
};
