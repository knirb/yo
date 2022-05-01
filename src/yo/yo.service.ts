import { Injectable } from '@nestjs/common';
import { Yo } from '@prisma/client';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class YoService {
  constructor(private prisma: PrismaService) {}

  async getAll(): Promise<Yo[]> {
    return this.prisma.yo.findMany();
  }
}
