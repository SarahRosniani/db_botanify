import express from 'express';
import bodyParser from 'body-parser';
import dotenv from 'dotenv';
import cors from 'cors';
import tanamanRoutes from './routes/tanamanRoutes.js';
import InfotanamanRoutes from './routes/InfotanamanRoutes.js';
import informasiRoutes from './routes/informasiRoutes.js';
import penangananRoutes from './routes/penangananRoutes.js';
import userRoutes from './routes/userRoutes.js'
import koleksiRoutes from './routes/koleksiRoutes.js'
import { testConnection } from './database/db.js';

dotenv.config();

const app = express();
const PORT = process.env.PORT || 3000;

// Middleware
app.use(cors());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use('/uploads', express.static('uploads'));

// Use routes
app.use('/tanaman', tanamanRoutes);
app.use('/Infotanaman', InfotanamanRoutes);
app.use('/informasi', informasiRoutes);
app.use('/penanganan', penangananRoutes);
app.use('/user', userRoutes);
app.use('/koleksi', koleksiRoutes);

// Test database connection
testConnection();

app.get('/', (req,res)=>{
    return res.status(200).json("ok")
})

// Start server
app.listen(PORT, () => {
    console.log(`Server running at http://localhost:${process.env.APP_PORT}`);
});