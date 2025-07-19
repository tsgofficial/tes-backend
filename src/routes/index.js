const express = require('express');
const trucks = require('./truck.route');
const drivers = require('./driver.route');
const volumes = require('./volume.route');
const deliveries = require('./delivery.route');
const fuelLocations = require('./fuel_location.route');

const router = express.Router();

const defaultRoutes = [
  {
    path: '/trucks',
    route: trucks,
  },
  {
    path: '/volumes',
    route: volumes,
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

module.exports = router;
