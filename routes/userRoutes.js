import express from 'express';
import { getAllUsers, getUserById, createUser, updateUser, deleteUser } from '../controllers/userController.js';

const router = express.Router();

router.get('/', getAllUsers);
router.get('/:id_user', getUserById);
router.post('/', createUser);
router.put('/:id_user', updateUser);
router.delete('/:id_user', deleteUser);

export default router;
