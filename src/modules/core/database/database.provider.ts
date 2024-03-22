import { Sequelize } from "sequelize-typescript";
import { databaseConfig } from "./db.config";
import { DEVELOPMENT, PRODUCTION, SEQUELIZE, TEST } from "@core/constants";
import { Book } from "@modules/book/book.entity";
import { Page } from "@modules/page/page.entity";

import * as fs from "fs";
import * as path from "path";

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
      const sequelize: Sequelize = new Sequelize(config);
      sequelize.addModels([Book, Page]);
      await sequelize.sync();
      await initIfNeeded(sequelize);

      return sequelize;
    },
  },
];

const initIfNeeded = async (sequelize: Sequelize) => {
  const countBooks: number = await sequelize.models.Book.count();
  const countPages: number = await sequelize.models.Page.count();

  //if count === 0, then table is empty
  if (countBooks === 0 && countPages === 0) {
    // Run PostgreSQL script
    console.log("<> DB Provider: tables are empty");
    console.log("<> DB Provider: running bulk load...");

    const sqlPath: string = path.resolve(__dirname, "../sql/db-demo.sql");
    const sql: string = fs.readFileSync(sqlPath, "utf-8");

    // Execute SQL queries
    try {
      await sequelize.query(sql);
      console.log("<> DB Provider: data loaded successfully!");
    } catch (error) {
      console.error("<> DB Provider: error loading data!", error);
    }
  }
};
