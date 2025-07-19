/* eslint-disable no-param-reassign */
const db = require('../models');
const catchAsync = require('../utils/catchAsync');
const { uploadToS3, uploadDocumentToS3 } = require('../utils/functions/fileUpload');

const Plans = db.plans;
const PlanSection = db.planSection;
const PlansCategory = db.planCategory;

const getCategory = catchAsync(async (req, res) => {
  const plansCategories = await PlansCategory.findAll({});

  res.send({
    success: true,
    message: 'Plans category fetched successfully',
    data: plansCategories,
  });
});
const getPlan = catchAsync(async (req, res) => {
  let sentData = [];
  let receivedData = [];

  // Check if roleId is 2 or 3 to search by kinder_id
  if (req.roleId === 2 || req.roleId === 3) {
    // Fetch plans by kinder_id and store in receivedData
    receivedData = await Plans.findAll({
      where: { kinder_id: req.kinderId },
      include: [{ model: PlanSection, as: 'sections' }],
    });
  }

  // Fetch plans by user_id and store in sentData
  sentData = await Plans.findAll({
    where: { user_id: req.userId },
    include: [{ model: PlanSection, as: 'sections' }],
    order: [['created_date', 'DESC']],
  });

  sentData.forEach((plan) => {
    plan.sections.forEach((section) => {
      if (section.images) {
        section.images = section.images.split(',');
      } else {
        section.images = [];
      }
    });
  });
  res.send({
    success: true,
    message: 'Plans fetched successfully',
    data: {
      sentData, // Data fetched by user_id
      receivedData, // Data fetched by kinder_id (only for roleId 2 or 3)
    },
  });
});
const detailPlan = catchAsync(async (req, res) => {
  const { id } = req.params;
  const plan = await Plans.findByPk(id, {
    include: [{ model: PlanSection, as: 'sections' }],
  });
  res.send({
    success: true,
    message: 'Plan fetched successfully',
    data: plan,
  });
});

const addPlan = catchAsync(async (req, res) => {
  const { userId, title, description, startDate, endDate, categoryId, contentId, type, length } = req.body;

  const { docFile } = req.files ?? {};
  let docUploadResult = {};
  if (docFile) {
    docUploadResult = await uploadDocumentToS3('tes-plan', docFile);
  }

  const plan = await Plans.create({
    type,
    title,
    description,
    user_id: userId,
    category_id: categoryId,
    content_id: contentId,
    start_date: startDate,
    end_date: endDate,
    file: docUploadResult.url,
    file_name: docFile?.name,
    mimetype: docFile?.mimetype,
  });

  const sections = await Promise.all(
    Array.from({ length }, async (_, i) => {
      const sectionDescription = req.body[`sections[${i}].description`] || null;
      const sectonUrl = req.body[`sections[${i}].url`] || null;

      let imageUrls = [];
      const { images } = req.files ?? {};
      if (images) {
        let imageFiles = [];

        if (Array.isArray(images)) {
          imageFiles =
            images.filter((file) => {
              return file.name && file.name.startsWith(`sections[${i}]`);
            }) || [];
        } else if (images.name && images.name.startsWith(`sections[${i}]`)) {
          imageFiles = [images];
        }

        imageUrls = (
          await Promise.all(
            imageFiles.map(async (imageFile) => {
              try {
                const uploadResult = await uploadToS3('tes-plan', imageFile);
                if (uploadResult.success) return uploadResult.url;
              } catch (error) {
                return null;
              }
            })
          )
        ).filter(Boolean);
      }

      return {
        plan_id: plan.id,
        description: sectionDescription,
        images: imageUrls.join(','),
        url: sectonUrl,
      };
    })
  );

  if (sections.length > 0) {
    await PlanSection.bulkCreate(sections);
  }

  res.send({
    success: true,
    message: 'Тайлан амжилттай үүсгэлээ',
  });
});
const actPlan = catchAsync(async (req, res) => {
  const { id } = req.params;
  const { action } = req.body;
  const updatedRow = await Plans.update({ type: action }, { where: { id } });
  if (!updatedRow) {
    throw new Error('Failed to update report');
  }
  res.send({
    success: true,
    message: `Тайланг амжилттай ${action === 'approved' ? 'баталгаажууллаа' : 'татгалзлаа'}`,
  });
});
const deletePlan = catchAsync(async (req, res) => {
  const { id } = req.params;

  // Find the plan
  const plan = await Plans.findByPk(id);

  if (!plan) {
    return res.status(404).send({
      success: false,
      message: 'Plan not found',
    });
  }

  // Delete associated sections if they exist
  await PlanSection.destroy({
    where: { plan_id: plan.id },
  });

  // Delete the plan
  await plan.destroy();

  res.send({
    success: true,
    message: 'Төлөвлөгөө амжилттай устгагдлаа',
  });
});
const editPlan = catchAsync(async (req, res) => {
  const { id } = req.params;
  const { userId, title, description, startDate, endDate, categoryId, contentId, type, length } = req.body;

  const { docFile } = req.files ?? {};
  let docUploadResult = {};

  const plan = await Plans.findByPk(id);

  if (!plan) {
    return res.status(404).send({
      success: false,
      message: 'Plan not found',
    });
  }

  if (docFile) {
    docUploadResult = await uploadDocumentToS3('tes-plan', docFile);
  }

  // Update the plan details
  await plan.update({
    type,
    title,
    description,
    user_id: userId,
    category_id: categoryId,
    content_id: contentId,
    start_date: startDate,
    end_date: endDate,
    file: docUploadResult.url ?? plan.file,
    file_name: docFile?.name ?? plan.file_name,
    mimetype: docFile?.mimetype ?? plan.mimetype,
  });

  const sections = await Promise.all(
    Array.from({ length }, async (_, i) => {
      const sectionDescription = req.body[`sections[${i}].description`] || null;
      const sectonUrl = req.body[`sections[${i}].url`] || null;

      let imageUrls = [];
      const { images } = req.files ?? {};
      if (images) {
        let imageFiles = [];

        if (Array.isArray(images)) {
          imageFiles =
            images.filter((file) => {
              return file.name && file.name.startsWith(`sections[${i}]`);
            }) || [];
        } else if (images.name && images.name.startsWith(`sections[${i}]`)) {
          imageFiles = [images];
        }

        imageUrls = (
          await Promise.all(
            imageFiles.map(async (imageFile) => {
              try {
                const uploadResult = await uploadToS3('tes-plan', imageFile);
                if (uploadResult.success) return uploadResult.url;
              } catch (error) {
                return null;
              }
            })
          )
        ).filter(Boolean);
      }

      return {
        plan_id: plan.id,
        description: sectionDescription,
        images: imageUrls.join(','),
        url: sectonUrl,
      };
    })
  );

  if (sections.length > 0) {
    await PlanSection.destroy({
      where: { plan_id: plan.id },
    });
    await PlanSection.bulkCreate(sections);
  }

  res.send({
    success: true,
    message: 'Төлөвлөгөө амжилттай шинэчлэгдлээ',
  });
});

module.exports = { addPlan, getPlan, detailPlan, getCategory, actPlan, deletePlan, editPlan };
