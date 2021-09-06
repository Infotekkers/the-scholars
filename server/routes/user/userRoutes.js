// Importing Essentials
const express = require("express");
const router = express.Router();

// Name Generator import
const { v4: uuidv4 } = require("uuid");

// Make File function
const makeFile = require("../../helpers/utils");

// Import application model
const Application = require("../../models/Application");

// Defining Swagger Components begin

// Defining Swagger Component - Document
/**
 *@swagger
 * components:
 *   schemas:
 *     Document:
 *       type : object
 *       properties:
 *         documentContent:
 *           type: string
 *           description : The document itself in base64 encoding
 *         documentType:
 *           type: string
 *           default: doc
 *           description : The type of document (doc/image) to help decide save folder
 *         documentExtension:
 *           type: string
 *           default: pdf
 *         applicationId:
 *           type: string
 *         submittedDocumentType:
 *           type: string
 *           description : schoolTranscript/extraCertification ...
 *       required:
 *          - documentContent
 *          - documentType
 *          - documentExtension
 *          - applicationId
 *          - submittedDocumentType
 * */

// Defining Swagger Components ends

/**
 * @swagger
 * /user/document:
 *  post:
 *    summary: An endpoint to save a document
 *    tags : [User]
 *    consumes:
 *      - application/json
 *    requestBody:
 *      description : Body must contain the following details
 *      required: true
 *      content:
 *        application/json:
 *          schema:
 *            $ref : '#components/schemas/Document'
 *    responses:
 *      200 :
 */
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

/**
 * @swagger
 * /user/test:
 *  get:
 *    summary: An endpoint to generate an empty application
 *    tags : [Dev]
 *    responses:
 *      200 :
 *        description : Returns application Id
 */
router.get("/test", async (req, res) => {
  const newApplication = Application();

  const application = await newApplication.save();

  const application_id = await application._id;

  console.log("Empty Application Generated Successfully");
  res.status(200).send(application_id);
});

router.post("/extra-curricular", async (req, res) => {
  const applicationId = await req.body.applicationId;
  const inputExtraCurricular = await req.body.extracurricularInfo;

  if (!inputExtraCurricular) {
    res.status(400).send("Please provide input");
  }

  try {
    await Application.findByIdAndUpdate(applicationId, {
      extracurricularActivities: inputExtraCurricular,
    });

    res.status(200).send("Extra-curricular information recorded");
  } catch (err) {
    res.status(500).send("Couldn't process request please try again");
    console.log(err);
  }
});

router.put("/preferred-department", async (req, res) => {
  const appllicationId = await req.body.applicationId;
  const departmentPreference = await req.body.departmentChoice;

  if (!departmentPreference) {
    res.status(400).send("Please select preferences");
  }

  try {
    await Application.findByIdAndUpdate(appllicationId, {
      $set: { departmentChoice: departmentPreference },
    });

    res.status(200).send("Department choice recorded");
  } catch (err) {
    res.status(500).send("Couldn't process request please try again");
    console.log(err);
  }
});

router.post("/standardized-tests", async (req, res) => {
  const appllicationId = await req.body.applicationId;
  const proficiencyTests = await req.body.standardizedTestScores;

  if (!proficiencyTests) {
    res.status(400).send("Please complete fields");
  }

  try {
    await Application.findByIdAndUpdate(appllicationId, {
      $set: { proficiencyExams: proficiencyTests },
    });

    res.status(200).send("Response recorded");
  } catch (err) {
    res.status(500).send("Couldn't process request please try again");
    console.log(err);
  }
});

router.post("/supplement-essay", async (req, res) => {
  const applicationId = await req.body.applicationId;
  const supplements = await req.body.supplementEssay;

  if (!supplements) {
    res.status(400).send("Please complete fields");
  }

  try {
    await Application.findByIdAndUpdate(applicationId, {
      $set: { smallEssay: supplements },
    });

    res.status(200).send("Response recorded");
  } catch (err) {
    res.status(500).send("Couldn't process request please try again");
    console.log(err);
  }
});

router.get("/admission-status", async (req, res) => {
  const applicationId = await req.body.applicationId;
  const status = await req.body.admissionStatus;

  if (!status) {
    res.status(200).send("Nothing to display");
  }

  res.status(400).send(status);
});

router.post("/application", async (req, res) => {
  console.log("Launched");
  const receivedApplication = await req.body.application;

  // // Get School Transcript
  // const schoolTranscriptContent = receivedApplication.schoolTranscript;
  // const schoolTranscriptFileName = makeFile(schoolTranscriptContent);

  // // Main essay
  // const mainEssayContent = receivedApplication.mainEssay;
  // const mainEssayFileName = makeFile(mainEssayContent);

  // // Letter of Reccomendation
  // const recommendationLetterContent = receivedApplication.reccomendationLetter;
  // const reccomendationLetterFileName = makeFile(recommendationLetterContent);

  // // Extra Certification
  // const extraCertificationContent = receivedApplication.extraCertification;
  // const extraCertificationFileName = makeFile(extraCertificationContent);

  // Create new Application Model
  const newApplication = new Application({
    fullName: receivedApplication.fullName,
    // birthDate: receivedApplication.birthDate,
    // gender: receivedApplication.gender,
    // location: receivedApplication.location,
    // phoneNumber: receivedApplication.phoneNumber,
    // schoolTranscript: schoolTranscriptFileName,
    // mainEssay: mainEssayFileName,
    // extraEssay: receivedApplication.extraEssay,
    // proficiencyTest: receivedApplication.proficencyTest,
    // extraCertification: extraCertificationFileName,
    // recommendationLetter: reccomendationLetterFileName,
    // departmentSelection: receivedApplication.departmentSelection,
    // militaryFamilyStatus: receivedApplication.militaryFamilyStatus,
    // universityFamilyStatus: receivedApplication.universityFamilyStatus,
  });

  console.log(newApplication);

  const application = await newApplication.save();

  const applicationId = await application._id;

  res.status(201).send({ applicationId: `${applicationId}` });
  // console.log("Launched");

  // const value = Math.random();
  // res.status(201).send({ applicationId: `${value}` });
});
router.post("/id/application", async (req, res) => {
  console.log("Launched");
  const applicationIds = await JSON.parse(req.body.applicationIds);

  const applicationIdsArray = Array.from(applicationIds);
  const applicationHighlights = [];

  for (i = 0; i < applicationIdsArray.length; i++) {
    var currentApplication = await Application.findById(applicationIdsArray[i]);
    try {
      applicationHighlights.push({
        name: currentApplication["fullName"],
        admissionStatus: currentApplication["admissionStatus"],
        applicationId: currentApplication.id,
      });
    } catch (e) {}
  }

  console.log(applicationHighlights);

  res.status(200).send(applicationHighlights);

  // res.send("Flile");
});

// Export router
module.exports = router;
