import dotenv from 'dotenv';
import { 
    getAllUsers as fetchAllUsers, 
    getUserById as fetchUserById, 
    addUser, 
    updateUser as modifyUser, 
    deleteUser as removeUser 
} from '../models/userModel.js';

dotenv.config();

export const getAllUsers = async (req, res) => {
    try {
        const result = await fetchAllUsers();
        return res.status(200).json({ data: result });
    } catch (error) {
        console.error(error);
        return res.status(500).json({ error: "Terjadi kesalahan saat mengambil Users" });
    }
};

export const getUserById = async (req, res) => {
    const { id_user } = req.params;
    try {
        const result = await fetchUserById(id_user);
        if (result.length === 0) {
            return res.status(404).json({ message: "User tidak ditemukan" });
        }
        return res.status(200).json({ data: result[0] });
    } catch (error) {
        console.error(error);
        return res.status(500).json({ error: "Terjadi kesalahan saat mengambil User" });
    }
};

export const createUser = async (req, res) => {
    const { nama, email, password } = req.body;

    try {
        const result = await addUser(nama, email, password);
        res.status(201).json({ id: result.insertId, nama, email, password });
    } catch (err) {
        console.error(err);
        res.status(500).send(err);
    }
};

export const updateUser = async (req, res) => {
    const { id_user } = req.params;
    const { nama, email, password } = req.body;

    try {
        const result = await modifyUser(id_user, nama, email, password);
        if (result.affectedRows === 0) {
            return res.status(404).json({ message: "User tidak ditemukan" });
        }
        return res.status(200).json({
            message: "Sukses update user",
            data: { id_user, nama, email, password }
        });
    } catch (error) {
        console.error(error);
        return res.status(500).json({ error: "Terjadi kesalahan saat update User" });
    }
};

export const deleteUser = async (req, res) => {
    const { id_user } = req.params;
    try {
        const result = await removeUser(id_user);
        if (result.affectedRows === 0) {
            return res.status(404).json({ message: "User tidak ditemukan" });
        }
        return res.status(200).json({ message: "User sukses terhapus" });
    } catch (error) {
        console.error("Error details:", error);
        return res.status(500).json({ error: "Terjadi kesalahan saat menghapus User", details: error.message });
    }
};
