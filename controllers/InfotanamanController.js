import dotenv from 'dotenv';
import { 
    getAllInfotanaman as fetchAllInfotanaman, 
    getInfotanamanById as fetchInfotanamanById, 
    addInfotanaman, 
    getInfotanamanByName as fetchInfotanamanByName,
    updateInfotanaman as modifyInfotanaman, 
    deleteInfotanaman as removeInfotanaman 
} from '../models/InfotanamanModel.js';

dotenv.config();

export const getAllInfotanaman = async (req, res) => {
    try {
        const result = await fetchAllInfotanaman();
        return res.status(200).json({ data: result });
    } catch (error) {
        console.error(error);
        return res.status(500).json({ error: "Terjadi kesalahan saat mengambil Info tanaman" });
    }
};

export const getInfotanamanById = async (req, res) => {
    const { id_Infotanaman } = req.params;
    try {
        const result = await fetchInfotanamanById(id_Infotanaman);
        if (result.length === 0) {
            return res.status(404).json({ message: "Info tanaman tidak ditemukan" });
        }
        return res.status(200).json({ data: result[0] });
    } catch (error) {
        console.error(error);
        return res.status(500).json({ error: "Terjadi kesalahan saat mengambil Infotanaman" });
    }
};

export const getInfotanamanByName = async (req, res) => {
    const { nama_Infotanaman } = req.params;
    try {
        const result = await fetchInfotanamanByName(nama_Infotanaman);
        if (result.length === 0) {
            return res.status(404).json({ message: "Info tanaman tidak ditemukan" });
        }
        return res.status(200).json({ data: result[0] });
    } catch (error) {
        console.error(error);
        return res.status(500).json({ error: "Terjadi kesalahan saat mengambil Infotanaman" });
    }
};


export const createInfotanaman = async (req, res) => {
    const { nama_Infotanaman, deskripsi_Infotanaman, foto_Infotanaman } = req.body;

    try {
        const result = await addInfotanaman(nama_Infotanaman, deskripsi_Infotanaman, foto_Infotanaman);
        res.status(201).json({ id: result.insertId, nama_Infotanaman, deskripsi_Infotanaman, foto_Infotanaman });
    } catch (err) {
        console.error(err);
        res.status(500).send(err);
    }
};

export const updateInfotanaman = async (req, res) => {
    const { id_Infotanaman } = req.params;
    const { nama_Infotanaman, deskripsi_Infotanaman, foto_Infotanaman } = req.body;

    try {
        const result = await modifyInfotanaman(id_Infotanaman, nama_Infotanaman, deskripsi_Infotanaman, foto_Infotanaman);
        if (result.affectedRows === 0) {
            return res.status(404).json({ message: "Info tanaman tidak ditemukan" });
        }
        return res.status(200).json({
            message: "Sukses update Info tanaman",
            data: { id_Infotanaman, nama_Infotanaman, deskripsi_Infotanaman, foto_Infotanaman }
        });
    } catch (error) {
        console.error(error);
        return res.status(500).json({ error: "Terjadi kesalahan saat update Info tanaman" });
    }
};

export const deleteInfotanaman = async (req, res) => {
    const { id_Infotanaman } = req.params;
    try {
        const result = await removeInfotanaman(id_Infotanaman);
        if (result.affectedRows === 0) {
            return res.status(404).json({ message: "Info tanaman tidak ditemukan" });
        }
        return res.status(200).json({ message: "Info tanaman sukses terhapus" });
    } catch (error) {
        console.error("Error details:", error);
        return res.status(500).json({ error: "Terjadi kesalahan saat menghapus Info tanaman", details: error.message });
    }
};