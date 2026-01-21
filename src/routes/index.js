const express = require('express');

const { protect } = require('../middlewares/auth');
const home = require('./home.route');
const auth = require('./auth.route');
const users = require('./users.route');
const trucks = require('./truck.route');
const drivers = require('./driver.route');
const trailers = require('./trailer.route');
const deliveries = require('./delivery.route');
const fuelTypes = require('./fuel_type.route');
const fuelLocations = require('./fuel_location.route');
const fuelLocationDistances = require('./fuel_location_distance.route');
const statuses = require('./status.route');
const report = require('./report.route');
const warehouse = require('./warehouse.route');
const order = require('./order.route');

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
  {
    path: '/statuses',
    route: statuses,
  },
  {
    path: '/home',
    route: home,
  },
  {
    path: '/warehouse',
    route: warehouse,
  },
  {
    path: '/orders',
    route: order,
  },
];

defaultRoutes.forEach((route) => {
  router.use(route.path, route.route);
});
adminRoutes.forEach((route) => {
  router.use(route.path, protect, route.route);
});

module.exports = router;
