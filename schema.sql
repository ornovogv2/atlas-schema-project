CREATE TABLE users (
                       id serial PRIMARY KEY,
                       name varchar(255) NOT NULL,
                       email varchar(255) UNIQUE NOT NULL,
                       created_at timestamptz DEFAULT now()
);

CREATE TABLE blog_posts (
                            id serial PRIMARY KEY,
                            title varchar(255) NOT NULL,
                            body text,
                            author_id int REFERENCES users(id),
                            created_at timestamptz DEFAULT now(),
                            updated_at timestamptz DEFAULT now()
);

ALTER TABLE users
    ADD COLUMN blog_posts_id int REFERENCES blog_posts(id);