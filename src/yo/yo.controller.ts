import { Controller, Get } from '@nestjs/common';
import { YoService } from './yo.service';

@Controller('yo')
export class YoController {
  constructor(private readonly yoService: YoService) {}

  @Get()
  getYo(): string {
    return this.yoService.getYo();
  }
}
