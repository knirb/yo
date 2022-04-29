import { Test, TestingModule } from '@nestjs/testing';
import { YoController } from './yo.controller';

describe('YoController', () => {
  let controller: YoController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [YoController],
    }).compile();

    controller = module.get<YoController>(YoController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
