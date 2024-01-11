const express = require("express");
const cors = require("cors");
const sequelize = require("./db");
const { Employee, CommissionMember, Commission } = require("./models/models");
const app = express();
const PORT = 5000;
app.use(cors());
app.use(express.json());

app.post("/employees", async (req, res) => {
  try {
    const { firstName, hourlyRate, lastName, phone } = req.body;
    const employee = await Employee.create({
      firstName,
      hourlyRate,
      lastName,
      phone,
    });
    res.status(201).json(employee);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

app.get("/employees", async (req, res) => {
  try {
    const employees = await Employee.findAll();
    res.status(200).json(employees);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

app.get("/employees/:id", async (req, res) => {
  const { id } = req.params;
  try {
    const employee = await Employee.findByPk(id);
    if (employee) {
      res.status(200).json(employee);
    } else {
      res.status(404).json({ error: "Employee not found" });
    }
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

app.put("/employees/:id", async (req, res) => {
  const { id } = req.params;

  try {
    const existingEmployee = await Employee.findByPk(id);

    if (!existingEmployee) {
      return res.status(404).json({ error: "Employee not found" });
    }

    const { firstName, hourlyRate, lastName, phone } = req.body.updatedEmployee;

    if (!firstName || !hourlyRate || !lastName || !phone) {
      return res.status(400).json({ error: "All fields are required" });
    }

    await Employee.update(
      { firstName, hourlyRate, lastName, phone },
      {
        where: { id },
      }
    );

    const updatedEmployee = await Employee.findByPk(id);

    return res.status(200).json(updatedEmployee);
  } catch (error) {
    return res.status(500).json({ error: error.message });
  }
});

app.delete("/employees/:id", async (req, res) => {
  const { id } = req.params;
  try {
    const deleted = await Employee.destroy({
      where: { id },
    });
    if (deleted) {
      res.status(204).send();
    } else {
      res.status(404).json({ error: "Employee not found" });
    }
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});
app.post("/commissions", async (req, res) => {
  try {
    const { name } = req.body.newCommission;
    const newCommission = await Commission.create({
      name,
    });
    res.status(201).json(newCommission);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});
app.post("/commission-members", async (req, res) => {
  try {
    const { img, name, surname, phone, experience } = req.body.updatedMember;
    const { CommissionId } = req.body;
    const commissionMember = await CommissionMember.create({
      img,
      name,
      surname,
      phone,
      experience,
      CommissionId,
    });
    res.status(201).json(commissionMember);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
});

app.get("/commissions", async (req, res) => {
  try {
    const commissions = await Commission.findAll({
      include: [{ model: CommissionMember, as: "members" }],
    });
    res.status(200).json(commissions);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

app.get("/commission-members/:id", async (req, res) => {
  const { id } = req.params;
  try {
    const commissionMember = await CommissionMember.findByPk(id);
    if (commissionMember) {
      res.status(200).json(commissionMember);
    } else {
      res.status(404).json({ error: "Commission member not found" });
    }
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

app.put("/commission-members/:id", async (req, res) => {
  const { id } = req.params;

  try {
    const commissionMember = await CommissionMember.findByPk(id);

    if (!commissionMember) {
      return res.status(404).json({ error: "CommissionMember not found" });
    }

    await commissionMember.update({
      id,
      img: req.body.img,
      name: req.body.name,
      surname: req.body.surname,
      phone: req.body.phone,
      experience: req.body.experience,
    });

    res.json(commissionMember);
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: "Internal Server Error" });
  }
});
app.delete("/commission-members/:id", async (req, res) => {
  const { id } = req.params;
  try {
    const deleted = await CommissionMember.destroy({
      where: { id },
    });
    if (deleted) {
      res.status(204).send();
    } else {
      res.status(404).json({ error: "Commission member not found" });
    }
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

const start = async () => {
  try {
    await sequelize.authenticate();
    await sequelize.sync();
    app.listen(PORT, () => console.log(`Server started on port ${PORT}`));
  } catch (error) {
    console.log(error);
  }
};
start();
