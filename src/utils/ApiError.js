class ApiError extends Error {
  constructor(statusCode = 200, message, success = false, isOperational = true, stack = '') {
    super(message);
    this.success = success;
    this.statusCode = statusCode;
    this.isOperational = isOperational;
    if (stack) {
      this.stack = stack;
    } else {
      Error.captureStackTrace(this, this.constructor);
    }
  }
}

module.exports = ApiError;
