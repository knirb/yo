import { Injectable } from '@nestjs/common';

@Injectable()
export class YoService {
  getYo(): string {
    return 'yo';
  }
}
