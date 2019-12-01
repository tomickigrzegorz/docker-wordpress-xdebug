const mysqldump = require('mysqldump');

const zerofill = value => (value < 10 && value > -1 ? '0' : '') + value;

let today = new Date();
let date = `${today.getFullYear()}${zerofill((today.getMonth() + 1))}${zerofill(today.getDate())}`;
let time = `${zerofill(today.getHours())}${zerofill(today.getMinutes())}${zerofill(today.getSeconds())}`;

mysqldump({
  connection: {
    host: 'localhost',
    user: 'root',
    password: 'test',
    database: 'wp',
  },
  dumpToFile: `./dump/wp.${date}.${time}.sql`,
});
