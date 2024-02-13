import { Module } from "@nestjs/common";
import { DatabaseModule } from "./core/database/database.module";
import { ConfigModule } from "@nestjs/config";
import { UsersModule } from "./modules/users/users.module";
import { BookModule } from "./modules/book/book.module";

@Module({
  imports: [
    ConfigModule.forRoot({ isGlobal: true }),
    DatabaseModule,
    UsersModule,
    BookModule,
  ],
})
export class AppModule {}
