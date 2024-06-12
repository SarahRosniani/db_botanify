import dotenv from 'dotenv';
import { 
    getAllTanaman as fetchAllTanaman, 
    getTanamanById as fetchTanamanById, 
    addTanaman, 
    getTanamanByName as fetchTanamanByName,
    updateTanaman as modifyTanaman, 
    deleteTanaman as removeTanaman 
} from '../models/tanamanModel.js';

dotenv.config();

export const getAllTanaman = async (req, res) => {
    try {
        const result = await fetchAllTanaman();
        return res.status(200).json({ data: result });
    } catch (error) {
        console.error(error);
        return res.status(500).json({ error: "Terjadi kesalahan saat mengambil Tanaman" });
    }
};

export const getTanamanById = async (req, res) => {
    const { id_tanaman } = req.params;
    try {
        const result = await fetchTanamanById(id_tanaman);
        if (result.length === 0) {
            return res.status(404).json({ message: "Tanaman tidak ditemukan" });
        }
        return res.status(200).json({ data: result[0] });
    } catch (error) {
        console.error(error);
        return res.status(500).json({ error: "Terjadi kesalahan saat mengambil Tanaman" });
    }
};

export const getTanamanByName = async (req, res) => {
    const { nama_tanaman } = req.params;
    try {
        const result = await fetchTanamanByName(nama_tanaman);
        if (result.length === 0) {
            return res.status(404).json({ message: "Tanaman tidak ditemukan" });
        }
        return res.status(200).json({ data: result[0] });
    } catch (error) {
        console.error(error);
        return res.status(500).json({ error: "Terjadi kesalahan saat mengambil Tanaman" });
    }
};


export const createTanaman = async (req, res) => {
    const { nama_tanaman, deskripsi_tanaman, foto_tanaman } = req.body;

    try {
        const result = await addTanaman(nama_tanaman, deskripsi_tanaman, foto_tanaman);
        res.status(201).json({ id: result.insertId, nama_tanaman, deskripsi_tanaman, foto_tanaman });
    } catch (err) {
        console.error(err);
        res.status(500).send(err);
    }
};

export const updateTanaman = async (req, res) => {
    const { id_tanaman } = req.params;
    const { nama_tanaman, deskripsi_tanaman, foto_tanaman } = req.body;

    try {
        const result = await modifyTanaman(id_tanaman, nama_tanaman, deskripsi_tanaman, foto_tanaman);
        if (result.affectedRows === 0) {
            return res.status(404).json({ message: "Tanaman tidak ditemukan" });
        }
        return res.status(200).json({
            message: "Sukses update tanaman",
            data: { id_tanaman, nama_tanaman, deskripsi_tanaman, foto_tanaman }
        });
    } catch (error) {
        console.error(error);
        return res.status(500).json({ error: "Terjadi kesalahan saat update Tanaman" });
    }
};

export const deleteTanaman = async (req, res) => {
    const { id_tanaman } = req.params;
    try {
        const result = await removeTanaman(id_tanaman);
        if (result.affectedRows === 0) {
            return res.status(404).json({ message: "Tanaman tidak ditemukan" });
        }
        return res.status(200).json({ message: "Tanaman sukses terhapus" });
    } catch (error) {
        console.error("Error details:", error);
        return res.status(500).json({ error: "Terjadi kesalahan saat menghapus Tanaman", details: error.message });
    }
};