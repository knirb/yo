import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { YoController } from './yo/yo.controller';
import { YoModule } from './yo/yo.module';
import { YoService } from './yo/yo.service';

@Module({
  imports: [YoModule],
  controllers: [AppController, YoController],
  providers: [AppService, YoService],
})
export class AppModule {}
