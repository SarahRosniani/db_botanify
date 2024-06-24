import pg from 'pg';
import dotenv from 'dotenv';

const { Pool } = pg;

dotenv.config();

const pool = new Pool({
  connectionString: process.env.POSTGRES_URL,
});

pool.connect((err) => {
  if (err) {
    console.error('Database connection failed:', err.stack);
    return;
  }
  console.log('Connected to database.');
});

export const testConnection = async () => {
  try {
    const res = await pool.query('SELECT NOW()');
    console.log('Database connection is alive:', res.rows[0]);
  } catch (err) {
    console.error('Database ping failed:', err.message);
  }
};

export default pool;
