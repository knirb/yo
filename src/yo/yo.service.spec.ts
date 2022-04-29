import { Test, TestingModule } from '@nestjs/testing';
import { YoService } from './yo.service';

describe('YoService', () => {
  let service: YoService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [YoService],
    }).compile();

    service = module.get<YoService>(YoService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
