import { Module } from "@nestjs/common";
import { BookService } from "./book.service";
import { bookProviders } from "./book.providers";
import { BookController } from "./book.controller";

@Module({
  imports: [],
  exports: [BookService],
  controllers: [BookController],
  providers: [BookService, ...bookProviders],
})
export class BookModule {}
