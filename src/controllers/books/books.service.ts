import { Book } from "@interfaces/book.interface";
import { Injectable } from "@nestjs/common";

@Injectable()
export class BooksService {
  private readonly books: Book[] = [
    {
      id: "1984",
      title: "1984",
      subtitle: "Conoce al Gran Hermano",
      author: "George Orwell",
      description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vestibulum finibus nisl id interdum. Curabitur viverra, lectus at porttitor scelerisque, augue quam tincidunt tellus, vel varius nulla mauris ut ex. Ut sem leo, laoreet in leo at, facilisis cursus odio. Nullam ac sapien felis. Sed hendrerit quis erat egestas sollicitudin. Curabitur sit amet volutpat elit. Ut at enim accumsan, laoreet ex sed, vehicula nibh. Mauris sapien elit, auctor tincidunt condimentum in, tristique vitae eros. Proin cursus vestibulum urna non tincidunt. Suspendisse eget maximus ante.",
      genres: ["distopic", "classic"],
      imgUrl: "assets/books/1984/cover.jpg",
    },
    {
      id: "madridzombie",
      title: "Madrid Zombie",
      subtitle: "¡Rambo no!",
      author: "Bruno Piqué",
      description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vestibulum finibus nisl id interdum. Curabitur viverra, lectus at porttitor scelerisque, augue quam tincidunt tellus, vel varius nulla mauris ut ex. Ut sem leo, laoreet in leo at, facilisis cursus odio. Nullam ac sapien felis. Sed hendrerit quis erat egestas sollicitudin. Curabitur sit amet volutpat elit. Ut at enim accumsan, laoreet ex sed, vehicula nibh. Mauris sapien elit, auctor tincidunt condimentum in, tristique vitae eros. Proin cursus vestibulum urna non tincidunt. Suspendisse eget maximus ante.",
      genres: ["zombi", "adventure"],
      imgUrl: "assets/books/madridzombie/cover.jpg",
    },
  ];

  constructor() {}

  public getAll(): Book[] {
    return this.books;
  }
}
