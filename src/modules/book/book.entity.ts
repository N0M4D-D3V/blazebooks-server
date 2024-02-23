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
    type: DataType.ARRAY(DataType.STRING),
    allowNull: true,
  })
  genres?: string[];

  @Column({
    type: DataType.ARRAY(DataType.ARRAY(DataType.STRING)),
    allowNull: false,
  })
  content: string[][];

  @Column({
    type: DataType.DATE,
    allowNull: true,
  })
  createdAt?: Date;
  @Column({
    type: DataType.DATE,
    allowNull: true,
  })
  updatedAt?: Date;
}
