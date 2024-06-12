import express from 'express';
import { getAllTanaman, getTanamanById, getTanamanByName, createTanaman, updateTanaman, deleteTanaman } from '../controllers/tanamanController.js';

const router = express.Router();

router.get('/', getAllTanaman); 
router.get('/:id_tanaman', getTanamanById); 
router.get('/name/:nama_tanaman', getTanamanByName); 
router.post('/', createTanaman);
router.put('/:id_tanaman', updateTanaman);
router.delete('/:id_tanaman', deleteTanaman);

export default router;