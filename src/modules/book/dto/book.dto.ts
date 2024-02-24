export class BookDto {
  author: string;
  title: string;

  subtitle?: string;
  imgUrl?: string;
  description?: string;
  genres?: string[];

  createdAt?: Date;
  updatedAt?: Date;

  /**
   * Stores the content. First level refers to chapter and
   * second level refers to pageID
   */
  content: string[][];

  // Plain text. Specific styles for this book.
  scss?: string;
}
