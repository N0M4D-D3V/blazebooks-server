import { Controller, Get, Res } from "@nestjs/common";

@Controller("books")
export class BooksController {
  constructor() {}

  @Get()
  getAll(@Res() res: Response) {}
}
