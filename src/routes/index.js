const express = require('express');

const auth = require('./auth.route');
const users = require('./users.route');
const trucks = require('./truck.route');
const drivers = require('./driver.route');
const trailers = require('./trailer.route');
const deliveries = require('./delivery.route');
const fuelTypes = require('./fuel_type.route');
const fuelLocations = require('./fuel_location.route');
const fuelLocationDistances = require('./fuel_location_distance.route');

const report = require('./report.route');
// const { protect } = require('../middlewares/auth');

const router = express.Router();

const defaultRoutes = [
  {
    path: '/auth',
    route: auth,
  },
];

const adminRoutes = [
  {
    path: '/users',
    route: users,
  },
  {
    path: '/trucks',
    route: trucks,
  },
  {
    path: '/trailers',
    route: trailers,
  },
  {
    path: '/drivers',
    route: drivers,
  },
  {
    path: '/fuel-locations',
    route: fuelLocations,
  },
  {
    path: '/deliveries',
    route: deliveries,
  },
  {
    path: '/report',
    route: report,
  },
  {
    path: '/fuel-types',
    route: fuelTypes,
  },
  {
    path: '/fuel-location-distances',
    route: fuelLocationDistances,
  },
];

// const devRoutes = [
// {
//   path: '/docs',
//   route: docsRoute,
// },
// ];

defaultRoutes.forEach((route) => {
  router.use(route.path, route.route);
});
// adminRoutes.forEach((route) => {
//   router.use(route.path, protect, route.route);
// });
adminRoutes.forEach((route) => {
  router.use(route.path, route.route);
});

module.exports = router;
