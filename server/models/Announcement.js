// Importing Essentials
const mongoose = require("mongoose");

// Creating Announcement
const announcementSchema = mongoose.Schema({
  // Title
  title: {
    type: String,
    required: true,
    default: "",
  },

  // Body
  body: {
    type: String,
    required: true,
    default: "",
  },

//   Date
  date: {
    type: String,
    required: false,
    default: "",
  },
});

// Exporting schema as model
module.exports = mongoose.model("announcements", announcementSchema);
