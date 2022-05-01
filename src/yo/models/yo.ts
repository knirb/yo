import { Field, ID, ObjectType } from '@nestjs/graphql';

@ObjectType()
export class Yo {
  @Field((type) => ID)
  id: number;

  @Field({})
  yId: number;

  @Field({})
  userId: number;
}
