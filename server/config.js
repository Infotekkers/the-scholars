const swaggerOptions = {
  swaggerDefinition: {
    openapi: "3.0.0",
    info: {
      title: "ITU Scholarship Management",
      description: "An Express api for Scholarship management system",
      version: "0.0.1",
    },
    servers: [
      {
        url: "http://localhost:5000",
        description: "Development Sever",
      },
    ],
    apis: ["./routes/auth/*.js"],
    tags: [
      {
        name: "Authentication",
        description: "Category for all Authentication Routes",
      },
      {
        name: "User",
        description: "Category for all User Side Routes",
      },
      {
        name: "Admin",
        description: "Category for all Admin Side Routes",
      },
      {
        name: "Other",
        description: "Category tests, unimplemented features...",
      },
      {
        name: "Dev",
        description: "Category for dev helping routes",
      },
    ],
  },
  apis: [
    "./routes/auth/*.js",
    "./routes/admin/adminRoutes.js",
    "./routes/user/userRoutes.js",
  ],
};

module.exports = swaggerOptions;
