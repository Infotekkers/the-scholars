// Importing Essentials
const mongoose = require("mongoose");
const { isEmail, isStrongPassword } = require("validator");

// Importing bcrypt
const bcrypt = require("bcrypt");

// Creating user schema
const userSchema = mongoose.Schema({
  userName: {
    type: String,
    required: [true, "Please enter a Username"],
    unique: true,
  },
  password: {
    type: String,
    required: [true, "Please enter a Password"],
    minlength: 8,
    validate: [isStrongPassword, "Please use a strong Password"],
  },
  email: {
    type: String,
    required: [true, "Please enter an Email"],
    unique: true,
    validate: [isEmail, "Please Enter a valid Email"],
  },
  role: {
    type: String,
    required: [true, "Please select your Role"],
    lowercase: true,
  },
});

// Package to ensure unique data
const uniqueValidator = require("mongoose-unique-validator");
userSchema.plugin(uniqueValidator);

// Add Hook to hash password
userSchema.pre("save", async function (next) {
  const salt = await bcrypt.genSalt();
  this.password = await bcrypt.hash(this.password, salt);
  next();
});

// Create a login method
userSchema.statics.login = async function (email, password) {
  const user = await this.findOne({ email });
  if (user) {
    const passwordMatch = await bcrypt.compare(password, user.password);
    
    if (passwordMatch) {
      return user;
    }

    throw Error("Incorrect email and/or password");
  }

  throw Error("Incorrect email and/or password");
};

// Exporting schema as model
module.exports = mongoose.model("users", userSchema);
