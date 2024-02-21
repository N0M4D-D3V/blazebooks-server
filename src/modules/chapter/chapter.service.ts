import { CHAPTER_REPOSITORY } from "@core/constants";
import { Inject, Injectable } from "@nestjs/common";
import { Chapter } from "./chapter.entity";
import { ChapterDto } from "./dto/chapter.dto";

@Injectable()
export class ChapterService {
  constructor(
    @Inject(CHAPTER_REPOSITORY) private readonly chapterRepo: typeof Chapter
  ) {}

  async create(chapter: ChapterDto): Promise<Chapter> {
    return this.chapterRepo.create<Chapter>(chapter);
  }

  async getAllByBookId(id: string | number): Promise<Chapter[]> {
    return this.chapterRepo.findAll<Chapter>({ where: { id } });
  }
}
