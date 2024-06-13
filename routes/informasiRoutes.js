import express from 'express';
import { getAllInformasi, getInformasiByKategori, getInformasiById, addInformasi, updateInformasi, deleteInformasi } from '../controllers/informasiController.js';

const router = express.Router();

router.get('/', getAllInformasi); 
router.get('/kategori/:kategori', getInformasiByKategori); 
router.get('/:id_informasi', getInformasiById); 
router.post('/', addInformasi); 
router.put('/:id_informasi', updateInformasi);
router.delete('/:id_informasi', deleteInformasi);

export default router;