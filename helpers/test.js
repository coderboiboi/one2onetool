exports.rnd = Math.random;

exports.get = function get(arr, rndFunc) {
  const random = rndFunc || exports.rnd;
  return arr[Math.floor(random() * arr.length)];
};

exports.getIndex = function getIndex(upper, rndFunc) {
  const random = rndFunc || exports.rnd;
  return Math.floor(random() * upper);
};

function get(arr, rndFunc) {
  const random = rndFunc || exports.rnd;
  return arr[Math.floor(random() * arr.length)];
};

const items = [254, 45, 212, 365, 2543];
console.log(get(items));
