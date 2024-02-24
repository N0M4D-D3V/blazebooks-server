import { Option } from "../interface/option.interface";

export interface PageDto {
  // book title + chapter number + page number
  reference: string;

  html: string;
  options: Option[];

  createdAt?: Date;
  updatedAt?: Date;
}
