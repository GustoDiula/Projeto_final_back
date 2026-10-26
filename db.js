const mysql = require("mysql2/promise")

const pool = mysql.createPool({
    host: "127.0.0.1",
    port: 3306,
    user: "root",
    //PC's do colegio onde nao tem xamp, colocar senha escola 
    password: "escola",
    database: "diula2dsb"
})

module.exports = Object.freeze({
    pool: poll
})