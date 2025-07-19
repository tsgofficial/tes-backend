const express = require('express');

const childRoute = require('./child.route');
const attendanceRoute = require('./attendance.route');
const appAuthRoutes = require('./auth.route');
const contentRoutes = require('./content.route');
const paymentRoutes = require('./payment.route');
const surveyRoutes = require('./survey.route');
const notificationRoutes = require('./notification.route');

const appRouter = express.Router();

const appRoutes = [
  {
    path: '/child',
    route: childRoute,
  },
  {
    path: '/attendance',
    route: attendanceRoute,
  },
  {
    path: '/auth',
    route: appAuthRoutes,
  },
  {
    path: '/content',
    route: contentRoutes,
  },
  {
    path: '/payment',
    route: paymentRoutes,
  },
  {
    path: '/survey',
    route: surveyRoutes,
  },
  {
    path: '/notification',
    route: notificationRoutes,
  },
];

appRoutes.forEach((route) => {
  appRouter.use(route.path, route.route);
});

module.exports = appRouter;
