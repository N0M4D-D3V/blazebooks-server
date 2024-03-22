import { NestFactory } from "@nestjs/core";
import { AppModule } from "./app.module";

const allowedOrigins: string[] = ["localhost", "http://localhost:4200"];

async function bootstrap() {
  const app = await NestFactory.create(AppModule);

  app.enableCors({
    origin: (origin, callback) => {
      callback(null, true);
    },
  });

  app.setGlobalPrefix("api/v1");
  await app.listen(3000, "0.0.0.0");
}

bootstrap();
