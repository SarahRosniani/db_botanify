import express from 'express';
import { getAllInformasi, getInformasiByKategori, addInformasi, updateInformasi, deleteInformasi } from '../controllers/informasiController.js';

const router = express.Router();

router.get('/', getAllInformasi); 
router.get('/:kategori', getInformasiByKategori); 
router.post('/', addInformasi); 
router.put('/:id_informasi', updateInformasi);
router.delete('/:id_informasi', deleteInformasi);

export default router;