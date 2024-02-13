import { Column, DataType, Model, Table } from "sequelize-typescript";

@Table
export class Book extends Model<Book> {
  @Column({
    type: DataType.STRING,
    allowNull: false,
  })
  author: string;

  @Column({
    type: DataType.STRING,
    allowNull: false,
  })
  title: string;

  @Column({
    type: DataType.STRING,
    allowNull: true,
  })
  subtitle?: string;

  @Column({
    type: DataType.STRING,
    allowNull: true,
  })
  imgUrl?: string;

  @Column({
    type: DataType.STRING,
    allowNull: true,
  })
  description?: string;

  @Column({
    type: DataType.ARRAY,
    allowNull: true,
  })
  genres?: string[];
}
