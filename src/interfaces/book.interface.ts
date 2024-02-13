export interface Book {
  id: string;
  author: string;
  title: string;

  subtitle?: string;
  imgUrl?: string;
  description?: string;
  genres?: string[];
}
