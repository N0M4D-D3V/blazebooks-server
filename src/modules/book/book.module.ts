import { Module } from "@nestjs/common";
import { BookService } from "./book.service";
import { bookProviders } from "./book.providers";

@Module({
  imports: [],
  exports: [BookService],
  providers: [BookService, ...bookProviders],
})
export class BookModule {}
