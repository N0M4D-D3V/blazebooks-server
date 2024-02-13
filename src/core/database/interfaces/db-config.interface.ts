export interface DatabaseConfigAttributes {
  username?: string;
  password?: string;
  database?: string;
  host?: string;
  port?: number | string;
  dialect?: string;
  urlDatabase?: string;
}

export interface DatabaseConfig {
  dev: DatabaseConfigAttributes;
  prod: DatabaseConfigAttributes;
  test: DatabaseConfigAttributes;
}
