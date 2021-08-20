// Importing Essentials
const express = require("express");
const router = express.Router();
// Importing Essentials
const express = require("express");
const router = express.Router();

// Name Generator import
const { v4: uuidv4 } = require("uuid");

// File reader and writer import
const fs = require("fs");

// Import application model
const Application = require("../../models/Application");

/**
 * @swagger
 * /user/document:
 *  post:
 *      description: An api end point for uploading documents. With uploaded document type embedded in the body
 *      tags:
 *          - User
 *  responses:
 *      200 :
 *          description : "Great Success"
 * */
router.post("/document", async (req, res) => {
  console.log("Launched");
  // get document form body
  const documentContent = req.body.documentContent;
  const documentType = req.body.documentType;
  const documentExtension = req.body.documentExtension;

  const applicationId = req.body.applicationId;

  //   Options are "essayFile","schoolTranscript","extraCertification"
  const submittedDocumentType = req.body.submittedDocumentType;

  //   Generate random document number
  const documentName = uuidv4();

  //   Create file from content
  const formattedDocument = Buffer.from(documentContent, "base64");

  //   Modify save path based on document type
  var savePath;
  if (documentType == "image") {
    savePath = `uploads/images/${documentName}.${documentExtension}`;
  } else {
    savePath = `uploads/docs/${documentName}.${documentExtension}`;
  }

  //   Save created file to local storage
  fs.writeFileSync(savePath, formattedDocument, function (err) {
    if (err) console.log(err);
  });

  //   get application and update content
  const updateValue = {};
  updateValue[submittedDocumentType] = documentName;

  const applicationUpdate = await Application.findByIdAndUpdate(
    applicationId,

    updateValue
  );

  res.status(200).send("Completed");
});

// Test Route - Add a new application to DB
router.get("/test", async (req, res) => {
  const newApplication = Application();

  const application = await newApplication.save();

  const application_id = await application._id;

  console.log("Empty Application Generated Successfully");
  res.status(200).send(application_id);
});

// Export router
module.exports = router;
