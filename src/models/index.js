const { Sequelize, DataTypes } = require('sequelize');
const dbConfig = require('../config/db.config');

const sequelize = new Sequelize(dbConfig.DB, dbConfig.USER, dbConfig.PASSWORD, {
  host: dbConfig.HOST,
  port: dbConfig.PORT,
  dialect: dbConfig.dialect,
  logging: false,
  pool: {
    max: dbConfig.pool.max,
    min: dbConfig.pool.min,
    acquire: dbConfig.pool.acquire,
    idle: dbConfig.pool.idle,
  },
});

const db = {};

db.Sequelize = Sequelize;
db.sequelize = sequelize;
db.users = require('./users.model')(sequelize, Sequelize, DataTypes);
db.kinders = require('./kinders.model')(sequelize, Sequelize, DataTypes);
db.city = require('./city.model')(sequelize, Sequelize, DataTypes);
db.district = require('./district.model')(sequelize, Sequelize, DataTypes);
db.groups = require('./groups.model')(sequelize, Sequelize, DataTypes);
db.groupType = require('./group_type.model')(sequelize, Sequelize, DataTypes);
db.roles = require('./roles.model')(sequelize, Sequelize, DataTypes);
db.seminarTypes = require('./seminar_type.model')(sequelize, Sequelize, DataTypes);
db.seminars = require('./seminar.model')(sequelize, Sequelize, DataTypes);
// db.contents = require('./content.model')(sequelize, Sequelize, DataTypes);
// db.content_categories = require('./content_category.model')(sequelize, Sequelize, DataTypes);
db.child = require('./child.model')(sequelize, Sequelize, DataTypes);
db.attendance = require('./attendance.model')(sequelize, Sequelize, DataTypes);
db.reports = require('./reports.model')(sequelize, Sequelize, DataTypes);
db.reportCategory = require('./report_category.model')(sequelize, Sequelize, DataTypes);
db.reportSection = require('./report_section.model')(sequelize, Sequelize, DataTypes);
db.plans = require('./plans.model')(sequelize, Sequelize, DataTypes);
db.planCategory = require('./plan_category.model')(sequelize, Sequelize, DataTypes);
db.planSection = require('./plan_section.model')(sequelize, Sequelize, DataTypes);
db.health = require('./health.model')(sequelize, Sequelize, DataTypes);
db.contents = require('./contents.model')(sequelize, Sequelize, DataTypes);
db.contentSection = require('./content_section.model')(sequelize, Sequelize, DataTypes);
db.contentCategory = require('./content_category.model')(sequelize, Sequelize, DataTypes);
db.food = require('./food.model')(sequelize, Sequelize, DataTypes);
db.foodCategory = require('./food_category.model')(sequelize, Sequelize, DataTypes);
db.menu = require('./menu.model')(sequelize, Sequelize, DataTypes);
db.menuRole = require('./menu_role.model')(sequelize, Sequelize, DataTypes);

db.survey = require('./survey.model')(sequelize, Sequelize, DataTypes);
db.surveySections = require('./survey_sections.model')(sequelize, Sequelize, DataTypes);
db.surveyQuestions = require('./survey_questions.model')(sequelize, Sequelize, DataTypes);
db.surveyAnswers = require('./survey_answers.model')(sequelize, Sequelize, DataTypes);
db.surveySelect = require('./survey_select.model')(sequelize, Sequelize, DataTypes);
db.payment = require('./payment.model')(sequelize, Sequelize, DataTypes);
// db.surveyResults = require('./survey_results.model')(sequelize, Sequelize, DataTypes);

db.routine = require('./routine.model')(sequelize, Sequelize, DataTypes);
db.notification = require('./notifications.model')(sequelize, Sequelize, DataTypes);
db.notificationUser = require('./notifications_user.model')(sequelize, Sequelize, DataTypes);

Object.keys(db).forEach((modelName) => {
  if (db[modelName].associate) {
    db[modelName].associate(db);
  }
});

module.exports = db;
