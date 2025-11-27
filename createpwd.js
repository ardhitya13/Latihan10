const bcrypt = require('bcryptjs');
const hash = bcrypt.hashSync('sajiku', 10);
console.log(hash);
