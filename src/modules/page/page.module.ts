import { Module } from "@nestjs/common";
import { PageService } from "./page.service";
import { PageController } from "./page.controller";
import { pageProviders } from "./page.providers";

@Module({
  imports: [],
  exports: [PageService],
  controllers: [PageController],
  providers: [PageService, ...pageProviders],
})
export class PageModule {}
