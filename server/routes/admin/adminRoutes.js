// Importing Essentials
const { application } = require("express");
const express = require("express");
const router = express.Router();
const fs = require("fs");

// Import pdf creator
const pdf = require("pdf-creator-node");

// Import error handler
const handleError = require("../../helpers/errorHandler");

// Import application model
const Application = require("../../models/Application");

// Route to get Application highlights
router.get("/applications", async (req, res) => {
  try {
    // Empty array to hold application detail
    var allApplicationsHighlight = [];

    // Get all applications from DB
    const allApplication = await Application.find();

    // Get highlights only from complete application
    allApplication.forEach((application) => {
      allApplicationsHighlight.push({
        fullName: application["fullName"],
        applicationId: application["_id"],
        admissionStatus: application["admissionStatus"],
      });
    });

    res.status(200).send(allApplicationsHighlight);
  } catch (e) {
    handleError(e);
    res.status(500).send("Error");
  }
});

// Route to get application details with ID - URL PARAM
router.get("/application.:applicationId", async (req, res) => {
  try {
    const id = req.params.applicationId;

    const selectedApplication = await Application.findById(id);

    res.status(200).send(selectedApplication);
  } catch (e) {
    handleError(e);
    res.status(500).send("Error");
  }
});

router.get("/application/download/:applicationId", async (req, res) => {
  try {
    const html = fs.readFileSync("../../templates/template.html", "utf8");
    const id = req.params.applicationId;

    const selectedApplication = await Application.findById(id);

    let options = {
      format: "A4",
      orientation: "portrait",
      border: "10mm",
    };

    let document = {
      html: html,
      data: {
        application: selectedApplication,
      },
      path: `../../output/${id}.pdf`,
    };

    pdf
      .create(document, options)
      .then((res) => {
        console.log(res);
      })
      .catch((e) => {
        console.error(e);
      });
      
  } catch (e) {
    handleError(e);
    res.status(500).send("Error");
  }
});

// Route to update application status
router.put("/admissionStatus/:applicationId", async (req, res) => {
  try {
    const id = req.params.applicationId;

    const updatedAdmissionStatus = req.body.admissionStatus;

    const selectedApplication = Application.findById(id);

    const result = await selectedApplication.updateOne({
      admissionStatus: updatedAdmissionStatus,
    });

    res.status(204).send("Completed");
  } catch (e) {
    handleError(e);
    res.status(500).send("Error");
  }
});

module.exports = router;
