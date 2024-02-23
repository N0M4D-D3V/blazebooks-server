import { Controller, Get, NotFoundException } from "@nestjs/common";
import { Book } from "./book.entity";
import { BookService } from "./book.service";

@Controller("books")
export class BookController {
  constructor(private readonly booksService: BookService) {}

  @Get()
  public async getAll(): Promise<Book[]> {
    const result: Book[] = await this.booksService.getAll();
    if (result) return result;
    else throw new NotFoundException(`Any book found!`);
  }
}
