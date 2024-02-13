import { Module } from "@nestjs/common";
import { BooksController } from "./books.controller";
import { BooksService } from "./books.service";
import { bookProviders } from "./book.provider";

@Module({
  imports: [],
  controllers: [BooksController],
  providers: [BooksService, ...bookProviders],
})
export class BooksModule {}
