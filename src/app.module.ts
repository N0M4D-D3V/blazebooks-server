import { Module } from "@nestjs/common";
import { DatabaseModule } from "@core/database/database.module";
import { ConfigModule } from "@nestjs/config";
import { BookModule } from "@modules/book/book.module";
import { ChapterModule } from "@modules/chapter/chapter.module";

@Module({
  imports: [
    ConfigModule.forRoot({ isGlobal: true }),
    DatabaseModule,
    BookModule,
    ChapterModule,
  ],
})
export class AppModule {}
