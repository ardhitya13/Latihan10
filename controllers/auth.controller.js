const User = require('../models/user.model');
const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');

exports.login = (req, res) => {
    const { email, password } = req.body;

    User.findByEmail(email, (err, results) => {
        if (err) return res.status(500).json({ message: err.message });
        if (results.lenght === 0) return res.status(404).json({ message: "User not found"});

        const user = results[0];

        const match = bcrypt.compareSync(password, user.password);
        if (!match) return res.status(400).json({ message: "Wrong password" });

        const token = jwt.sign(
            { id: user.id, email: user.email },
            process.env.JWT_SECRET,
            { expiresIn: "7d" }
        );

        res.json({
            message: "Login secces",
            token,
            user: { id: user.id, name: user.name, email: user.email }
        });
    });
};