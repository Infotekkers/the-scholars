// Import Essentials
const express = require("express");
const mongoose = require("mongoose");
const CORS = require("cors");
require("dotenv").config();

// Importing custom middleware
const authRoutes = require("./routes/auth/authRoutes");
const userRoutes = require("./routes/user/userRoutes");

// Creating express instance
const app = express();

// Body parser middleware
app.use(express.json());
app.use(
  express.urlencoded({
    extended: true,
    limit: "25mb",
  })
);

// Cors middleware
app.use(CORS());

// Database setup and config
mongoose.connect(process.env.MONGO_URI, {
  useNewUrlParser: true,
  useUnifiedTopology: true,
  useCreateIndex: true,
  useFindAndModify: true,
});

// Verify db Setup
const dbInstance = mongoose.connection;
dbInstance.once("open", () => {
  console.log("Database connected successfully");
});

// Swagger Docs Config
const swaggerJsDoc = require("swagger-jsdoc");
const swaggerUi = require("swagger-ui-express");
const swaggerConfig = require("./config");

const swaggerDocs = swaggerJsDoc(swaggerConfig);

app.use("/api-docs", swaggerUi.serve, swaggerUi.setup(swaggerDocs));

// Auth route middleware
app.use("/auth", authRoutes);

// User route middleware
app.use("/user", userRoutes);

// Run server
const port = process.env.PORT_NUMBER || 3000;
app.listen(port, () => {
  console.log(`Server Live @ port ${port}`);
});
