const express = require("express");
const dotenv = require("dotenv");
const cookieParser = require("cookie-parser");

const app = express();

const PORT = process.env.PORT || 3000;
//nodeapisoccer.herokuapp.com/

//seteamos el motor de plantillas
https: app.set("view engine", "ejs");

//seteamos la carpeta public para archivos estáticos
app.use(express.static("public"));

//Middlewares
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

//seteamos las variables de entorno
dotenv.config({ path: "./env/.env" });

//para poder trabajar con las cookies
app.use(cookieParser());

//llamar al router
app.use("/", require("./routes/router"));
app.use("/api/player", require("./routes/player"));
app.use("/api/team", require("./routes/team"));

//Para eliminar la cache
app.use(function (req, res, next) {
  if (!req.user)
    res.header("Cache-Control", "private, no-cache, no-store, must-revalidate");
  next();
});

app.listen(3000, () => {
  console.log("SERVER UP runnung in http://localhost:3000");
});
