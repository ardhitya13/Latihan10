const Product = require('../models/products.model');

exports.getAllProducts = (req, res) => {
    Product.getAll((err, results) => {
        if (err) res.send(err);
        res.json(results);
    });
};

exports.getProductById = (req, res) => {
    Product.getById(req.params.id, (err, results) => {
        if (err) res.send(err);
        res.json(results[0]);
    });
};

exports.createProduct = (req, res) => {
    Product.create(req.body, (err, result) => {
        if (err) res.send(err);
        res.json({ id: result.insertId, ...req.body });
    });
};

exports.updateProduct = (req, res) => {
    Product.update(req.params.id, req.body, (err, result) => {
        if (err) res.send(err);
        res.json({ message: "Produk diupdate" });
    });
};

exports.deleteProduct = (req, res) => {
    Product.delete(req.params.id, (err, result) => {
        if (err) res.send(err);
        res.json({ message: "Produk dihapus" });
    });
};
