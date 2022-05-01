-- CreateTable
CREATE TABLE "User" (
    "id" SERIAL NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Yo" (
    "id" SERIAL NOT NULL,
    "yId" INTEGER NOT NULL,
    "userId" INTEGER NOT NULL,

    CONSTRAINT "Yo_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Y" (
    "id" SERIAL NOT NULL,

    CONSTRAINT "Y_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "O" (
    "id" SERIAL NOT NULL,
    "yoId" INTEGER NOT NULL,

    CONSTRAINT "O_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Exclaim" (
    "id" SERIAL NOT NULL,

    CONSTRAINT "Exclaim_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Yo" ADD CONSTRAINT "Yo_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Yo" ADD CONSTRAINT "Yo_yId_fkey" FOREIGN KEY ("yId") REFERENCES "Y"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "O" ADD CONSTRAINT "O_yoId_fkey" FOREIGN KEY ("yoId") REFERENCES "Yo"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
