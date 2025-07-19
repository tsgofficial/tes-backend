const db = require('../../models');

const MenuRole = db.menuRole;
const Menu = db.menu;
const buildMenu = async (roleId) => {
  try {
    const menuRole = await MenuRole.findOne({
      where: { role_id: roleId },
      attributes: ['menus'],
    });

    if (!menuRole) {
      return { items: [] };
    }

    const allowedMenus = menuRole.menus.split(', ');
    const menuDetails = await Menu.findAll({
      where: {
        url: allowedMenus,
      },
      attributes: ['url', 'title', 'type', 'icon'],
    });

    const menuItems = {
      items: menuDetails.map((menu) => ({
        id: menu.url,
        title: menu.title,
        type: menu.type,
        url: menu.url,
        icon: menu.icon,
      })),
    };

    return menuItems;
  } catch (error) {
    throw new Error('Unable to build menu');
  }
};

module.exports = { buildMenu };
