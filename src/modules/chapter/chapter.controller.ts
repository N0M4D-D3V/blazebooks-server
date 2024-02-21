import { Controller, Get, Param } from "@nestjs/common";
import { ChapterService } from "./chapter.service";
import { Chapter } from "./chapter.entity";

@Controller("chapters")
export class ChapterController {
  constructor(private readonly chapterService: ChapterService) {}

  @Get()
  public async getAllByBookId(): Promise<Chapter[]> {
    const bookId: string | number = 0;
    return this.chapterService.getAllByBookId(bookId);
  }
}
