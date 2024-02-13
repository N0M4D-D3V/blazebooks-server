import { NestFactory } from "@nestjs/core";
import { AppModule } from "./app.module";

const allowedOrigins: string[] = ["http://localhost:4200"];

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  app.enableCors({
    origin: (origin, callback) => {
      if (allowedOrigins.indexOf(origin) !== -1) callback(null, true);
      else callback(new Error("Not allowed by cors"));
    },
  });

  app.setGlobalPrefix("api/v1");
  await app.listen(3000);
}

bootstrap();
