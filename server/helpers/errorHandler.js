const handleError = (err) => {
  // Error message to be sent
  let errorMessage = {};
  console.log(err);

  //   If error is validation related => Auth
  if (err.message.includes("users validation failed")) {
    // Access all error values as array
    const allErrors = Object.values(err.errors);
    allErrors.forEach((currentError) => {
      // If error is uniqueness error
      if (currentError.message.includes("unique")) {
        // Capitalize the error
        var finalPath =
          currentError.path.charAt(0).toUpperCase() +
          currentError.path.slice(1);
        errorMessage[currentError.path] = `${finalPath} is already in use`;
      }
      // If Error is something else
      else {
        errorMessage[currentError.path] = currentError.message;
      }
    });

    console.log(errorMessage);
    return errorMessage;
  }
};

module.exports = handleError;
