import type { Sequelize } from "sequelize";
import { fuel_location_distances as _fuel_location_distances } from "./fuel_location_distances";
import type { fuel_location_distancesAttributes, fuel_location_distancesCreationAttributes } from "./fuel_location_distances";

export {
  _fuel_location_distances as fuel_location_distances,
};

export type {
  fuel_location_distancesAttributes,
  fuel_location_distancesCreationAttributes,
};

export function initModels(sequelize: Sequelize) {
  const fuel_location_distances = _fuel_location_distances.initModel(sequelize);


  return {
    fuel_location_distances: fuel_location_distances,
  };
}
