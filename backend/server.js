import express from 'express'
import cors from 'cors'
import mysql from 'mysql'

const app = express()

app.use(express.json())
app.use(cors())

const connect = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "992634178",
    database: "fullsetup"
})

app.get("/tbl_produtos", (req, res) => {
    connect.query("SELECT * FROM produtos", (error, result) => {
        if(error){
            res.send(error)
        } else {
            res.send(result)
        }
    })
})

app.listen(3333)

