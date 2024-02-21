import { Module } from "@nestjs/common";
import { ChapterService } from "./chapter.service";
import { ChapterController } from "./chapter.controller";
import { chapterProviders } from "./chapter.providers";

@Module({
  imports: [],
  exports: [ChapterService],
  controllers: [ChapterController],
  providers: [ChapterService, ...chapterProviders],
})
export class ChapterModule {}
