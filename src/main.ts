import { NestFactory } from "@nestjs/core";
import { AppModule } from "./app.module";

const allowedOrigins: string[] = ["localhost", "http://localhost:4200"];

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  app.enableCors({
    origin: (origin, callback) => {
      if (allowedOrigins.indexOf(origin) !== -1) callback(null, true);
      else {
        console.log("<!> Blazebooks: Host not allowed by cors");
        callback(null, false);
      }
    },
  });

  app.setGlobalPrefix("api/v1");
  await app.listen(3000);
}

bootstrap();
