/*
  Warnings:

  - A unique constraint covering the columns `[username]` on the table `User` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[email]` on the table `User` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE "ExclamationMark" ADD COLUMN     "level" INTEGER NOT NULL DEFAULT 0,
ADD COLUMN     "rarity" INTEGER NOT NULL DEFAULT 0;

-- AlterTable
ALTER TABLE "O" ADD COLUMN     "level" INTEGER NOT NULL DEFAULT 0,
ADD COLUMN     "rarity" INTEGER NOT NULL DEFAULT 0;

-- AlterTable
ALTER TABLE "QuestionMark" ADD COLUMN     "level" INTEGER NOT NULL DEFAULT 0,
ADD COLUMN     "rarity" INTEGER NOT NULL DEFAULT 0;

-- AlterTable
ALTER TABLE "User" ADD COLUMN     "email" TEXT,
ADD COLUMN     "username" TEXT;

-- AlterTable
ALTER TABLE "Y" ADD COLUMN     "level" INTEGER NOT NULL DEFAULT 0,
ADD COLUMN     "rarity" INTEGER NOT NULL DEFAULT 0;

-- CreateTable
CREATE TABLE "Personality" (
    "id" SERIAL NOT NULL,
    "openness" INTEGER NOT NULL DEFAULT 0,
    "conscientiousness" INTEGER NOT NULL DEFAULT 0,
    "extraversion" INTEGER NOT NULL DEFAULT 0,
    "agreeableness" INTEGER NOT NULL DEFAULT 0,
    "neuroticism" INTEGER NOT NULL DEFAULT 0,
    "yId" INTEGER NOT NULL,
    "oId" INTEGER NOT NULL,
    "exclamationMarkId" INTEGER NOT NULL,
    "questionMarkId" INTEGER NOT NULL,

    CONSTRAINT "Personality_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Personality_yId_key" ON "Personality"("yId");

-- CreateIndex
CREATE UNIQUE INDEX "Personality_oId_key" ON "Personality"("oId");

-- CreateIndex
CREATE UNIQUE INDEX "Personality_exclamationMarkId_key" ON "Personality"("exclamationMarkId");

-- CreateIndex
CREATE UNIQUE INDEX "Personality_questionMarkId_key" ON "Personality"("questionMarkId");

-- CreateIndex
CREATE UNIQUE INDEX "User_username_key" ON "User"("username");

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");

-- AddForeignKey
ALTER TABLE "Personality" ADD CONSTRAINT "Personality_yId_fkey" FOREIGN KEY ("yId") REFERENCES "Y"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Personality" ADD CONSTRAINT "Personality_oId_fkey" FOREIGN KEY ("oId") REFERENCES "O"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Personality" ADD CONSTRAINT "Personality_exclamationMarkId_fkey" FOREIGN KEY ("exclamationMarkId") REFERENCES "ExclamationMark"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Personality" ADD CONSTRAINT "Personality_questionMarkId_fkey" FOREIGN KEY ("questionMarkId") REFERENCES "QuestionMark"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
