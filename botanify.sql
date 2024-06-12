-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2024 at 06:19 AM
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
-- Table structure for table `infotanaman`
--

CREATE TABLE `infotanaman` (
  `id_infotanaman` int(10) NOT NULL,
  `nama_infotanaman` varchar(100) NOT NULL,
  `deskripsi_infotanaman` text NOT NULL,
  `foto_infotanaman` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `infotanaman`
--

INSERT INTO `infotanaman` (`id_infotanaman`, `nama_infotanaman`, `deskripsi_infotanaman`, `foto_infotanaman`) VALUES
(1, 'Mawar', 'Mawar atau ros (Rosa) adalah tumbuhan perdu, pohonnya berduri, bunganya berbau wangi dan berwarna indah, terdiri atas daun bunga yang bersusun; meliputi ratusan jenis, tumbuh tegak atau memanjat, batangnya berduri, bunganya beraneka warna, seperti merah, putih, merah jambu, merah tua, dan berbau harum. Mawar liar terdiri dari 100 spesies lebih, kebanyakan tumbuh di belahan bumi utara yang berudara sejuk. Spesies ini umumnya merupakan tanaman semak yang berduri atau tanaman memanjat yang tingginya bisa mencapai 2 sampai 5 meter. Walaupun jarang ditemui, tinggi tanaman mawar yang merambat di tanaman lain bisa mencapai 20 meter.\\nSebagian besar spesies mempunyai daun yang panjangnya antara 5-15 cm dengan dua-dua berlawanan (pinnate). Daun majemuk yang tiap tangkai daun terdiri dari paling sedikit 3 atau 5 hingga 9 atau 13 anak daun dan daun penumpu (stipula) berbentuk lonjong, pertulangan menyirip, tepi tepi beringgit, meruncing pada ujung daun dan berduri pada batang yang dekat ke tanah. Mawar sebetulnya bukan tanaman tropis, sebagian besar spesies merontokkan seluruh daunnya dan hanya beberapa spesies yang ada di Asia Tenggara yang selalu berdaun hijau sepanjang tahun.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Mawar.jpg?alt=media&token=c6d7da5a-59dd-46af-b4dc-db133c141b1b '),
(2, 'Anthurium', 'Anthurium termasuk tanaman dari keluarga Araceae. Tanaman berdaun indah ini masih berkerabat dengan sejumlah tanaman hias populer semacam aglaonema, philodendron, keladi hias, dan alokasia. Dalam keluarga araceae, anthurium adalah genus dengan jumlah jenis terbanyak. Diperkirakan ada sekitar 1000 jenis anggota marga anthurium.\\nTanaman ini termasuk jenis tanaman evergreen atau tidak mengenal masa dormansi. Dialam, biasanya tanaman ini hidup secara epifit dengan menempel di batang pohon. Dapat juga hidup secara terestrial di dasar hutan.\\nDaya tarik utama dari anthurium adalah bentuk daunnya yang indah, unik, dan bervariasi. Daun umumnya berwarna hijau tua dengan urat dan tulang daun besar dan menonjol. Sehingga membuat sosok tanaman ini tampak kekar namun tetap memancarkan keanggunan tatkala dewasa. Tidak heran bila tanaman ini memiliki kesan mewah dan eksklusif. Dimasa lalu, anthurium banyak menjadi hiasan taman dan istana kerajaan-kerajaan di Jawa. Konon, dipuja sebagai tanaman para raja.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Anthurium.jpg?alt=media&token=d4295d71-0b3d-4ad3-b47d-4ea36f09cf63'),
(3, 'Dieffenbachia', 'Dieffenbachia adalah tanaman hias populer yang biasa ditanam di pekarangan. Keindahannya berasal dari bentuk tajuk dan juga warna daunnya yang bervariasi: hijau dengan bercak-bercak hijau muda atau kuning. Di kalangan penjual tanaman hias, Dieffenbachia dikenal pula sebagai daun bahagia atau bunga bahagia.\\nDieffenbachia juga dikenal mudah dalam perawatan dan perbanyakannya. Tanaman ini tahan dalam ruangan meskipun untuk jangka tertentu perlu diperlakukan pula di ruang terbuka. Warna daunnya cenderung gelap bila ditempatkan dalam ruang atau di bawah naungan, tetapi menjadi terang cerah di bawah sinar matahari. Perbanyakannya umum dilakukan dengan stek.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Dieffenbachia.jpg?alt=media&token=815ad5cb-9d6d-47a1-8ced-43f4899edb45'),
(4, 'Dracaena', 'DRACAENA merupakan kelompok tumbuhan yang anggotanya sangat beragam, termasuk dalam suku Asparagaceae. Kelompok tumbuhan ini memiliki perawakan pohon, perdu ataupun terna, daunnya sangat beragam bentuk dan warnanya serta memiliki bunga  majemuk yang tersusun dalam rangkaian tandan atau  malai.\\nBunga tunggalnya memiliki  perhiasan berwarna kuning pucat kehijauan, berbentuk tabung, dan harum baunya. Sehingga istilah harum dalam bahasa ilmiahnya fragrans\\u201d disematkan sebagai nama penunjuk jenis pada salah satu jenisnya yaitu Dracaena fragrans.\\nJenis tersebut berbatang kokoh dan berkayu, berwarna putih kecokelatan, dengan daun  lanset memanjang. Bunganya tersusun dalam rangkaian malai berwarna putih kotor, lembayung pucat jika mekar dan harum baunya.\\nDalam Plant of the World Online disebutkan, bahwa jenis tersebut tumbuh di lahan kering daerah tropik dan berpotensi sebagai pembersih lingkungan, serta sebagai obat dan makanan. Namun masih diperlukan penelitian lebih lanjut untuk potensinya. Yang jelas, jenis ini sudah banyak ditanam di Indonesia sebagai tanaman hias.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/dracaena.jpg?alt=media&token=958eb34e-3cf3-48e3-bf02-97e456cbaffa'),
(5, 'Euphorbia', 'Euphorbia adalah salah satu genus tumbuhan berbunga terbesar yang memiliki 2.420 spesies. Jenis bunga dari genus ini banyak yang memiliki peran penting bagi manusia.Fungsi penting tersebut diantaranya adalah sebagai tanaman hias, obat-obatan dan juga gulma. Orang Afrika menggunakan tumbuhan ini untuk kandang ternak. Di Meksiko tumbuhan dari genus Euphorbia digunakan sebagai bahan pembuat lilin, pelumas, dan kertas waterproofing.\\n Genus ini juga sering disebut spurge. Euphorbia memiliki getah susu. Jenis tanaman dari genus ini bervariasi mulai dari tumbuhan yang tumbuh merayap herbal, datar, sekulen, semak, dan juga berupa pohon. Euphorbia memiliki satu bunga betina terdiri dari satu struktur reproduksi betina yaitu putik serta dikelilingi oleh banyak bunga jantan dari masing-masing satu benang.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Euphorbia.jpg?alt=media&token=00610e4b-bd7b-4a97-9568-52aea47afc78'),
(6, 'Hanjuang', 'Hanjuang atau andong secara ilmiah dalam bahasa Latin dinamakan sebagai Cordyline fruticosa dan disinonimkan sebagai Cordyline terminalis. Secara internasional dalam bahasa Inggris tumbuhan ini dikenal dengan nama ti plant, bongbush, cabbage pal, palm lily atau ti palm. Di Inggris tanaman ini lebih populer dengan nama good luck plant atau tree of kings.Kata Cordell pada nama genusnya berasal dari bahasa Yunani dengan arti yang mengacu pada batang dan akar bawah tanahnya yang membesar (Cordyline Fruticosa NBATAT, 2023).\\nSpesies ini dinamai oleh Linnaeus sebagai Convallaria fruticosa pada tahun 1754, sebagai Asparagus fruticosa pada tahun 1767 dan juga sebagai Dracaena terminalis pada tahun 1767. Dinamakan Cordyline ti oleh Schott pada tahun 1828 dan terakhir sebagai Cordylinefruticosa oleh Chevalier pada tahun 1919. Banyak sinonim lain yang telah diterapkan pada spesies ini dalam genera Cordyline, Dracaena dan Taetsia. Namun masih sering disebut sebagai C. terminalis (L.) Kunth, meskipun Daftar Tumbuhan (Plant List) menunjukkan bahwa nama ini sebenarnya tidak valid (Simpson, 2022).', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Hanjuang.jpeg?alt=media&token=f600614d-ebb9-4d64-ba0b-37782e68214c'),
(7, 'Herbras', 'Herbras (Gerbera) adalah tanaman hias yang termasuk dalam keluarga Asteraceae. Herbras adalah tanaman semak yang hidup bertahun-tahun (perenial), daunnya berbentuk memanjang, berwarna hijau dengan pinggiran daun bergerigi besar.Gerbera diambil dari nama Traugott Gerber seorang dokter Jerman yang merupakan teman Carolus Linnaeus. Nama spesies Gerbera jamesonii (Barberton daisy) diambil dari nama kolektor tanaman bernama Robert Jameson yang menemukan tanaman ini di provinsi Transvaal, Afrika Selatan.\\nHerbras terdiri dari sekitar 2.000 kultivar dengan bunga yang mempunyai bentuk beraneka ragam dan ukuran diameter antara 5\\u201312 cm. Bunga Herbras memiliki bongkol (capitulum) besar yang merupakan pokok dari 2 lapis rangkaian daun mahkota (disebut ray floret) berbentuk panjang yang berwarna-warni menarik: oranye, kuning, merah jambu, merah, putih, pink salmon, dan ungu. Bagian bongkol juga terdiri dari susunan ratusan bunga kecil-kecil (trans floret dan disc floret) sehingga terlihat menyerupai satu bunga yang utuh. Pada bagian tengah bongkol kadang-kadang berwarna gelap. Pada bunga yang sama juga sering dijumpai perbedaan warna pada daun mahkota.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Herbras-Gerbera.jpg?alt=media&token=5e943336-7d29-4eee-8652-cffdabd64c0f'),
(8, 'Kamboja Jepang', 'Kamboja jepang atau adenium (Adenium) adalah spesies tanaman hias, batangnya besar, bagian bawahnya menyerupai umbi, batangnya tidak berkambium, akarnya dapat membesar menyerupai umbi, bentuk daunnya panjang ada yang lonjong, runcing, kecil, dan besar, warna bunganya bermacam-macam.\\nBunga ini disebut juga dengan mawar padang pasir (desert rose). Karena berasal dari daerah kering, tanaman ini tumbuh lebih baik pada kondisi media yang kering dibanding terlalu basah. Disebut sebagai adenium karena salah satu tempat asal adenium adalah daerah Aden (Ibu kota Yaman).\\nMasyarakat Indonesia menamakan adenium sebagai kamboja jepang, mungkin dikaitkan dengan stereotipe yang beredar. Contohnya buah-buahan yang besar biasa disebut sebagai Bangkok, sedangkan tanaman yang kecil-kecil biasa disebut Jepang. Oleh karena itu, jika dahulu kala sudah ada kamboja yang sosok tanamannya tinggi besar maka begitu ada tanaman yang sosoknya kecil tapi mirip kamboja, disebutlah sebagai kamboja jepang.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Kamboja-Jepang.jpg?alt=media&token=b45a5d80-df1d-4b2e-b2bc-42b45dd8924b'),
(9, 'Keladi', 'Keladi merupakan sekelompok tumbuhan dari genus Caladium, suku talas-talasan (Araceae). Dalam bahasa sehari-hari keladi kerap juga dipakai untuk menyebut beberapa tumbuhan lain yang masih sekerabat namun tidak termasuk Caladium, seperti talas (Colocasia). Keladi sejati jarang membentuk umbi yang membesar. Asal tumbuhan ini dari hutan Brazil namun sekarang tersebar ke berbagai penjuru dunia.\\nPenciri yang paling khas dari keladi adalah bentuk daunnya yang seperti simbol hati/jantung. Daunnya biasanya licin dan mengandung lapisan lilin. Ukuran keladi tidak pernah lebih daripada 1 m. Beberapa jenis dan hibridanya dipakai sebagai tanaman hias pekarangan.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Keladi-Hias.jpg?alt=media&token=7998ef78-e0b1-432b-a066-93ac166b93e1 '),
(10, 'Bunga Krisan', 'Bunga krisan (Chrysanthemum), satu jenis tanaman berbunga dari suku Asteraceae yang biasa dinamai bunga potong atau bunga emas. Chrysos dalam bahasa Yunani berarti emas, sedangkan anthemon berarti bunga.Tampilan warna bunganya yang eksotik berkilauan membuat bunga ini kerap dijadikan bunga spesial pelengkap sebuah kado atau pada acara-acara formal tertentu.\\nKrisan juga dapat melengkapi dekorasi tata ruang untuk pesta pernikahan  atau ulang tahun. Di Indonesia, bunga ini lebih dikenal dengan istilah bunga seruni. Di sejumlah Negara, tanaman berbunga ini juga dinamai bunga krisanium.Karena tampilannya yang indah, krisan diidentikkan dengan romantisme atau bunga cinta. Seorang pria yang ingin mengajak kekasihnya bertunangan, tak jarang dihaturkan dengan membawa bunga krisan.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Krisan.jpg?alt=media&token=8e4a3ac7-d010-4ae8-8fca-29ec4cbf7b3d'),
(11, 'Melati', 'Melati, melur, atau yasmin (Jasminum) merupakan tanaman bunga hias berupa perdu berbatang tegak yang hidup menahun. Melati merupakan genus dari semak dan tanaman merambat dalam keluarga zaitun (Oleaceae). Terdiri dari sekitar 200 spesies tumbuhan asli daerah beriklim tropis dan hangat dari Eurasia, Australasia dan Oseania, melati secara luas dibudidayakan untuk aroma khas bunganya yang harum. Di Indonesia, salah satu jenis melati telah dipilih menjadi puspa bangsa atau bunga simbol nasional yaitu melati putih (Jasminum sambac), karena bunga ini melambangkan kesucian dan kemurnian, serta dikaitkan dengan berbagai tradisi dari banyak suku di negara ini.\\nBunga ini merupakan bagian yang tidak terpisahkan dari hiasan rambut pengantin perempuan dalam upacara perkawinan berbagai suku di Indonesia, terutama suku Jawa dan Sunda. Jenis lain yang juga populer adalah melati gambir (J. officinale). Di Indonesia nama melati dikenal oleh masyarakat di seluruh wilayah Nusantara. Nama-nama daerah untuk melati adalah Menuh (Bali), Meulu atau Riwat (Aceh),[2] Menyuru (Banda), Melur (Gayo dan Batak Karo), Manduru (Menado), Mundu (Bima dan Sumbawa) dan Manyora (Timor), Melati Salam (UMI), Malete (Madura) serta Beruq-beruq (Mandar).', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Melati.jpg?alt=media&token=432e8a21-a3ec-40ef-a323-ea76cc8d86d5'),
(12, 'Monstera', 'Tanaman Monstera terkenal dengan daunnya yang cukup besar dan berwarna hijau. Daun inilah yang memberi kesan eksklusif jika dipajang di ruangan. Manfaat alaminya, Monstera dapat meningkatkan kualitas udara karena ia memproduksi oksigen, terutama di malam hari.Tanaman Monstera ini jika dipelihara dapat tumbuh hingga 20 meter. Batangnya tinggi, besar, kasar, dan mengkilap. Daunnya berbentuk hati, dengan panjang 25 hingga 90 sentimeter. Luas daunnya mulai dari 25 hingga 75 sentimeter.\\nDilansir dari laman Gardening, Monstera biasanya tumbuh di suhu 20 hingga 30 derajat celsius. Ia merupakan tanaman yang membutuhkan kelembaban tinggi. Wajar saja, tanaman Monstera berasal dari hutan tropis yang sering terkena hujan. Lubang di daunnya berfungsi untuk meloloskan air dari derasnya hujan.Jika Monstera ditanam di tanah subur, ukuran daunnya akan melebar. Namun, jika ditanam di pot, ukuran daunnya kecil, biasanya seukuran telapak tangan orang dewasa.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Monstera.jpg?alt=media&token=e0f7880e-2364-44cb-bd03-a508304ccfa6'),
(13, 'Kembang Sepatu', 'Tumbuhan paku, paku-pakuan, atau pakis-pakisan adalah sekelompok tumbuhan dengan sistem pembuluh sejati (Tracheophyta) tetapi tidak pernah menghasilkan biji untuk reproduksi seksualnya. Alih-alih biji, kelompok tumbuhan ini melepaskan spora sebagai alat penyebarluasan dan perbanyakannya, menyerupai kelompok organisme seperti lumut dan fungi.Tumbuhan paku tersebar di seluruh bagian dunia, kecuali daerah bersalju abadi dan lautan, dengan kecenderungan ditemukan tumbuh di tempat-tempat yang tidak subur untuk pertanian. Total spesies yang diketahui sekitar 12.000, dengan perkiraan 1.300 sampai 3000 lebih spesies di antaranya tumbuh di kawasan Malesia (yang mencakup Indonesia).\\nPengelompokan klasik anggota tumbuhan paku (Pteridophyta, dalam arti luas, mis. menurut Haeckel (1866)) pada pengetahuan terkini dianggap bersifat parafiletik. Dari kelompok-kelompok cabang utama tumbuhan berpembuluh, satu kelompok yang mencakup paku kawat, kumpai, serta rane, ternyata memisah paling awal dari kelompok lainnya.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Kembang-sepatu.jpg?alt=media&token=3d9ad75c-f588-49e7-a9c3-f7d62668c597'),
(14, 'Palem', 'Bentuk pohon palem sekilas mirip dengan pohon kelapa. Tidak hanya mirip, tumbuhan palem memang masih satu keluarga dengan pohon kelapa. Kemampuan adaptasi tanaman palem cukup hebat, karena mampu hidup di berbagai kawasan. Tanaman ini dapat tumbuh di tanah yang subur sampai gersang sekalipun.Pohon palem tumbuh di daerah yang beriklim tropis dan subtropis. Artinya tanaman palem dapat dikembangkan di Indonesia. Spesies pohon palem tersebar di penjuru dunia, ada sekitar 3.000 spesies.\\nKemampuannya mampu beradaptasi di berbagai lingkungan, menjadikan tanaman palem sering dimanfaatkan sebagai tanaman hias. Tanaman ini juga perawatannya cukup mudah. Keindahan pohon ini juga dimanfaatkan masyarakat sebagai penghias pekarangan rumah.Ukuran tanaman ini sangat bervariatif, ada yang besar, sedang hingga kecil, tergantung pada jenis-jenisnya.Meskipun perawatannya cukup mudah, namun untuk menanam tanaman ini juga perlu beberapa teknik. Dari pembuatan lubang tanaman, jarak penanamannya dan harus menyesuaikan jenis pohon palem yang akan ditanam.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Palem.jpg?alt=media&token=cb31c01c-a234-4189-99c5-374bf8d0217e'),
(15, 'Philodendron', 'Philodendron adalah genus tanaman berbunga yang berasal dari daerah tropis Amerika. Tanaman ini terkenal dengan daunnya yang berbentuk hati atau oval, dengan warna hijau yang bervariasi dari hijau tua hingga hijau muda. Philodendron sering digunakan sebagai tanaman hias dalam ruangan karena penampilannya yang menarik dan kemampuannya untuk tumbuh baik dalam kondisi cahaya rendah maupun terang. Tanaman ini mudah dirawat, hanya membutuhkan penyiraman saat lapisan atas tanah mulai mengering dan media tanam dengan drainase yang baik. Selain itu, Philodendron juga dikenal memiliki kemampuan untuk menyaring polutan udara, sehingga membantu meningkatkan kualitas udara dalam ruangan.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Philodendron.jpg?alt=media&token=95627b7c-f370-4d5a-83fc-5f72721bd8fc'),
(16, 'Pisang-Pisangan', 'Pisang-Pisangan (Heliconia) adalah tanaman hias yang terkenal dengan bunganya yang spektakuler dan berwarna cerah, sering kali berwarna merah, oranye, kuning, atau merah muda. Bunganya tumbuh dalam tandan yang terlihat seperti paruh burung, yang seringkali dikira sebagai bunga tetapi sebenarnya adalah bracts (seludang bunga) yang melindungi bunga sejati di dalamnya.Daun Heliconia besar, panjang, dan berbentuk pisau, mirip dengan daun pisang, dengan tekstur yang halus dan warna hijau tua. Tanaman ini tumbuh dengan cepat dan bisa mencapai tinggi antara 1 hingga 6 meter, tergantung pada spesiesnya.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Pisang-Pisangan.jpg?alt=media&token=027b16ac-d731-4e86-a263-b107e6dc004c'),
(17, 'Sedap Malam', 'Sedap Malam (Tuberose) adalah tanaman berbunga yang dikenal dengan nama ilmiah Polianthes tuberosa. Tanaman ini berasal dari Meksiko dan sangat populer karena bunga putihnya yang indah dan harum. Sedap Malam tumbuh dari umbi dan memiliki batang tegak yang bisa mencapai tinggi hingga 45-90 cm. Bunga-bunga Sedap Malam biasanya mekar di malam hari, mengeluarkan aroma yang kuat dan manis, sehingga sering digunakan dalam pembuatan parfum. Tanaman ini juga sering ditanam sebagai tanaman hias di kebun dan taman, serta digunakan dalam rangkaian bunga dan upacara adat di berbagai budaya. Sedap Malam membutuhkan sinar matahari penuh atau sebagian dan tanah yang subur dengan drainase yang baik.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Sedap-malam.jpg?alt=media&token=a8e496e4-bf5c-4143-af62-8d2c9bb947a2'),
(18, 'Soka', 'Ixora, dikenal sebagai Soka di Indonesia, adalah genus tanaman berbunga dalam keluarga Rubiaceae. Tanaman ini berasal dari daerah tropis dan subtropis Asia, terutama ditemukan di India dan Sri Lanka. Ixora dikenal dengan bunganya yang kecil dan berwarna cerah, yang tumbuh dalam kelompok padat dan membentuk bentuk bola atau payung. Warna bunga bervariasi dari merah, oranye, kuning, hingga putih. Tanaman Soka sering digunakan sebagai tanaman hias di taman dan sebagai tanaman pagar karena bentuknya yang rapi dan kemampuan berbunga sepanjang tahun. Tanaman ini tumbuh baik di bawah sinar matahari penuh atau setengah teduh dan memerlukan penyiraman yang teratur tetapi tidak berlebihan. Selain keindahannya, Ixora juga memiliki nilai budaya dan sering digunakan dalam berbagai upacara dan tradisi di beberapa budaya Asia.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Soka.jpg?alt=media&token=bc5c0cf5-54a4-40df-a80c-7fd9ecf09fc6'),
(19, 'Sri Rejeki', 'Sri Rejeki, atau Aglaonema, adalah genus tanaman hias yang berasal dari Asia Tenggara. Tanaman ini dikenal karena daunnya yang indah, berbentuk oval dengan berbagai kombinasi warna hijau, perak, merah, atau merah muda. Aglaonema sangat populer sebagai tanaman dalam ruangan karena toleransinya terhadap kondisi cahaya rendah dan kemudahan perawatannya. Tanaman ini membutuhkan penyiraman teratur, tetapi tidak berlebihan, dan tumbuh baik di tanah yang lembab namun memiliki drainase baik. Selain menjadi dekorasi yang menarik, Aglaonema juga dikenal mampu menyaring polutan udara dalam ruangan, meningkatkan kualitas udara.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Sri-rejeki.jpg?alt=media&token=9ac78e74-fb38-48ce-a5f0-7e5dea9db789'),
(20, 'Bromelia', 'Bromelia adalah genus tanaman berbunga dari keluarga Bromeliaceae, yang berasal dari daerah tropis Amerika. Tanaman ini dikenal dengan daun yang kaku dan berduri, seringkali berwarna cerah atau berpola menarik. Bromelia tumbuh dalam roset padat dan menghasilkan bunga yang mencolok di tengah roset. Mereka dapat tumbuh di tanah maupun epifit di pohon. Tanaman Bromelia relatif mudah dirawat, memerlukan cahaya terang hingga teduh parsial, dan penyiraman yang teratur tanpa membiarkan tanah terlalu basah. Selain itu, Bromelia dapat membantu meningkatkan kualitas udara dalam ruangan dengan menyaring polutan.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Bromelia.jpg?alt=media&token=03ffdf4d-a9ee-4cd7-8d90-6f4d653633a4'),
(21, 'Bugenvil', 'Bugenvil, atau Bougainvillea, adalah tanaman hias berbunga yang berasal dari Amerika Selatan. Tanaman ini terkenal dengan brakteanya yang berwarna cerah, yang sering kali disalahartikan sebagai bunganya. Brakteanya bisa berwarna merah, ungu, pink, putih, oranye, atau kuning. Bugenvil merupakan tanaman yang tahan terhadap kondisi kering dan membutuhkan sinar matahari penuh untuk tumbuh optimal. Tanaman ini bisa tumbuh sebagai semak, merambat, atau tanaman pagar, dan sering digunakan dalam lanskap taman tropis dan subtropis. Bugenvil juga mudah dirawat dan dapat diperbanyak melalui stek batang.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Bugenvil.jpg?alt=media&token=b919cd8a-c046-402d-bffe-7ddfbc6c0906'),
(22, 'Lidah Mertua', 'Sansevieria, juga dikenal sebagai pedang-pedangan atau lidah mertua, adalah tanaman hias yang populer karena keindahan dan kemudahan perawatannya. Tanaman ini memiliki daun tegak, tebal, dan berdaging, yang biasanya berwarna hijau dengan pola garis-garis horizontal atau tepian kuning. Sansevieria mampu bertahan dalam berbagai kondisi cahaya, termasuk cahaya rendah, dan memerlukan sedikit air, menjadikannya ideal untuk pemula. Selain sebagai dekorasi, Sansevieria juga memiliki kemampuan untuk meningkatkan kualitas udara dengan menyaring polutan berbahaya, seperti formaldehida dan benzena.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Lidah-mertua.jpg?alt=media&token=fa9dac78-f1c3-4ce6-92bc-afa67132a643'),
(23, 'Anggrek pot', 'Anggrek pot (Potted Orchid) adalah tanaman hias populer yang dikenal dengan bunga-bunganya yang indah dan beragam warna, seperti putih, ungu, kuning, dan merah muda. Tanaman ini tumbuh dalam pot dan cocok untuk diletakkan di dalam ruangan dengan cahaya terang tetapi tidak langsung. Anggrek memerlukan penyiraman yang teratur namun tidak berlebihan, dan media tanam yang memiliki drainase baik. Dengan perawatan yang tepat, anggrek pot dapat berbunga selama beberapa bulan, menambah keindahan dan elegansi pada setiap ruangan.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Anggrek-pot.jpg?alt=media&token=ccdb2384-58aa-42f1-9b38-4af175f96a60'),
(24, 'Puring', 'Puring, juga dikenal sebagai Croton, adalah tanaman hias populer yang berasal dari daerah tropis Asia Tenggara dan Pasifik. Tanaman ini terkenal dengan daun-daunnya yang berwarna-warni, termasuk merah, kuning, hijau, oranye, dan bahkan ungu, dengan berbagai pola dan bentuk. Croton membutuhkan cahaya terang untuk mempertahankan warna daunnya yang cerah dan lebih menyukai kondisi tanah yang lembap namun tidak terlalu basah. Tanaman ini sering digunakan untuk mempercantik taman atau ruangan dalam rumah karena penampilannya yang mencolok dan kemampuannya untuk tumbuh dengan baik di berbagai kondisi lingkungan.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Puring.jpg?alt=media&token=9a9d7227-8264-4306-b3c4-724d1fb13c96'),
(25, 'Aglonema', 'Aglonema, atau lebih dikenal sebagai Chinese Evergreen, adalah tanaman hias populer yang tumbuh di dalam ruangan karena kemudahan perawatannya dan kemampuannya bertahan dalam cahaya rendah. Daunnya lebar dan berwarna-warni, seringkali dengan pola berbintik atau berbercak putih, merah muda, atau merah. Aglonema juga berfungsi sebagai pembersih udara yang efektif, menyerap berbagai polutan udara. Tanaman ini ideal untuk pemula karena tahan terhadap kesalahan perawatan.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/info%20tanaman%2FAglonema%20.jpg?alt=media&token=1f730ae5-834a-40b4-a357-4a8b13d91549'),
(26, 'Hortensia ', 'Hortensia, dikenal secara internasional dengan nama Hydrangea, adalah tanaman yang terkenal dengan bunganya yang besar dan bulat, tersusun dari banyak bunga kecil yang bisa berwarna biru, merah muda, putih, atau ungu tergantung pada pH tanah. Bunga ini sangat populer sebagai tanaman hias di taman dan pot karena kemampuannya untuk menyala di bawah naungan parsial. Hydrangea membutuhkan tanah yang kaya nutrisi dan kelembapan yang konsisten untuk tumbuh subur.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/info%20tanaman%2FHortensia.jpg?alt=media&token=3ee8c5e7-3c66-4e0f-a5dc-eefcc2a424d0'),
(27, 'Anthurium', 'Anthurium, atau Flamingo Flower, adalah tanaman tropis yang menarik dengan daun hijau mengkilap yang tebal dan bunga yang terlihat seperti lembaran lilin dengan tongkol kuning di tengahnya. Bunga yang sering disalahartikan sebagai kelopak bunga ini sebenarnya adalah bract, yang bisa berwarna merah, merah muda, putih, atau hijau. Anthurium populer di dalam ruangan karena membutuhkan perawatan yang relatif rendah namun menyediakan aksen warna yang cerah.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/info%20tanaman%2FAnthurium.jpg?alt=media&token=e225908a-3109-4c72-9a4e-af1fbb7b5273'),
(28, 'Calathea', 'Calathea, atau yang dikenal juga dengan nama Prayer Plant, mencolok dengan daunnya yang memiliki pola unik dan sering kali berwarna-warni. Tanaman ini mendapatkan julukan \'Prayer Plant\' karena daunnya yang mengangkat dan menurunkan dari hari ke malam, seperti berdoa. Calathea menyukai lingkungan yang lembap dan tidak terlalu terang, menjadikannya tanaman dalam ruangan yang ideal, terutama di kamar mandi atau dapur dimana kelembapan lebih tinggi.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/info%20tanaman%2FCalathea.jpg?alt=media&token=3b73effe-ec65-4b69-90bd-6f78d0e68cbf'),
(29, 'Kuping Gajah', 'Kuping Gajah dikenal dengan daunnya yang besar, lebar, dan berbentuk seperti telinga gajah. Tanaman ini cocok untuk iklim tropis seperti di Indonesia, tumbuh subur di bawah naungan dengan tanah yang kaya nutrisi dan lembap. Kuping Gajah tidak hanya menarik secara visual, tetapi juga mudah perawatannya.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/info%20tanaman%2FKuping%20Gajah.jpg?alt=media&token=bb005887-7319-44d9-86a3-a0de481d6d12'),
(30, 'Palem Bambu ', 'Palem Bambu merupakan tanaman dalam ruangan yang populer karena kemampuannya menyaring udara dan menambahkan kehijauan tropis pada dekorasi. Daunnya yang rimbun dan batangnya yang mirip bambu menjadikannya pilihan yang tepat untuk sudut-sudut ruangan. Palem ini tumbuh optimal di tempat teduh dan memerlukan penyiraman teratur.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/info%20tanaman%2FPalem%20Bambu.jpg?alt=media&token=daeec8e3-6867-40f0-afa6-1c70006bfbb3'),
(31, 'Cemara Udang', 'Cemara Udang atau (Foxtail Fern, Asparagus densiflorus) bukanlah fern sejati melainkan memiliki daun yang sangat mirip dengan ekor rubah, berwarna hijau cerah dan tekstur yang menarik. Tanaman ini tahan terhadap iklim tropis dan cocok untuk dijadikan tanaman hias baik di dalam maupun luar ruangan di Indonesia, karena tahan terhadap panas dan membutuhkan sedikit perawatan.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/info%20tanaman%2Fcemara%20udang.jpg?alt=media&token=90f26741-66c8-4401-b098-3ad0f211cac8'),
(32, 'Flamingo Lily ', 'Flamingo Lily dengan nama latin Anthurium andraeanum menonjol dengan bunganya yang berwarna cerah dan daun berkilau yang berbentuk hati. Tanaman ini cocok untuk iklim hangat dan lembap Indonesia, menambahkan sentuhan warna cerah di dalam rumah. Memerlukan tanah yang terus-menerus lembap dan cahaya terang tidak langsung.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/info%20tanaman%2Fflamingo%20lily.jpg?alt=media&token=9cedb082-a2f0-4579-8f46-c957732c973c'),
(33, 'Gelombang Cinta', 'Gelombang Cinta (Wave of Love, Anthurium plowmanii) adalah tanaman yang unik dengan daun besar yang bergelombang. Dikenal karena teksturnya yang khas dan kebutuhan perawatan yang minimal. Tanaman ini tumbuh baik dalam kondisi setengah teduh di Indonesia dan cocok sebagai tanaman pot atau taman batu.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/info%20tanaman%2FGelombang%20Cinta.jpg?alt=media&token=92b733a8-7a66-44f6-87fd-bf2f9db71615'),
(34, 'Pohon Lipstik', 'Pohon Lipstik (Lipstick Plant, Aeschynanthus radicans) adalah tanaman gantung yang unik dengan bunga berwarna merah terang yang menyerupai bentuk lipstick. Tanaman ini ideal untuk iklim tropis dan sangat cocok digantung di teras atau balkon rumah di Indonesia. Butuh cahaya terang tidak langsung dan kelembapan tinggi untuk tumbuh optimal.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/info%20tanaman%2FPohon%20Lipstik.jpg?alt=media&token=7618a6cc-e159-4d5f-99b3-4687bf532b02'),
(35, 'Bunga Matahari', 'Bunga Matahari (Sunflower, Helianthus annuus) adalah tanaman berbunga yang menyenangkan dengan bunga besar yang menghadap ke arah matahari. Di Indonesia, Bunga Matahari sering ditanam di kebun sebagai tanaman penarik lebah dan pemberi keceriaan dengan bunganya yang besar dan cerah. Ideal ditanam di area yang menerima sinar matahari penuh.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/info%20tanaman%2FBunga%20Matahari_Sunflower.jpg?alt=media&token=0bd98acb-0323-4d85-a58d-f3f97dd1b94d'),
(36, 'Lavender', 'Lavender (Lavender, Lavandula angustifolia) meskipun lebih dikenal di iklim sedang, Lavender dapat tumbuh di Indonesia dengan perawatan yang tepat, terutama di daerah yang lebih sejuk seperti dataran tinggi. Tanaman ini dikenal dengan aroma terapeutiknya dan bunganya yang indah, sering digunakan dalam produk kecantikan dan relaksasi.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/info%20tanaman%2FLavender.jpg?alt=media&token=410116cf-a1cc-426d-b7a5-0f5efe0b5448'),
(37, 'Bunga Tahi Kotok', 'Bunga Tahi Kotok (Crown of Thorns, Euphorbia milii) adalah tanaman hias yang tahan terhadap iklim panas dan kering. Dikenal dengan duri pada batangnya dan bunga kecilnya yang menawan, cocok untuk taman kering atau sebagai tanaman pot di Indonesia yang minim perawatan.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/info%20tanaman%2FBunga%20tahi%20kotok.jpg?alt=media&token=e86a675c-261b-4830-a221-9f1d1e4d6962'),
(38, 'Taro', 'Taro (Taro, Colocasia esculenta) bukan hanya tanaman pangan tetapi juga dihargai sebagai tanaman hias karena daunnya yang besar dan dramatis. Tumbuh subur di tanah lembap dan kaya nutrisi, taro adalah pilihan populer untuk taman air atau area lembap lainnya di Indonesia.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/info%20tanaman%2FTaro.jpg?alt=media&token=3e70286f-565d-4be0-bd13-77e652c1f5b0'),
(39, 'Bunga Kupu-Kupu', 'Bunga Kupu-Kupu (Butterfly Pea, Clitoria ternatea) terkenal dengan bunganya yang berwarna biru cerah dan berbentuk seperti kupu-kupu. Bunga ini tidak hanya indah tetapi juga memiliki khasiat herbal dan sering digunakan dalam teh herbal. Tumbuh baik di iklim tropis dengan penyiraman yang teratur.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/info%20tanaman%2FButterfly%20Pea.jpg?alt=media&token=e863b5af-df57-4543-a7ef-a80bb232093e'),
(40, 'Kemboja', 'Kemboja (Frangipani, Plumeria sp.) adalah tanaman hias yang sering dijumpai di Indonesia, terkenal dengan bunganya yang harum dan indah, sering digunakan dalam ritual keagamaan dan upacara adat. Cocok tumbuh di daerah tropis dengan sinar matahari penuh', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/info%20tanaman%2FKemboja.jpg?alt=media&token=e3b7b5bd-ff4e-43b8-9bc5-86a509e20523'),
(41, 'Bunga Vinca', 'Bunga Vinca (Periwinkle, Catharanthus roseus) adalah tanaman hias yang tahan lama dengan bunga kecil berwarna merah muda, putih, atau ungu. Tanaman ini mudah dirawat, tahan terhadap kekeringan, dan cocok untuk iklim panas di Indonesia.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/info%20tanaman%2FBunga%20Vinca.jpg?alt=media&token=7074a04f-5fc4-42f5-a045-5963625c2a11'),
(42, 'Bunga Telang', 'Bunga Telang (Bluebell Vine, Thunbergia grandiflora) adalah tanaman merambat dengan bunga berwarna biru atau ungu yang indah. Tanaman ini tumbuh subur di iklim tropis dan cocok sebagai tanaman penutup pagar atau pergola.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/info%20tanaman%2FBunga%20Telang.jpg?alt=media&token=e24fec96-a6a6-45fd-9769-a6563b467565'),
(43, 'Pandanus', 'Pandanus atau Mengkuang adalah tanaman yang sering ditemukan di daerah pantai dan memiliki daun yang panjang dan tajam, sering digunakan untuk kerajinan tangan. Tumbuh baik di tanah berpasir dan area berangin.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/info%20tanaman%2FPandanus.jpg?alt=media&token=7aacc211-7e33-48fe-97cc-545337e1950d'),
(44, 'Pucuk Merah ', 'Pucuk Merah adalah tanaman hias populer di Indonesia dengan daun muda berwarna merah yang menjadi hijau saat tua. Tanaman ini tumbuh cepat dan sering digunakan sebagai tanaman pagar.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/info%20tanaman%2FPucuk%20Merah.jpg?alt=media&token=16b9a519-d2a0-4638-812b-28457822a436'),
(45, 'Canna Lily', 'Canna Lily (Canna Lily, Canna indica) adalah tanaman berbunga yang mencolok dengan daun besar dan bunga berwarna cerah seperti merah, kuning, atau oranye. Cocok untuk taman tropis karena tumbuh baik di bawah sinar matahari langsung.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/info%20tanaman%2FCanna%20Lily.jpg?alt=media&token=4f333a37-8d94-4479-b103-77bada67bd20'),
(46, 'Miana ', 'Miana (Coleus, Plectranthus scutellarioides) dikenal dengan daunnya yang warna-warni dan pola yang menarik. Tanaman ini ideal untuk menambahkan warna dalam taman teduh atau sebagai tanaman dalam pot.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/info%20tanaman%2FMiana.jpg?alt=media&token=f3f9b0b3-1101-42c0-b6a3-9924d4c0103c'),
(47, 'Begonia', 'Begonia (Begonia, Begonia sp.) adalah tanaman hias dengan berbagai jenis dan warna bunga serta daun. Tumbuh baik di area teduh dengan tanah yang lembab dan kaya nutrisi, sangat cocok untuk taman tropis seperti di Indonesia.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/info%20tanaman%2FBegonia.jpg?alt=media&token=11f0fbc8-b50a-4a6a-8241-0035bc23dd3e'),
(48, 'Hoya ', 'Hoya (Wax Plant, Hoya carnosa) adalah tanaman merambat yang populer karena bunganya yang unik dan wangi. Dikenal sebagai tanaman yang mudah dirawat dan cocok tumbuh dalam kondisi cahaya rendah hingga sedang, ideal untuk taman dalam rumah atau pergola di luar ruangan.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/info%20tanaman%2FHoya.jpg?alt=media&token=817d1562-01c1-4b97-af35-eb1f9368af5b'),
(49, 'Pohon Dolar', 'Tanaman Dolar (ZZ Plant, Zamioculcas) adalah tanaman hias dalam ruangan yang pertumbuhannya tegak, daun hijau tua berkilau, berbentuk oval, dan terkenal sulit dibunuh.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/info%20tanaman%2FZZ%20Plant.jpg?alt=media&token=7088e412-8344-4011-8f4f-edfd5ca4101c'),
(50, 'Ceriman', 'Ceriman (Monstera deliciosa) Tumbuh tinggi di alam liar, dengan daun besar, kasar, mengkilap, menyirip, berbentuk hati. Daun pada tanaman muda lebih kecil dan utuh tanpa lobus atau lubang, tetapi segera menghasilkan daun lobus dan fenestrasi saat tumbuh.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/info%20tanaman%2FMonstera%20deli.jpg?alt=media&token=1679620a-64ed-4da8-a76c-7fd3ceeeb739'),
(51, 'Pakis asparagus', 'Pakis asparagus (Asparagus fern, Asparagus setaceus) dikenal karena daunnya yang halus dan menyerupai jarum yang memberikan tampilan lembut dan feathery. Asparagus fern tumbuh dengan baik di lingkungan yang terang tetapi tidak terkena sinar matahari langsung, dan membutuhkan tanah yang lembap tetapi berdrainase baik. ', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/info%20tanaman%2FAsparagus%20Fern.jpg?alt=media&token=16c2d10a-cda5-4492-8eb7-c58e4c45cf30'),
(52, 'Bunga kertas', 'Bunga kertas (Bougainvillea) dikenal karena keindahan dan keragaman warna brakteanya yang mencolok. Braktea adalah daun pelindung yang berwarna-warni dan sering kali dianggap sebagai kelopak bunga. Warna-warna ini meliputi merah, ungu, oranye, putih, dan kuning, yang membuatnya sangat menarik sebagai tanaman hias. Bunga sebenarnya dari tanaman ini adalah kecil, berwarna putih, dan terletak di tengah-tengah braktea.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/info%20tanaman%2FBuganvilla%20Lanzarote.jpg?alt=media&token=2911a3f1-9b4d-4c3e-86fa-9515cc699acf'),
(53, 'Marigold perancis', 'Marigold (Tagetes patula) adalah tanaman hias yang dikenal karena bunganya yang cerah dan mencolok, biasanya berwarna oranye, kuning, atau merah marun. Tanaman ini tumbuh dengan baik di berbagai kondisi tanah asalkan mendapatkan sinar matahari penuh. Marigold memiliki daun berbentuk menyirip dan beraroma khas. Tanaman ini sering digunakan di taman sebagai hiasan atau tanaman pengusir serangga alami karena baunya yang kuat. ', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/info%20tanaman%2FFrench%20Marigold.jpg?alt=media&token=33ad3d31-bc4a-4a64-934a-7efc001a5100');

-- --------------------------------------------------------

--
-- Table structure for table `koleksi`
--

CREATE TABLE `koleksi` (
  `id` int(11) NOT NULL,
  `nama_tanaman` varchar(100) DEFAULT NULL,
  `tgl_penyiraman` date DEFAULT NULL,
  `jam_penyiraman` time DEFAULT NULL,
  `foto_tanaman` varchar(255) NOT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `koleksi`
--

INSERT INTO `koleksi` (`id`, `nama_tanaman`, `tgl_penyiraman`, `jam_penyiraman`, `foto_tanaman`, `id_user`) VALUES
(1, 'a', '2024-06-10', '20:16:52', 'adgha', 1);

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
(1, 'powdery mildew', 'kutu daun', 'Memastikan sirkulasi udara yang baik di sekitar tanaman, menghindari kelembaban berlebih, dan menggunakan fungisida berbahan dasar sulfur dapat membantu mengendalikan penyakit ini.'),
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
(4, 'Alyssum', 'Alyssum adalah tanaman hias rendah yang dikenal dengan bunga-bunganya yang kecil dan harum. Bunga-bunganya tumbuh dalam kelompok yang padat dan tersedia dalam berbagai warna seperti putih, merah muda, ungu, dan kuning. Alyssum biasanya ditanam sebagai penutup tanah atau untuk mengisi pot dan bebatuan dengan warna yang cerah dan aroma yang menyegarkan.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Img_List%20AAI_Plants%2FAlyssum.jpg?alt=media&token=5bbe0abf-2768-4169-a1c8-82222584dc2d'),
(5, 'Anggrek', 'Anggrek adalah tanaman hias yang terkenal akan kecantikan dan keberagaman bunganya. Ada ribuan spesies anggrek yang memiliki berbagai warna dan bentuk bunga. Beberapa anggrek membutuhkan perawatan khusus dan lingkungan tumbuh yang terkontrol, sementara yang lain lebih tahan terhadap kondisi yang berbeda. Anggrek sering dianggap sebagai simbol keindahan dan keanggunan.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Img_List%20AAI_Plants%2Faglaonema.jpeg.jpg?alt=media&token=87cedfb3-49ae-4fcf-b283-3710aebbc6e5'),
(6, 'Aster', 'Aster adalah tanaman berbunga yang tumbuh subur di musim gugur. Bunganya muncul dalam berbagai warna seperti putih, merah muda, ungu, biru, dan merah. Aster adalah tanaman yang tahan terhadap dingin dan sering kali digunakan sebagai tambahan warna yang indah dalam taman musim gugur. Tanaman ini menarik kupu-kupu dan lebah, menjadikannya tambahan yang baik untuk taman berpolinator.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Img_List%20AAI_Plants%2FAster.jpg?alt=media&token=21f62672-a457-4acb-8c11-cebe9367ceb0'),
(7, 'Azalea', 'Azalea adalah semak berbunga yang indah yang terkenal dengan bunga-bunga yang mencolok. Bunga-bunganya hadir dalam berbagai warna seperti putih, merah muda, ungu, oranye, dan merah. Azalea sering kali ditanam dalam pot atau di taman sebagai tanaman hias yang menarik perhatian. Beberapa varietas azalea juga memiliki aroma yang harum.\r\n\r\n', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Img_List%20AAI_Plants%2FAzalea.jpg?alt=media&token=91da43b7-0e2d-4c8e-a1e8-5f418bdd96d8'),
(8, 'Balanceng', 'Balanceng, juga dikenal sebagai Dieffenbachia, adalah tanaman indoor yang populer karena daunnya yang besar dan menarik. Daunnya biasanya berwarna hijau dengan pola berbintik atau bergaris putih atau kuning. Balanceng cocok untuk ditempatkan di dalam ruangan dengan cahaya sedang hingga rendah dan membutuhkan sedikit perawatan. Namun, perlu diingat bahwa daunnya mengandung zat beracun, jadi perlu dijauhkan dari hewan peliharaan dan anak-anak.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Img_List%20AAI_Plants%2FBalanceng_Dieffenbachia.jpg?alt=media&token=68eedc14-f614-4b3e-b57e-e021ffa4eb58'),
(9, 'Cosmos', 'Cosmos adalah tanaman berbunga yang indah dan mudah tumbuh. Bunga-bunganya muncul dalam berbagai warna seperti putih, merah muda, ungu, oranye, dan merah. Cosmos adalah tanaman yang tahan terhadap cuaca panas dan kering, sehingga cocok untuk ditanam di taman atau di pot. Bunga-bunga cosmos juga menarik kupu-kupu dan lebah, menjadikannya tambahan yang baik untuk taman berpolinator.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Img_List%20AAI_Plants%2FCosmos.jpg?alt=media&token=4ebd64a5-e86d-4fd5-a231-e22a665fe919'),
(10, 'Dahlia', 'Dahlia adalah tanaman berbunga yang terkenal akan bunga-bunga yang besar dan beragam. Bunga-bunganya hadir dalam berbagai bentuk, warna, dan ukuran, mulai dari putih murni hingga merah menyala dan ungu gelap. Dahlia adalah tanaman musim panas yang memerlukan sinar matahari penuh dan tanah yang subur. Mereka sering kali digunakan sebagai bunga potong yang indah atau sebagai tambahan menarik dalam taman berbunga.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Img_List%20AAI_Plants%2FDahlia.jpg?alt=media&token=630c61a1-1981-401e-8446-e454ddcaecf5'),
(11, 'Daisy', 'Daisy adalah tanaman berbunga yang dikenal dengan bunga-bunganya yang sederhana dan menawan. Bunga-bunganya memiliki daun berbentuk bunga yang putih dengan pusat kuning. Daisy tumbuh subur di musim panas dan merupakan tambahan yang indah untuk taman berbunga atau pot. Tanaman ini tahan terhadap cuaca panas dan kering, membuatnya mudah untuk dirawat.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Img_List%20AAI_Plants%2FDaisy.jpg?alt=media&token=c36634d4-d9b7-4f3d-b4fa-435b1b40c8f6'),
(12, 'Dandelion', 'Dandelion adalah tanaman herba yang dikenal dengan bunga kuningnya yang khas dan biji-bijian yang berbentuk bulu. Meskipun sering kali dianggap sebagai gulma, beberapa orang menanamnya karena daunnya yang dapat dimakan yang kaya akan nutrisi. Dandelion juga digunakan dalam pengobatan herbal untuk berbagai kondisi kesehatan. Tanaman ini tumbuh subur di berbagai jenis tanah dan kondisi cuaca.\r\n\r\n', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Img_List%20AAI_Plants%2FDandelion.jpg?alt=media&token=02eee974-9dea-4a95-85e7-9510a73b002e'),
(13, 'Euphorbia', 'Euphorbia adalah kelompok tanaman yang beragam, termasuk varietas yang tumbuh sebagai semak, tanaman hias, atau tanaman kaktus. Bunga-bunga euphorbia biasanya kecil dan tidak mencolok, tetapi daun-daunnya sering kali menarik dengan warna-warna yang cerah. Beberapa varietas euphorbia menghasilkan getah beracun, jadi perlu dihindari kontak langsung dengan kulit dan mata.', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Img_List%20AAI_Plants%2FEuphorbia.jpg?alt=media&token=538b27d6-b945-46f7-9e00-249dda42ea71'),
(14, 'Eustoma', 'Eustoma, juga dikenal sebagai Lisianthus, adalah tanaman berbunga yang indah yang dikenal akan bunga-bunganya yang mirip mawar. Bunga-bunganya hadir dalam berbagai warna seperti putih, merah muda, biru, ungu, dan kuning. Eustoma sering digunakan sebagai bunga potong karena tahan lama dan memiliki aroma yang harum. Tanaman ini membutuhkan sinar matahari penuh dan tanah yang baik drainasenya.\r\n\r\n', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Img_List%20AAI_Plants%2FEustoma.jpg?alt=media&token=246ea793-6799-402f-83c9-87c02f0b7bc5'),
(15, 'Herbras/Gerbera', 'Gerbera, atau sering juga disebut sebagai Herbras, adalah tanaman berbunga yang cantik dan populer dalam industri bunga potong. Bunga-bunganya hadir dalam berbagai warna cerah seperti putih, merah muda, oranye, dan kuning. Gerbera membutuhkan sinar matahari penuh atau setengah hari dan tanah yang baik drainasenya. Tanaman ini tahan terhadap cuaca panas dan kering, membuatnya cocok untuk ditanam di taman atau dalam pot.\r\n\r\n', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Img_List%20AAI_Plants%2FHerbras%20(Gerbera).jpg?alt=media&token=0520cf88-3981-4309-a361-f98a10e14e92'),
(16, 'Iris', 'Iris adalah tanaman berbunga yang elegan dan beragam. Bunga-bunganya hadir dalam berbagai warna seperti biru, ungu, kuning, merah muda, dan putih. Iris sering digunakan sebagai tambahan yang indah untuk taman berbunga atau kolam, karena daunnya yang tinggi dan tegak serta bunganya yang mencolok. Tanaman ini membutuhkan sinar matahari penuh atau setengah hari dan tanah yang baik drainasenya.\r\n', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Img_List%20AAI_Plants%2FIris.jpg?alt=media&token=8e038ecc-593f-4a70-a0c2-5ffcdc49b65a'),
(17, 'Lavender', 'Lavender adalah tanaman herba yang terkenal akan aroma harumnya yang menenangkan. Tanaman ini memiliki daun hijau-abu-abu yang sempit dan bunga kecil yang muncul dalam batang yang panjang. Lavender sering digunakan untuk membuat minyak esensial, parfum, dan produk perawatan kulit. Tanaman ini membutuhkan sinar matahari penuh dan tanah yang baik drainasenya.\r\n\r\n\r\n', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Img_List%20AAI_Plants%2FLavender.jpg?alt=media&token=d8747a97-b85d-4830-ab57-d2cd5b7896de'),
(18, 'Lily', 'Lily adalah tanaman berbunga yang elegan dan harum. Bunga-bunganya hadir dalam berbagai bentuk dan warna, mulai dari putih murni hingga merah menyala dan ungu gelap. Lily sering digunakan dalam rangkaian bunga potong atau sebagai tambahan yang menarik dalam taman berbunga. Tanaman ini membutuhkan sinar matahari penuh atau setengah hari dan tanah yang subur.\r\n', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Img_List%20AAI_Plants%2FLily.jpeg.jpg?alt=media&token=d9028661-7ad3-4f9a-86a2-a8337e11b30f'),
(19, 'Melati', 'Melati adalah semak yang terkenal akan bunga-bunganya yang harum dan indah. Bunga-bunganya muncul dalam kelompok yang padat dan tersedia dalam berbagai warna seperti putih, merah muda, kuning, dan oranye. Melati sering digunakan sebagai tanaman penutup pagar, penghias taman, atau dalam rangkaian bunga potong. Tanaman ini membutuhkan sinar matahari penuh atau setengah hari dan tanah yang subur.\r\n', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Img_List%20AAI_Plants%2FJasmine.jpeg.jpg?alt=media&token=bac22aa9-cf65-4e69-b435-2a4dd5a94846'),
(20, 'Palm', 'Palm adalah kelompok tanaman yang luas yang termasuk berbagai spesies palem, mulai dari yang kecil hingga yang besar. Palm sering digunakan sebagai tanaman hias dalam ruangan atau di luar ruangan karena daun-daunnya yang indah dan bentuknya yang menarik. Beberapa varietas palm juga dikenal karena kelembapan udara yang tinggi dan kemampuannya untuk membersihkan udara.\r\n', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Img_List%20AAI_Plants%2Fpalm.jpeg.jpg?alt=media&token=38ae3eb7-d8b8-49d1-914b-3cc735e34efe'),
(21, 'Mawar', 'Mawar adalah tanaman berbunga yang klasik dan romantik yang terkenal akan bunga-bunganya yang indah dan harum. Bunga-bunganya hadir dalam berbagai warna dan aroma, mulai dari putih hingga merah muda, oranye, kuning, dan merah. Mawar sering digunakan sebagai bunga potong, dalam rangkaian bunga, atau sebagai tambahan indah dalam taman berbunga. Tanaman ini membutuhkan sinar matahari penuh dan tanah yang subur.\r\n', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Img_List%20AAI_Plants%2Frose.jpeg.jpg?alt=media&token=9e46a847-a149-431c-acb9-b1d2e1dea6cf'),
(22, 'Pansy', 'Pansy adalah tanaman berbunga yang cerah dan indah yang tumbuh subur di musim semi dan musim gugur. Bunga-bunganya hadir dalam berbagai warna seperti ungu, kuning, biru, merah, dan putih, sering kali dengan pola wajah yang menarik. Pansy sering digunakan untuk menanam di pot, di taman berbunga, atau sebagai tambahan dalam taman berbunga. Tanaman ini tahan terhadap cuaca dingin dan sering kali mekar lebih baik saat suhu sedang.\r\n', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Img_List%20AAI_Plants%2Fpansy.jpeg.jpg?alt=media&token=51969dba-7f8f-48fc-b895-06597e893207'),
(23, 'Peony', 'Peony adalah tanaman berbunga yang indah dan populer dalam taman berbunga. Bunga-bunganya besar dan mewah, seringkali berwarna merah muda, putih, atau merah. Peony merupakan tanaman musim semi hingga awal musim panas dan membutuhkan sinar matahari penuh atau setengah hari. Mereka sering digunakan dalam rangkaian bunga potong karena ketahanan bunganya yang baik.\r\n', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Img_List%20AAI_Plants%2Fpeony.jpeg.jpg?alt=media&token=6a764135-590b-49d2-a40c-c5f959dfb034'),
(24, 'Polyanthus', 'Polyanthus adalah tanaman berbunga musim semi yang tumbuh subur di musim dingin hingga awal musim panas. Bunga-bunganya muncul dalam kelompok yang padat dan tersedia dalam berbagai warna cerah seperti merah, kuning, oranye, dan ungu. Polyanthus merupakan tambahan yang indah untuk taman berbunga atau pot, dan tahan terhadap cuaca dingin.\r\n', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Img_List%20AAI_Plants%2FPolyanthus.jpeg.jpg?alt=media&token=87d8f99c-3618-477e-81b9-e3d55ee53b76'),
(25, 'Sage', 'Sage adalah tanaman herba yang terkenal akan daunnya yang aromatik dan digunakan dalam masakan dan pengobatan herbal. Daunnya sering digunakan sebagai bumbu untuk memberi rasa pada hidangan, serta memiliki sifat anti-inflamasi dan antioksidan. Sage dapat tumbuh subur di tempat yang cerah dengan tanah yang baik drainasenya.\r\n', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Img_List%20AAI_Plants%2Fsage.jpeg.jpg?alt=media&token=3568a627-d012-410d-b336-737895f897e2'),
(26, 'Tuberose', 'Tuberose adalah tanaman berbunga yang terkenal akan aroma harumnya yang kuat dan manis. Bunga-bunganya hadir dalam kelompok yang padat dan berwarna putih atau krim. Tuberose sering digunakan dalam pembuatan parfum dan minyak esensial, serta sebagai tambahan indah dalam rangkaian bunga potong. Tanaman ini membutuhkan sinar matahari penuh dan tanah yang subur.\r\n', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Img_List%20AAI_Plants%2FTuberose.jpeg.jpg?alt=media&token=4667d4c7-edd2-4ba9-98cc-d835fd7f3e53'),
(27, 'Snapdragon', 'Snapdragon adalah tanaman berbunga musim panas yang dikenal dengan bunga-bunganya yang unik dan menarik. Bunga-bunganya muncul dalam berbagai warna seperti merah, merah muda, kuning, putih, dan ungu, seringkali dengan bentuk yang menyerupai mulut naga. Snapdragon tumbuh subur di tempat yang cerah dengan tanah yang subur dan baik drainasenya.\r\n', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Img_List%20AAI_Plants%2FSnapdragons.jpeg.jpg?alt=media&token=a8e5a150-844e-42ad-9903-7c509eaae816'),
(28, 'Soka', 'Soka adalah tanaman berbunga yang indah dan elegan yang tumbuh subur di musim panas hingga awal musim gugur. Bunga-bunganya hadir dalam berbagai warna seperti merah, merah muda, putih, dan kuning, dengan tangkai yang panjang dan ramping. Soka sering digunakan dalam rangkaian bunga potong karena ketahanan bunganya yang baik dan warna yang mencolok.\r\n', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Img_List%20AAI_Plants%2Fasoka.jpeg.jpg?alt=media&token=497cf14e-db03-4be3-b678-85f58f843482'),
(29, 'Aglonema', 'Aglaonema, atau lebih dikenal sebagai Chinese Evergreen, adalah tanaman hias populer yang tumbuh di dalam ruangan karena kemudahan perawatannya dan kemampuannya bertahan dalam cahaya rendah. Daunnya lebar dan berwarna-warni, seringkali dengan pola berbintik atau berbercak putih, merah muda, atau merah. Aglaonema juga berfungsi sebagai pembersih udara yang efektif, menyerap berbagai polutan udara. Tanaman ini ideal untuk pemula karena tahan terhadap kesalahan perawatan.\r\n', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Img_List%20AAI_Plants%2Faglaonema.jpeg.jpg?alt=media&token=87cedfb3-49ae-4fcf-b283-3710aebbc6e5'),
(30, 'Sunflower', 'Sunflower atau bunga matahari adalah tanaman yang terkenal akan bunganya yang besar dan berwarna kuning cerah. Bunga-bunganya mengikuti matahari dan biasanya menghadap ke arah matahari. Sunflower merupakan tambahan indah dalam taman berbunga dan sering digunakan dalam rangkaian bunga potong. Tanaman ini membutuhkan sinar matahari penuh dan tanah yang subur.\r\n', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Img_List%20AAI_Plants%2Fsunflower.jpeg.jpg?alt=media&token=2b5c5dfe-876b-4404-9001-08e54f8bbb84'),
(31, 'Tulip', 'Tulip adalah tanaman berbunga musim semi yang terkenal akan bunganya yang elegan dan beraneka warna. Bunga-bunganya hadir dalam berbagai warna seperti merah, merah muda, oranye, kuning, dan ungu. Tulip sering digunakan dalam taman berbunga, pot, atau sebagai tambahan dalam rangkaian bunga potong. Tanaman ini membutuhkan sinar matahari penuh atau setengah hari dan tanah yang baik drainasenya.\r\n', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Img_List%20AAI_Plants%2Ftulip.jpeg.jpg?alt=media&token=c10566c3-af9d-442a-becb-9fa47d99be35'),
(32, 'Viola', 'Viola adalah tanaman berbunga musim dingin hingga musim semi yang terkenal akan bunga-bunganya yang kecil dan menawan. Bunga-bunganya hadir dalam berbagai warna cerah seperti ungu, kuning, merah muda, dan putih. Viola tumbuh subur di tempat yang cerah hingga setengah teduh dengan tanah yang subur dan baik drainasenya. Tanaman ini sering digunakan dalam taman berbunga atau pot sebagai tambahan warna yang menyegarkan.\r\n', 'https://firebasestorage.googleapis.com/v0/b/botanify-ecd46.appspot.com/o/Img_List%20AAI_Plants%2Fviola.jpeg.jpg?alt=media&token=2c29fc38-d712-4bb0-9be9-971c44f33fd5');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `email`, `password`) VALUES
(1, 'adip', 'adip', '12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id_informasi`);

--
-- Indexes for table `infotanaman`
--
ALTER TABLE `infotanaman`
  ADD PRIMARY KEY (`id_infotanaman`);

--
-- Indexes for table `koleksi`
--
ALTER TABLE `koleksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

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
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `informasi`
--
ALTER TABLE `informasi`
  MODIFY `id_informasi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `infotanaman`
--
ALTER TABLE `infotanaman`
  MODIFY `id_infotanaman` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `koleksi`
--
ALTER TABLE `koleksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `penanganan`
--
ALTER TABLE `penanganan`
  MODIFY `id_penanganan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tanaman`
--
ALTER TABLE `tanaman`
  MODIFY `id_tanaman` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `koleksi`
--
ALTER TABLE `koleksi`
  ADD CONSTRAINT `koleksi_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
