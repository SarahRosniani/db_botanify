import multer from 'multer';
import path from 'path';

const storage = multer.diskStorage({
    destination: function (req, file, cb) {
        // direktori upload
        const uploadDir = determineUploadDirectory(req);
        cb(null, uploadDir);
    },
    filename: function (req, file, cb) {
        cb(null, Date.now() + path.extname(file.originalname));
    }
});

function determineUploadDirectory(req) {
    // direktori upload berdasarkan rute atau jenis file
    if (req.url.includes('informasi')) {
        return 'uploads/informasi';
    } else if (req.url.includes('tanaman')) {
        return 'uploads/tanaman';
    } else {
        return 'uploads/random';
    }
}

export const upload = multer({ storage: storage });