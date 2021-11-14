const express = require("express");
const routes = express.Router();
const conexion = require("../database/db");

routes.get("/", (req, res) => {
  conexion.query("SELECT * FROM player", (err, rows) => {
    if (err) return res.send(err);

    res.json(rows);
  });
});

// add player ////
routes.post("/", (req, res) => {
  conexion.query("INSERT INTO player set ?", [req.body], (err, rows) => {
    if (err) return res.send(err);

    res.send("Create Player ok");
  });
});

//Delete Player ////
routes.delete("/:id", (req, res) => {
  conexion.query(
    "DELETE FROM player WHERE id = ?",
    [req.params.id],
    (err, rows) => {
      if (err) return res.send(err);

      res.send("Delete Player ok");
    }
  );
});

//Actualizar Player ///
routes.put("/:id", (req, res) => {
  conexion.query(
    "UPDATE player set ? WHERE id = ?",
    [req.body, req.params.id],
    (err, rows) => {
      if (err) return res.send(err);

      res.send("Update Player ok");
    }
  );
});

module.exports = routes;
