import { BOOK_REPOSITORY } from "@core/constants";
import { Inject, Injectable } from "@nestjs/common";
import { Book } from "./book.entity";
import { BookDto } from "./book.dto";

@Injectable()
export class BooksService {
  constructor(
    @Inject(BOOK_REPOSITORY) private readonly bookRepository: typeof Book
  ) {}

  async create(book: BookDto): Promise<Book> {
    return await this.bookRepository.create<Book>(book);
  }

  async getAll(): Promise<Book[]> {
    return await this.bookRepository.findAll<Book>();
  }

  async findOneById(id: number): Promise<Book> {
    return await this.bookRepository.findOne<Book>({ where: { id } });
  }
}
