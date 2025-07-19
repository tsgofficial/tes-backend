const express = require('express');
const authRoute = require('./auth.route');
const kindersRoute = require('./kinders.route');
const listRoute = require('./list.route');
const userRoute = require('./user.route');
const seminarRoute = require('./seminar.route');
const reportRoutes = require('./report.route');
const pictureRoutes = require('./picture.route');
const planRoutes = require('./plan.route');
const healthRoutes = require('./health.route');
const contentRoutes = require('./content.route');
const attendanceRoutes = require('./attendance.route');
const accountRoutes = require('./account.route');
const foodRoutes = require('./food.route');
const surveyRoutes = require('./survey.route');
const routineRoutes = require('./routine.route');
const seminarTypeRoutes = require('./seminarType.route');
const roleRoutes = require('./role.route');
const paymentRoutes = require('./payment.route');
const notificationRoutes = require('./notification.route');

const router = express.Router();

const defaultRoutes = [
  {
    path: '/auth',
    route: authRoute,
  },
  {
    path: '/kinders',
    route: kindersRoute,
  },
  {
    path: '/list',
    route: listRoute,
  },
  {
    path: '/user',
    route: userRoute,
  },
  {
    path: '/seminar',
    route: seminarRoute,
  },
  // {
  //   path: '/content',
  //   route: contentRoute,
  // },
  {
    path: '/report',
    route: reportRoutes,
  },
  {
    path: '/picture',
    route: pictureRoutes,
  },
  {
    path: '/plan',
    route: planRoutes,
  },
  {
    path: '/health',
    route: healthRoutes,
  },
  {
    path: '/content',
    route: contentRoutes,
  },
  {
    path: '/attendance',
    route: attendanceRoutes,
  },
  {
    path: '/account',
    route: accountRoutes,
  },
  {
    path: '/food',
    route: foodRoutes,
  },
  {
    path: '/survey',
    route: surveyRoutes,
  },
  {
    path: '/routine',
    route: routineRoutes,
  },
  {
    path: '/seminar-type',
    route: seminarTypeRoutes,
  },
  {
    path: '/role',
    route: roleRoutes,
  },
  {
    path: '/payment',
    route: paymentRoutes,
  },
  {
    path: '/notification',
    route: notificationRoutes,
  },
];

// const devRoutes = [
//   {
//     path: '/docs',
//     route: docsRoute,
//   },
// ];

defaultRoutes.forEach((route) => {
  router.use(route.path, route.route);
});

module.exports = router;
