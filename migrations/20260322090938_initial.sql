-- Create "blog_posts" table
CREATE TABLE "blog_posts" (
  "id" serial NOT NULL,
  "title" character varying(255) NOT NULL,
  "body" text NULL,
  "author_id" integer NULL,
  "created_at" timestamptz NULL DEFAULT now(),
  PRIMARY KEY ("id")
);
-- Create "users" table
CREATE TABLE "users" (
  "id" serial NOT NULL,
  "name" character varying(255) NOT NULL,
  "email" character varying(255) NOT NULL,
  "created_at" timestamptz NULL DEFAULT now(),
  "blog_posts_id" integer NULL,
  PRIMARY KEY ("id"),
  CONSTRAINT "users_email_key" UNIQUE ("email")
);
-- Modify "blog_posts" table
ALTER TABLE "blog_posts" ADD CONSTRAINT "blog_posts_author_id_fkey" FOREIGN KEY ("author_id") REFERENCES "users" ("id") ON UPDATE NO ACTION ON DELETE NO ACTION;
-- Modify "users" table
ALTER TABLE "users" ADD CONSTRAINT "users_blog_posts_id_fkey" FOREIGN KEY ("blog_posts_id") REFERENCES "blog_posts" ("id") ON UPDATE NO ACTION ON DELETE NO ACTION;
