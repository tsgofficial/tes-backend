const express = require('express');
const appAuthRoutes = require('./auth.route');
const appFoodRoutes = require('./food.route');
const appContentRoutes = require('./content.route');
const appAttendanceRoutes = require('./attendance.route');
const appNotificationRoutes = require('./notification.route');
const appHomeRoutes = require('./home.route');

const appRouter = express.Router();

const appRoutes = [
  {
    path: '/auth',
    route: appAuthRoutes,
  },
  {
    path: '/food',
    route: appFoodRoutes,
  },
  {
    path: '/content',
    route: appContentRoutes,
  },
  {
    path: '/attendance',
    route: appAttendanceRoutes,
  },
  {
    path: '/notification',
    route: appNotificationRoutes,
  },
  {
    path: '/home',
    route: appHomeRoutes,
  },
];

appRoutes.forEach((route) => {
  appRouter.use(route.path, route.route);
});

module.exports = appRouter;
