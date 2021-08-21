// Importing Essentials
const mongoose = require("mongoose");

// Creating user schema
const applicationSchema = mongoose.Schema({
  applicantIdentifier: {
    type: String,
    required: false,
    default: "",
  },
  // Stores the transcripts filename as string
  schoolTranscript: {
    type: String,
    required: false,
    default: "",
    // unique: true,
  },

  // Stores the essay filename as string
  essayFile: {
    type: String,
    required: false,
    default: "",
    // unique: true,
  },

  //   Stores small Essay as text
  smallEssay: {
    type: String,
    required: false,
    default: "",
    // unique: true,
  },

  //   Store a URL for SAT Scores
  proficiencyExams: {
    type: String,
    required: false,
    default: "",
  },

  extracurricularActivities: {
    type: String,
    required: false,
    default: "",
  },
  //   Department Choice Stored as Array in order of preference
  departmentChoice: {
    type: [String],
    required: false,
    default: "",
  },

  //   Filename stored as String
  extraCertification: {
    type: String,
    required: false,
    default: "",
  },
  admissionStatus: {
    type: String,
    required: false,
    default: "",
  },
});

// Package to ensure unique data
const uniqueValidator = require("mongoose-unique-validator");
applicationSchema.plugin(uniqueValidator);

// Exporting schema as model
module.exports = mongoose.model("applications", applicationSchema);
