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

//  Defining Components begin

// Defining Swagger Component - Register User
/**
 *@swagger
 * components:
 *   schemas:
 *     RegisterUser:
 *       type : object
 *       properties:
 *         userName:
 *           type: string
 *           default: userOne
 *         password:
 *           type: string
 *           default: Testing@123
 *         email:
 *           type: string
 *           default: userOne@gmail.com
 *         role:
 *           type: string
 *           default: user
 *       required:
 *          - userName
 *          - password
 *          - email
 *          - role
 * */

// Defining Swagger Component - Login User
/**
 *@swagger
 * components:
 *   schemas:
 *     LoginUser:
 *       type : object
 *       properties:
 *         password:
 *           type: string
 *           default: Testing@123
 *         email:
 *           type: string
 *           default: userOne@gmail.com
 *       required:
 *          - email
 *          - password
 * */

//  Defining Swagger Component- Local Reset
/**
 *@swagger
 * components:
 *   schemas:
 *     LocalReset:
 *       type : object
 *       properties:
 *         changeValue:
 *           type: string
 *           default: user
 *           description : Value of the item to be changed
 *         email:
 *           type: string
 *           default: userOne@gmail.com
 *       required:
 *          - email
 *          - changeValue
 * */

//  Defining Swagger Component - Email
/**
 *@swagger
 * components:
 *   schemas:
 *     Email:
 *       type : object
 *       properties:
 *         email:
 *           type: string
 *           default: userOne@gmail.com
 *       required:
 *          - email
 * */

//  Defining Swagger Component - Token
/**
 *@swagger
 * components:
 *   schemas:
 *     Token:
 *       type : object
 *       properties:
 *         token:
 *           type: string
 *       required:
 *          - token
 * */

//  Defining Ends

/**
 * @swagger
 * /auth/register:
 *  post:
 *    summary: An endpoint to register a new user
 *    tags : [Authentication]
 *    consumes:
 *      - application/json
 *    requestBody:
 *      description : Body must contain the following details
 *      required: true
 *      content:
 *        application/json:
 *          schema:
 *            $ref: '#components/schemas/RegisterUser'
 *    responses:
 *      200 :
 *        description : Returns a generated user token
 */
router.post("/register", async (req, res) => {
  try {
    console.log("Registering New User");
    const receivedData = req.body;

    const newUser = new User({
      userName: `${receivedData.name}`,
      password: `${receivedData.password}`,
      email: `${receivedData.emailAddress}`,
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
    res.status(201).json({
      token: token,
      name: user.userName,
      emailAddress: user.email,
      role: user.role,
    });
  } catch (err) {
    // Use custom error middleware
    const errorMessage = handleError(err);

    // Return error message
    // res.status(400).json({ errors: errorMessage });
    res.status(500).send("Please try again later!");
  }
});

/**
 * @swagger
 * /auth/login:
 *  post:
 *    summary: An endpoint to login a user
 *    tags : [Authentication]
 *    consumes:
 *      - application/json
 *    requestBody:
 *      description : Body must contain the following details
 *      required: true
 *      content:
 *        application/json:
 *          schema:
 *            $ref: '#components/schemas/LoginUser'
 *    responses:
 *      200 :
 *        description : Returns a generated user token
 */
router.post("/login", async (req, res) => {
  try {
    console.log("Logging in");
    const { emailAddress, password } = req.body;

    const user = await User.login(emailAddress, password);
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
      res.status(200).json({
        token: token,
        name: user.userName,
        emailAddress: user.email,
        role: user.role,
      });
    }
    console.log("User Matched");
  } catch (err) {
    // res.status(400).json(err);
    res.status(500).send("Please try again later!");
  }
});

/**
 * @swagger
 * /auth/reset/{changeItem}:
 *  patch:
 *    summary: An endpoint to reset credentials from within the app
 *    tags : [Authentication]
 *    consumes:
 *      - application/json
 *    parameters:
 *    - in : path
 *      name: changeItem
 *      schema:
 *        type: string
 *        default: role
 *      required: true
 *      description : Item to be changed
 *    requestBody:
 *      description : Body must contain the following details
 *      required: true
 *      content:
 *        application/json:
 *          schema:
 *            $ref : '#components/schemas/LocalReset'
 *    responses:
 *      200 :
 */
router.patch("/reset/:changeItem", async (req, res) => {
  try {
    const { changeValue, email } = req.body;

    if (
      req.params.changeItem == "role" ||
      req.params.changeItem == "username"
    ) {
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
  } catch (e) {
    console.log(e);
    res.status(500).send("Please try again later!");
  }
});

/**
 * @swagger
 * /auth/request/reset:
 *  post:
 *    summary: An endpoint to request a reset token to email
 *    tags : [Authentication]
 *    consumes:
 *      - application/json
 *    requestBody:
 *      description : Body must contain the following details
 *      required: true
 *      content:
 *        application/json:
 *          schema:
 *            $ref : '#components/schemas/Email'
 *    responses:
 *      200 :
 */
router.post("/request/reset", async (req, res) => {
  try {
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
  } catch (e) {
    res.status(500).send("Please try again later!");
  }
});

/**
 * @swagger
 * /auth/reset/email/{token}:
 *  post:
 *    summary: An endpoint to reset credentials before logging in. Via email
 *    tags : [Authentication]
 *    consumes:
 *      - application/json
 *    parameters:
 *    - in : path
 *      name: changeItem
 *      schema:
 *        $ref : '#components/schemas/Token'
 *      required: true
 *    responses:
 *      200 :
 */
router.post("/reset/email/:token", async (req, res) => {
  try {
    // Verify Token expiry
    const token = req.params.token;

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
  } catch (e) {
    res.status(500).send("Please try again later!");
  }
});

/**
 * @swagger
 * /auth/request/reset:
 *  delete:
 *    summary: An endpoint to delete account
 *    tags : [Authentication]
 *    consumes:
 *      - application/json
 *    requestBody:
 *      description : Body must contain the following details
 *      required: true
 *      content:
 *        application/json:
 *          schema:
 *            $ref : '#components/schemas/Email'
 *    responses:
 *      200 :
 */
router.delete("/delete", async (req, res) => {
  try {
    const { email } = req.body;
    const user = await User.deleteOne({ email })
      .then(() => {
        res.json("Deleted");
      })
      .catch((err) => {
        console.log(err);
      });
  } catch (e) {
    res.status(500).send("Please try again later!");
  }
});

module.exports = router;
