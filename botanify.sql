-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2024 at 12:47 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `botanify`
--

-- --------------------------------------------------------

--
-- Table structure for table `informasi`
--

CREATE TABLE `informasi` (
  `id_informasi` int(10) NOT NULL,
  `judul` varchar(250) NOT NULL,
  `isi_artikel` text NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `penerbit` text NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `url` text NOT NULL,
  `foto_informasi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `informasi`
--

INSERT INTO `informasi` (`id_informasi`, `judul`, `isi_artikel`, `kategori`, `penerbit`, `tanggal`, `url`, `foto_informasi`) VALUES
(1, '5 Cara Mudah Rawat Tanaman Indoor, Biar Nggak Layu', '1. Disiram agar tanaman herbal tumbuh subur adalah mencukupi kebutuhan air sesuai jenis tanah, cuaca, hingga jenis tumbuhan yang kamu tanam 2. Nutrisi  memberikan nutrisi pada tanaman, kamu bisa menggunakan pupuk buatan pabrik maupun pupuk alami 3. Pangkas Teratur bertujuan agar bagian tanaman yang layu itu tidak menjalar ke bagian tanaman yang lain 4. Stek dan Mulsa Tanaman yang kurang berkayu ini akan lebih mudah berakar dengan cara stek.', 'pengetahuan', 'Ari Monawati, Desi Rhomadhoni, Nur Rokhimah Hanik', '2024-06-03 10:00:00', 'http://linkkita.com', 'http://foto.com/'),
(6, 'Cara mudah untuk merawat tanaman', 'Sangat dipastikan, kita ingin melihat taman yang ada dirumah kita bersih dan indah. Factor keindahan dari sebuah taman adalah dari tanaman atau tumbuhanya. Maka dari itu kita harus memperhatikan kondisi tanaman tersebut agar tidak mati dan bisa tetap tumbuh. Dengan matinya tanaman pada taman rumah, membuat rumah menjadi tidak indah lagi. Biasanya tanaman yang mati itu karena perawatanya tidak tepat. Sehingga membuat tanaman menjadi mati dan layu. Sinar matahari sangat berguna dan wajib bagi tanaman pada taman, karena dengan adanya matahari membuat tanaman bisa melakukan fotosintetis. Dengan adanya proses fotosintetis, maka tanaman dapat menghasilkan oksigen yang banyak dan baik. Maka dari itu kita harus mencukupi kebutuhan sinar matahari pada taman. Pemberian sinar matahari pun akan berbeda tiap jenis tanamanya, untuk tanaman hias memerlukan 4-6 jam setiap harinya dan untuk sayur dan buah-buahan minimal 6 jam perharinya. Pemilihan tanaman pada taman juga harus memperhatikan kondisi cuaca dan kelembaban area tersebut, maka dari itu dengan menjaga cuaca dan kelembaban yang pas, maka membuat tanaman menjadi lebih susah layu. Kita harus menanam tanaman dengan memperhatikan daerah kita, jika daerah kita berada di dataran rendah maka jangan menanam tanaman yang beriklim subtropics atau tanaman dataran tinggi. Pada umumnya, setiap jenis tanaman membutuhkan air untuk kelangsungan hidupnya. Dengan adanya air juga membuat tanaman menjadi lebih sehat dan tidak kering. Tetapi kebutuhan air pada setiap jenis tanaman itu berbeda-beda. rawatlah tanaman kalian mulai sekarang, agar selalu sehat', 'TipsTrick', 'Redaksi', '2024-06-03 10:00:00', 'http://linkkita.com', 'http://foto.com/');

-- --------------------------------------------------------

--
-- Table structure for table `penanganan`
--

CREATE TABLE `penanganan` (
  `id_penanganan` int(10) NOT NULL,
  `nama_penyakit` varchar(100) NOT NULL,
  `nama_hama` varchar(100) NOT NULL,
  `penanganan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penanganan`
--

INSERT INTO `penanganan` (`id_penanganan`, `nama_penyakit`, `nama_hama`, `penanganan`) VALUES
(1, 'powdery mildew', 'aphids', 'Memastikan sirkulasi udara yang baik di sekitar tanaman, menghindari kelembaban berlebih, dan menggunakan fungisida berbahan dasar sulfur dapat membantu mengendalikan penyakit ini.'),
(3, 'black spot', 'caterpillar', 'Pastikan tanaman tidak terlalu lembab, siram bagian bawah tanaman untuk menjaga daun tetap kering, dan gunakan fungisida berbahan dasar tembaga untuk mengendalikan penyakit ini.');

-- --------------------------------------------------------

--
-- Table structure for table `tanaman`
--

CREATE TABLE `tanaman` (
  `id_tanaman` int(10) NOT NULL,
  `nama_tanaman` varchar(100) NOT NULL,
  `deskripsi_tanaman` text NOT NULL,
  `foto_tanaman` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tanaman`
--

INSERT INTO `tanaman` (`id_tanaman`, `nama_tanaman`, `deskripsi_tanaman`, `foto_tanaman`) VALUES
(4, 'Hortensia', 'Hortensia, dikenal secara internasional dengan nama Hydrangea, adalah tanaman yang terkenal dengan bunganya yang besar dan bulat, tersusun dari banyak bunga kecil yang bisa berwarna biru, merah muda, putih, atau ungu tergantung pada pH tanah. Bunga ini sangat populer sebagai tanaman hias di taman dan pot karena kemampuannya untuk menyala di bawah naungan parsial. Hydrangea membutuhkan tanah yang kaya nutrisi dan kelembapan yang konsisten untuk tumbuh subur.', 'http://foto.com/'),
(5, 'Aglonema', 'Aglonema, atau lebih dikenal sebagai Chinese Evergreen, adalah tanaman hias populer yang tumbuh di dalam ruangan karena kemudahan perawatannya dan kemampuannya bertahan dalam cahaya rendah. Daunnya lebar dan berwarna-warni, seringkali dengan pola berbintik atau berbercak putih, merah muda, atau merah. Aglonema juga berfungsi sebagai pembersih udara yang efektif, menyerap berbagai polutan udara. Tanaman ini ideal untuk pemula karena tahan terhadap kesalahan perawatan.', 'http://foto.com/');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id_informasi`);

--
-- Indexes for table `penanganan`
--
ALTER TABLE `penanganan`
  ADD PRIMARY KEY (`id_penanganan`);

--
-- Indexes for table `tanaman`
--
ALTER TABLE `tanaman`
  ADD PRIMARY KEY (`id_tanaman`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `informasi`
--
ALTER TABLE `informasi`
  MODIFY `id_informasi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `penanganan`
--
ALTER TABLE `penanganan`
  MODIFY `id_penanganan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tanaman`
--
ALTER TABLE `tanaman`
  MODIFY `id_tanaman` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
