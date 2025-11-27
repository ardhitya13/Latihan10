const mysql = require('mysql2');

// Konfigurasi koneksi database
const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '', // sesuaikan password Mysql kamu
    database: 'dbpraktikum8'
});

// Coba koneksi
db.connect(err => {
    if (err) {
        console.error('Koneksi database gagal:', err);
    } else {
        console.log('Terhubung ke database MySQL');
    }
});

module.exports = db;