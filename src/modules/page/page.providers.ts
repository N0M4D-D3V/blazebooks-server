import { PAGE_REPOSITORY } from "@core/constants";
import { Page } from "./page.entity";

export const pageProviders = [{ provide: PAGE_REPOSITORY, useValue: Page }];
