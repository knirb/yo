import { Resolver, Query } from '@nestjs/graphql';
import { Yo } from './models/yo';
import { YoService } from './yo.service';

@Resolver((of) => Yo)
export class YoResolver {
  constructor(private readonly yoService: YoService) {}

  @Query((returns) => [Yo])
  async yos(): Promise<Yo[]> {
    const yos = await this.yoService.getAll();
    return yos;
  }
}
