import { Module } from "@nestjs/common";
import { DatabaseModule } from "@core/database/database.module";
import { ConfigModule } from "@nestjs/config";
import { BookModule } from "@modules/book/book.module";
import { PageModule } from "@modules/page/page.module";

@Module({
  imports: [
    ConfigModule.forRoot({ isGlobal: true }),
    DatabaseModule,
    BookModule,
    PageModule,
  ],
})
export class AppModule {}
