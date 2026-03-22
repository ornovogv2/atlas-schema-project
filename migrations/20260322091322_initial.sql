-- Modify "users" table
ALTER TABLE "users" ADD COLUMN "blog_posts_id" integer NULL, ADD CONSTRAINT "users_blog_posts_id_fkey" FOREIGN KEY ("blog_posts_id") REFERENCES "blog_posts" ("id") ON UPDATE NO ACTION ON DELETE NO ACTION;
