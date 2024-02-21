import { Column, DataType, Model, Table } from "sequelize-typescript";

@Table
export class Chapter extends Model<Chapter> {
  @Column({
    type: DataType.STRING,
    allowNull: false,
  })
  chapterId: string | number;

  @Column({
    type: DataType.ARRAY(DataType.STRING),
    allowNull: false,
  })
  pageIds: string[];
}
