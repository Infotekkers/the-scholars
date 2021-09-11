// Importing Essentials
const { application } = require("express");
const express = require("express");
const router = express.Router();
const fs = require("fs");
const path = require("path");

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
        name: application["fullName"],
        applicationId: application["_id"],
        admissionStatus: application["admissionStatus"],
      });
    });

    res.status(200).send(allApplicationsHighlight);
  } catch (e) {
    // handleError(e);
    res.status(500).send("Please try again later!");
  }
});

// Route to get application details with ID - URL PARAM
router.get("/application.:applicationId", async (req, res) => {
  try {
    const id = req.params.applicationId;

    const selectedApplication = await Application.findById(id);

    res.status(200).send(selectedApplication);
  } catch (e) {
    // handleError(e);
    res.status(500).send("Please try again later!");
  }
});

router.get("/application/download/:applicationId", async (req, res) => {
  try {
    const html = fs.readFileSync(
      path.resolve(__dirname, "../", "../", "templates/template.html"),
      "utf8"
    );
    const id = req.params.applicationId;

    const selectedApplication = await Application.findById(id);

    let options = {
      format: "A4",
      orientation: "portrait",
      border: "10mm",
    };

    let applicant = [
      {
        fullName: selectedApplication.fullName,
        birthDate: selectedApplication.birthDate,
        gender: selectedApplication.gender,
        location: selectedApplication.location,
        phoneNumber: selectedApplication.phoneNumber,
        schoolTranscript: schoolTranscriptFileName,
        mainEssay: mainEssayFileName,
        extraEssay: selectedApplication.extraEssay,
        proficiencyTest: selectedApplication.proficencyTest,
        extraCertification: extraCertificationFileName,
        recommendationLetter: reccomendationLetterFileName,
        departmentSelection: selectedApplication.departmentSelection,
        militaryFamilyStatus: selectedApplication.militaryFamilyStatus,
        universityFamilyStatus: selectedApplication.universityFamilyStatus,
      },
    ];

    let document = {
      html: html,
      data: {
        applicant: applicant,
      },
      path: `./output/${selectedApplication["fullName"]}.pdf`,
    };

    pdf
      .create(document, options)
      .then((res) => {
        console.log(res);
      })
      .catch((e) => {
        console.error(e);
      });

    // const output = await fs.readFileSync(
    //   path.resolve(
    //     __dirname,
    //     "../",
    //     "../",
    //     `output/${selectedApplication["fullName"]}.pdf`
    //   ),
    //   "utf8"
    // );

    res.status(200).send("Pdf downloaded!");
  } catch (e) {
    // handleError(e);
    res.status(500).send("Please tyr again later!");
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
    res.status(500).send("Please try again later!");
  }
});

module.exports = router;
