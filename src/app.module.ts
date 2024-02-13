import { Module } from "@nestjs/common";
import { ControllerModule } from "./controllers/controller.module";
import { DatabaseModule } from "./core/database/database.module";
import { ConfigModule } from "@nestjs/config";
import { UsersModule } from './modules/users/users.module';

@Module({
  imports: [
    ConfigModule.forRoot({ isGlobal: true }),
    DatabaseModule,
    ControllerModule,
    UsersModule,
  ],
})
export class AppModule {}
