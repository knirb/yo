import { Module } from '@nestjs/common';
import { PrismaModule } from 'src/prisma/prisma.module';
import { YoResolver } from './yo.resolver';
import { YoService } from './yo.service';

@Module({
  providers: [YoResolver, YoService],
  imports: [PrismaModule],
})
export class YoModule {}
