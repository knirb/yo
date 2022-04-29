import { Module } from '@nestjs/common';
import { YoService } from './yo.service';

@Module({
  providers: [YoService],
})
export class YoModule {}
