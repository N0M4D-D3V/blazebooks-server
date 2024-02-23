import { Option } from "../interface/option.interface";

export interface PageDto {
  html: string;
  options: Option[];

  createdAt?: Date;
  updatedAt?: Date;
}
