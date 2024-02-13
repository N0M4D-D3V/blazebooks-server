import { Sequelize } from "sequelize-typescript";
import { databaseConfig } from "./db.config";
import { DEVELOPMENT, PRODUCTION, SEQUELIZE, TEST } from "@core/constants";
import { Book } from "@controllers/books/book.entity";

export const databaseProviders = [
  {
    provide: SEQUELIZE,
    useFactory: async () => {
      let config;
      switch (process.env.NODE_ENV) {
        case DEVELOPMENT:
          config = databaseConfig.dev;
          break;
        case TEST:
          config = databaseConfig.test;
          break;
        case PRODUCTION:
          config = databaseConfig.prod;
          break;
        default:
          config = databaseConfig.dev;
      }
      const sequelize = new Sequelize(config);
      sequelize.addModels([Book]);
      await sequelize.sync();
      return sequelize;
    },
  },
];
