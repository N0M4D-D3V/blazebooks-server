import { Module } from "@nestjs/common";
import { ControllerModule } from "./controllers/controller.module";
import { DatabaseModule } from "./core/database/database.module";

@Module({
  imports: [ControllerModule, DatabaseModule],
})
export class AppModule {}
