import { Controller, Get, NotFoundException, Param } from "@nestjs/common";
import { PageService } from "./page.service";
import { Page } from "./page.entity";

@Controller("pages")
export class PageController {
  constructor(private readonly pageService: PageService) {}

  @Get(":id")
  public async getPageById(@Param("id") id: string | number): Promise<Page> {
    const result: Page = await this.pageService.getById(id);
    if (result) return result;
    else throw new NotFoundException(`Page with ID ${id} not found`);
  }
}
