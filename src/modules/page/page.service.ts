import { Inject, Injectable } from "@nestjs/common";
import { Page } from "./page.entity";
import { PAGE_REPOSITORY } from "@core/constants";
import { PageDto } from "./dto/page.dto";

@Injectable()
export class PageService {
  constructor(@Inject(PAGE_REPOSITORY) private readonly repo: typeof Page) {}

  async create(page: PageDto): Promise<Page> {
    return this.repo.create<Page>(page);
  }

  async getByReference(ref: string): Promise<Page> {
    return this.repo.findOne<Page>({ where: { reference: ref } });
  }
}
