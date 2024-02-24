import { Column, DataType, Model, Table } from "sequelize-typescript";
import { Option } from "./interface/option.interface";

@Table
export class Page extends Model<Page> {
  // book title + chapter number + page number
  @Column({ type: DataType.STRING, allowNull: false })
  reference: string;

  @Column({ type: DataType.TEXT, allowNull: false })
  html: string;

  @Column({ type: DataType.JSONB, allowNull: false })
  options: Option[];

  @Column({ type: DataType.TEXT, allowNull: true })
  scss?: string;

  @Column({ type: DataType.DATE, allowNull: true })
  createdAt?: Date;

  @Column({ type: DataType.DATE, allowNull: true })
  updatedAt?: Date;
}
