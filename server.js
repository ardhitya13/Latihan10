require('dotenv').config();


const express = require('express');
const app = express();
const PORT = 8001;

app.use(express.json());

app.get('/', (req, res) => {
    res.send('Hello, World');
});

app.listen(PORT, () => {
    console.log(`Server berjalan di http://localhost:${PORT}`);
});

// Routes
const userRoutes = require('./routes/user.routes');
app.use('/api/users', userRoutes);

// routes products
const productRoutes = require('./routes/products.routes');
app.use('/api/products', productRoutes);

// routes auth
const authRoutes = require('./routes/auth.routes');
app.use('/api/auth', authRoutes);
