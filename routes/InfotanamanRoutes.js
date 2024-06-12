import express from 'express';
import { getAllInfotanaman, getInfotanamanById, getInfotanamanByName, createInfotanaman, updateInfotanaman, deleteInfotanaman } from '../controllers/InfotanamanController.js';

const router = express.Router();

router.get('/', getAllInfotanaman); 
router.get('/:id_Infotanaman', getInfotanamanById); 
router.get('/name/:nama_Infotanaman', getInfotanamanByName); 
router.post('/', createInfotanaman);
router.put('/:id_Infotanaman', updateInfotanaman);
router.delete('/:id_Infotanaman', deleteInfotanaman);

export default router;