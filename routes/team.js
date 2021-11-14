const express = require("express");
const routes = express.Router();
const conexion = require("../database/db");

routes.get("/", (req, res) => {
  conexion.query("SELECT * FROM team", (err, rows) => {
    if (err) return res.send(err);

    res.json(rows);
  });
});

// add player ////
routes.post("/", (req, res) => {
  conexion.query("INSERT INTO team set ?", [req.body], (err, rows) => {
    if (err) return res.send(err);

    res.send("Create Team ok");
  });
});

//Delete Player ////
routes.delete("/:id", (req, res) => {
  conexion.query(
    "DELETE FROM team WHERE id = ?",
    [req.params.id],
    (err, rows) => {
      if (err) return res.send(err);

      res.send("Delete Team ok");
    }
  );
});

//Actualizar Player ///
routes.put("/:id", (req, res) => {
  conexion.query(
    "UPDATE Team set ? WHERE id = ?",
    [req.body, req.params.id],
    (err, rows) => {
      if (err) return res.send(err);

      res.send("Update Team ok");
    }
  );
});

module.exports = routes;
