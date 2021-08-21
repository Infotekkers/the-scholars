// Importing Essentials
const express = require("express");
const router = express.Router();

// Importing bcrypt
const bcrypt = require("bcrypt");

// Importing validator
const validator = require("validator");

// Import error handler
const handleError = require("../../helpers/errorHandler");

// Importing model
const User = require("../../models/User");

// Importing jwt
const jwt = require("jsonwebtoken");

//  Get Secret key
const secret_key = process.env.SECRET_KEY;

// Mailer setup
const nodemailer = require("nodemailer");

const transporter = nodemailer.createTransport({
  service: "gmail",
  auth: {
    user: "swifttbookss@gmail.com",
    pass: "0935302643Tt",
  },
});

/**
 * @swagger
 * /auth/register:
 *    post:
 *      description: An api endpoint for registering a new User
 *      tags:
 *      - Authentication
 *    responses:
 *      '201':
 *        description: Successfully created user
 */
router.post("/register", async (req, res) => {
  console.log("Registering New User");
  const receivedData = req.body;
  try {
    const newUser = new User({
      userName: `${receivedData.userName}`,
      password: `${receivedData.password}`,
      email: `${receivedData.email}`,
      role: `${receivedData.role}`,
    });

    // Save the user
    const user = await newUser.save();

    // Fetch the user id
    const userId = await user._id;

    // Generate token
    const token = jwt.sign(
      {
        data: userId,
      },
      secret_key,
      { expiresIn: "1h" }
    );

    // Return token
    res.status(200).json({ userToken: token });
  } catch (err) {
    // Use custom error middleware
    const errorMessage = handleError(err);

    // Return error message
    res.json({ errors: errorMessage });
  }
});

/**
 * @swagger
 * /auth/login:
 *    post:
 *      description: An api endpoint for signing in a User
 *      tags:
 *      - Authentication
 *    responses:
 *      '201':
 *        description: Successfully created user
 */
router.post("/login", async (req, res) => {
  const { email, password } = req.body;
  try {
    const user = await User.login(email, password);
    if (user) {
      // Get user id
      const userId = await user._id;

      // Generate token
      const token = jwt.sign(
        {
          data: userId,
        },
        secret_key,
        { expiresIn: "1h" }
      );

      // Send token
      res.status(200).json({ userToken: token });
    }
  } catch (err) {
    res.status(400).json(err);
  }
});

/**
 * @swagger
 * /auth/reset/:changeItem:
 *    patch:
 *      description: An api endpoint for resetting credentials from within the account. After logging in.
 *      tags:
 *      - Authentication
 *    responses:
 *      '201':
 *        description: Successfully created user
 */
router.patch("/reset/:changeItem", async (req, res) => {
  const { changeValue, email } = req.body;
  if (req.params.changeItem == "role" || req.params.changeItem == "username") {
    // Create Update item
    const updateValue = {};
    updateValue[req.params.changeItem] = changeValue;

    console.log(updateValue);

    const userUpdate = await User.updateOne({ email }, { $set: updateValue });
    const user = await User.findOne({ email });
    res.status(200).json(user);
  } else {
    res.status(404).json({ message: "Route not found" });
  }
});

/**
 * @swagger
 * /auth/request/reset:
 *    post:
 *      description: An api endpoint for requesting a reset link sent to associated email
 *      tags:
 *      - Authentication
 *    responses:
 *      '201':
 *        description: Successfully created user
 */
router.post("/request/reset", async (req, res) => {
  const { email } = req.body;

  const resetToken = jwt.sign(
    {
      data: email,
    },
    secret_key,
    { expiresIn: 60 * 60 }
  );
  const resetUrl = `http://localhost:5000/auth/reset/email/${resetToken}`;

  var mailOptions = {
    from: "swifttbookss@gmail.com",
    to: "thomas2alexmech@gmail.com",
    subject: "Sending Email using Node.js",
    text: `${resetUrl}`,
  };

  transporter.sendMail(mailOptions, function (error, info) {
    if (error) {
      res.status(400).json({ message: "Could not send reset email" });
      console.log(error);
    } else {
      res.status(200).json({ message: "Email Successfully sent" });
      console.log("Email sent: " + info.response);
    }
  });
});

/**
 * @swagger
 * /auth/reset/email/:token:
 *    post:
 *      description: An api endpoint for resetting credentials using link sent to email
 *      tags:
 *      - Authentication
 *    responses:
 *      '201':
 *        description: Successfully created user
 */
router.post("/reset/email/:token", async (req, res) => {
  // Verify Token expiry
  const token = req.params.token;

  try {
    // Get Old email
    const decoded = jwt.verify(token, secret_key);
    const email = decoded.data;

    // Check what item to reset
    const { resetItem } = req.body;

    // If email is reset item
    if (resetItem == "email") {
      // Get new email and validate format
      const newEmail = req.body.email;
      const isValid = validator.isEmail(newEmail);

      // If email is valid
      if (isValid) {
        const updateValue = { email: req.body.email };
        console.log(updateValue);

        // Update item
        const user = await User.updateOne({ email }, { $set: updateValue });

        res.json({ message: "Email changed successfully" });
        return;
      }
      res.json({ message: "Incorrect Email" });
    }
    // If password is reset item
    else {
      // Get new password and validate format
      const newPassword = req.body.password;
      const isValid = validator.isStrongPassword(newPassword);

      // If password is valid
      if (isValid) {
        const salt = await bcrypt.genSalt();
        const hashedPassword = await bcrypt.hash(newPassword, salt);
        const updateValue = { password: hashedPassword };
        console.log(updateValue);

        // Update item
        const user = await User.updateOne({ email }, { $set: updateValue });

        res.json({ message: "Password changed successfully" });
        return;
      }
      res.json({ message: "Incorrect password" });
    }
  } catch (err) {
    res.send(err);
  }
});

/**
 * @swagger
 * /auth/delete:
 *    delete:
 *      description: An api endpoint for deleting account
 *      tags:
 *      - Authentication
 *    responses:
 *      '201':
 *        description: Successfully created user
 */
router.delete("/delete", async (req, res) => {
  const { email } = req.body;
  const user = await User.deleteOne({ email })
    .then(() => {
      res.json("Deleted");
    })
    .catch((err) => {
      console.log(err);
    });
});

module.exports = router;
