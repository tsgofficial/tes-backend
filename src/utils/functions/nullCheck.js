const nullCheck = (value) => {
  if (value === null || value === undefined || value === '') {
    return true;
  }
  return false;
};

module.exports = { nullCheck };
