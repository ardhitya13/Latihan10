const db = require('./db.config');

const Product = {
    getAll: callback => {
        db.query("SELECT * FROM products", callback);
    },

    getById: (id, callback) => {
        db.query("SELECT * FROM products WHERE id = ?", [id], callback);
    },

    create: (data, callback) => {
        db.query(
            "INSERT INTO products (nama, deskripsi, harga, foto) VALUES (?, ?, ?, ?)",
            [data.nama, data.deskripsi, data.harga, data.foto],
            callback
        );
    },

    update: (id, data, callback) => {
        db.query(
            "UPDATE products SET nama = ?, deskripsi = ?, harga = ?, foto = ? WHERE id = ?",
            [data.nama, data.deskripsi, data.harga, data.foto, id],
            callback
        );
    },

    delete: (id, callback) => {
        db.query("DELETE FROM products WHERE id = ?", [id], callback);
    }
};

module.exports = Product;
