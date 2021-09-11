// Importing Essentials
const mongoose = require("mongoose");

// Creating user schema
const applicationSchema = mongoose.Schema({
  // Full Name
  fullName: {
    type: String,
    required: false,
    default: "",
  },

  // Birth Date
  birthDate: {
    type: String,
    required: false,
    default: "",
  },

  gender: {
    type: String,
    required: false,
    default: "",
  },

  location: {
    type: String,
    required: false,
    default: "",
  },

  phoneNumber: {
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
  mainEssay: {
    type: String,
    required: false,
    default: "",
    // unique: true,
  },

  //   Stores small Essay as text
  extraEssay: {
    type: String,
    required: false,
    default: "",
    // unique: true,
  },

  //   Filename stored as String
  extraCertification: {
    type: String,
    required: false,
    default: "",
  },

  //   Store Array of URLs for Standardized tests (SAT, TOEFL)

  recommendationLetter: {
    type: String,
    required: false,
    default: "",
  },

  proficiencyTest: {
    type: String,
    required: false,
    default: "",
  },
  //   Department Choice Stored as Array in order of preference
  departmentSelection: {
    type: String,
    required: false,
    default: "",
  },

  militaryFamilyStatus: {
    type: String,
    required: false,
    default: "false",
  },

  universityFamilyStatus: {
    type: String,
    required: false,
    default: "false",
  },

  date: {
    type: String,
    required: false,
  },

  admissionStatus: {
    type: String,
    required: false,
    default: "pending",
  },
});

// Package to ensure unique data
const uniqueValidator = require("mongoose-unique-validator");
applicationSchema.plugin(uniqueValidator);

// Exporting schema as model
module.exports = mongoose.model("applications", applicationSchema);
