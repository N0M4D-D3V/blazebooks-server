import { Module } from "@nestjs/common";
import { ControllerModule } from "./controllers/controller.module";
import { DatabaseModule } from "./core/database/database.module";
import { ConfigModule } from "@nestjs/config";

@Module({
  imports: [
    ConfigModule.forRoot({ isGlobal: true }),
    DatabaseModule,
    ControllerModule,
  ],
})
export class AppModule {}
