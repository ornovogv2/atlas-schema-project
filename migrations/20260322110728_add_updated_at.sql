-- Modify "blog_posts" table
ALTER TABLE "blog_posts" ADD COLUMN "updated_at" timestamptz NULL DEFAULT now();
