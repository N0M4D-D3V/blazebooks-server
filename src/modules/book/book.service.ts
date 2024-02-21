import { BOOK_REPOSITORY } from "@core/constants";
import { Inject, Injectable } from "@nestjs/common";
import { Book } from "./book.entity";
import { BookDto } from "./dto/book.dto";

@Injectable()
export class BookService {
  constructor(
    @Inject(BOOK_REPOSITORY) private readonly bookRepository: typeof Book
  ) {}

  async create(book: BookDto): Promise<Book> {
    return this.bookRepository.create<Book>(book);
  }

  async getAll(): Promise<Book[]> {
    return this.bookRepository.findAll<Book>();
  }

  async findOneById(id: number): Promise<Book> {
    return this.bookRepository.findOne<Book>({ where: { id } });
  }
}
