// File reader and writer import
const fs = require("fs");

// Name Generator import
const { v4: uuidv4 } = require("uuid");

function makeFile(fileContent) {
  const itemFile = Buffer.from(fileContent, "base64");
  const itemFileName = uuidv4();
  fs.writeFileSync(`uploads/${itemFileName}.pdf`, itemFile, function (err) {
    if (err) console.log(err);
  });

  return itemFileName;
}

module.exports = makeFile;
