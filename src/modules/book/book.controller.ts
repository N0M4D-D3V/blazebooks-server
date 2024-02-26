import { Controller, Get, NotFoundException, Param, Res } from "@nestjs/common";
import { Book } from "./book.entity";
import { BookService } from "./book.service";
import { Observable, of } from "rxjs";
import { join } from "path";

@Controller("books")
export class BookController {
  constructor(private readonly booksService: BookService) {}

  @Get()
  public async getAll(): Promise<Book[]> {
    const result: Book[] = await this.booksService.getAll();
    if (result) return result;
    else throw new NotFoundException(`Any book found!`);
  }

  @Get("cover/:imagename")
  public getBookCover(
    @Param("imagename") imagename: string,
    @Res() res
  ): Observable<Object> {
    return of(
      res.sendFile(join(process.cwd(), "public/images/bookcovers/" + imagename))
    );
  }
}
