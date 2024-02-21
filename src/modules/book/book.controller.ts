import { Controller, Get } from "@nestjs/common";
import { Book } from "./book.entity";
import { BookService } from "./book.service";

@Controller("books")
export class BookController {
  constructor(private readonly booksService: BookService) {}

  @Get()
  public async getAll(): Promise<Book[]> {
    return this.booksService.getAll();
  }
}
