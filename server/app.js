// Import Essentials
const express = require("express");
const mongoose = require("mongoose");
const CORS = require("cors");
require("dotenv").config();

// Creating express instance
const app = express();

// Body parser middleware
app.use(express.json());
app.use(
  express.urlencoded({
    extended: true,
  })
);

// Cors middleware
app.use(CORS());

// Database setup and config
mongoose.connect(process.env.MONGO_URI, {
  useNewUrlParser: true,
  useUnifiedTopology: true,
  useCreateIndex: true,
});

// Verify db Setup
const dbInstance = mongoose.connection;
dbInstance.once("open", () => {
  console.log("Database connected successfully");
});

// Run server
const port = process.env.PORT_NUMBER || 3000;
app.listen(port, () => {
  console.log(`Server Live @ port ${port}`);
});
