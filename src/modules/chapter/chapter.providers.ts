import { CHAPTER_REPOSITORY } from "@core/constants";
import { Chapter } from "./chapter.entity";

export const chapterProviders = [
  { provide: CHAPTER_REPOSITORY, useValue: Chapter },
];
