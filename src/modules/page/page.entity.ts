import { Column, DataType, Model, Table } from "sequelize-typescript";
import { Option } from "./interface/option.interface";

@Table
export class Page extends Model<Page> {
  @Column({ type: DataType.TEXT, allowNull: false })
  html: string;

  @Column({ type: DataType.JSONB, allowNull: false })
  options: Option[];
}
