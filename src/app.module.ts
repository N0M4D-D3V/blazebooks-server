import { Module } from "@nestjs/common";
import { ServeStaticModule } from "@nestjs/serve-static";
import { join } from "path";
import { ControllerModule } from "./controllers/controller.module";

@Module({
  imports: [
    ControllerModule,
    ServeStaticModule.forRoot({
      rootPath: join(__dirname, "..", "public"),
    }),
  ],
})
export class AppModule {}
