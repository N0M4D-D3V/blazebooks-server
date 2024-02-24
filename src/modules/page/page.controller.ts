import { Controller, Get, NotFoundException, Param } from "@nestjs/common";
import { PageService } from "./page.service";
import { Page } from "./page.entity";

@Controller("pages")
export class PageController {
  constructor(private readonly pageService: PageService) {}

  @Get(":ref")
  public async getPageById(@Param("ref") ref: string): Promise<Page> {
    const result: Page = await this.pageService.getByReference(ref);
    if (result) return result;
    else throw new NotFoundException(`Page with ID ${ref} not found`);
  }
}
