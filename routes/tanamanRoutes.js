import express from 'express';
import { getAllTanaman, getTanamanById, createTanaman, updateTanaman, deleteTanaman } from '../controllers/tanamanController.js';

const router = express.Router();

router.get('/', getAllTanaman); 
router.get('/:id_tanaman', getTanamanById); 
router.post('/', createTanaman);
router.put('/:id_tanaman', updateTanaman);
router.delete('/:id_tanaman', deleteTanaman);

export default router;


// import express from 'express';
// import { upload } from '../middleware/upload.js';
// import { getAllTanaman, getTanamanById, createTanaman, updateTanaman, deleteTanaman } from '../controllers/tanamanController.js';

// const router = express.Router();

// router.get('/', getAllTanaman); 
// router.get('/:id_tanaman', getTanamanById); 
// router.post('/', upload.single('foto_tanaman'), createTanaman);
// router.put('/:id_tanaman', upload.single('foto_tanaman'), updateTanaman);
// router.delete('/:id_tanaman', deleteTanaman);

// export default router;