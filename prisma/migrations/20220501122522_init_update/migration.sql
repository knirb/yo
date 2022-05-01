/*
  Warnings:

  - You are about to drop the column `yoId` on the `O` table. All the data in the column will be lost.
  - You are about to drop the `Exclaim` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "O" DROP CONSTRAINT "O_yoId_fkey";

-- AlterTable
ALTER TABLE "O" DROP COLUMN "yoId";

-- DropTable
DROP TABLE "Exclaim";

-- CreateTable
CREATE TABLE "ExclamationMark" (
    "id" SERIAL NOT NULL,

    CONSTRAINT "ExclamationMark_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "QuestionMark" (
    "id" SERIAL NOT NULL,

    CONSTRAINT "QuestionMark_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "YosOnOs" (
    "yoId" INTEGER NOT NULL,
    "oId" INTEGER NOT NULL,

    CONSTRAINT "YosOnOs_pkey" PRIMARY KEY ("yoId","oId")
);

-- CreateTable
CREATE TABLE "YosOnExclamationMarks" (
    "yoId" INTEGER NOT NULL,
    "exclamationMarkId" INTEGER NOT NULL,

    CONSTRAINT "YosOnExclamationMarks_pkey" PRIMARY KEY ("yoId","exclamationMarkId")
);

-- CreateTable
CREATE TABLE "YosOnQuestionMarks" (
    "yoId" INTEGER NOT NULL,
    "questionMarkId" INTEGER NOT NULL,

    CONSTRAINT "YosOnQuestionMarks_pkey" PRIMARY KEY ("yoId","questionMarkId")
);

-- CreateTable
CREATE TABLE "UsersOnYs" (
    "userId" INTEGER NOT NULL,
    "yId" INTEGER NOT NULL,

    CONSTRAINT "UsersOnYs_pkey" PRIMARY KEY ("yId","userId")
);

-- CreateTable
CREATE TABLE "UsersOnOs" (
    "userId" INTEGER NOT NULL,
    "oId" INTEGER NOT NULL,

    CONSTRAINT "UsersOnOs_pkey" PRIMARY KEY ("oId","userId")
);

-- CreateTable
CREATE TABLE "UsersOnExclamationMarks" (
    "userId" INTEGER NOT NULL,
    "exclamationMarkId" INTEGER NOT NULL,

    CONSTRAINT "UsersOnExclamationMarks_pkey" PRIMARY KEY ("exclamationMarkId","userId")
);

-- CreateTable
CREATE TABLE "UsersOnQuestionMarks" (
    "userId" INTEGER NOT NULL,
    "questionMarkId" INTEGER NOT NULL,

    CONSTRAINT "UsersOnQuestionMarks_pkey" PRIMARY KEY ("questionMarkId","userId")
);

-- AddForeignKey
ALTER TABLE "YosOnOs" ADD CONSTRAINT "YosOnOs_yoId_fkey" FOREIGN KEY ("yoId") REFERENCES "Yo"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "YosOnOs" ADD CONSTRAINT "YosOnOs_oId_fkey" FOREIGN KEY ("oId") REFERENCES "O"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "YosOnExclamationMarks" ADD CONSTRAINT "YosOnExclamationMarks_yoId_fkey" FOREIGN KEY ("yoId") REFERENCES "Yo"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "YosOnExclamationMarks" ADD CONSTRAINT "YosOnExclamationMarks_exclamationMarkId_fkey" FOREIGN KEY ("exclamationMarkId") REFERENCES "ExclamationMark"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "YosOnQuestionMarks" ADD CONSTRAINT "YosOnQuestionMarks_yoId_fkey" FOREIGN KEY ("yoId") REFERENCES "Yo"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "YosOnQuestionMarks" ADD CONSTRAINT "YosOnQuestionMarks_questionMarkId_fkey" FOREIGN KEY ("questionMarkId") REFERENCES "QuestionMark"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "UsersOnYs" ADD CONSTRAINT "UsersOnYs_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "UsersOnYs" ADD CONSTRAINT "UsersOnYs_yId_fkey" FOREIGN KEY ("yId") REFERENCES "Y"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "UsersOnOs" ADD CONSTRAINT "UsersOnOs_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "UsersOnOs" ADD CONSTRAINT "UsersOnOs_oId_fkey" FOREIGN KEY ("oId") REFERENCES "O"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "UsersOnExclamationMarks" ADD CONSTRAINT "UsersOnExclamationMarks_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "UsersOnExclamationMarks" ADD CONSTRAINT "UsersOnExclamationMarks_exclamationMarkId_fkey" FOREIGN KEY ("exclamationMarkId") REFERENCES "ExclamationMark"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "UsersOnQuestionMarks" ADD CONSTRAINT "UsersOnQuestionMarks_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "UsersOnQuestionMarks" ADD CONSTRAINT "UsersOnQuestionMarks_questionMarkId_fkey" FOREIGN KEY ("questionMarkId") REFERENCES "QuestionMark"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
