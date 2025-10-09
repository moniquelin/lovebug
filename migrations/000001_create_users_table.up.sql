CREATE TABLE IF NOT EXISTS "users" (
  "id" bigint GENERATED ALWAYS AS IDENTITY,
  "created_at" timestamptz(0) NOT NULL DEFAULT NOW(),
  "name" varchar(50) NOT NULL,
  "email" varchar(255) UNIQUE NOT NULL,
  "password_hash" bytea,
  "gender" text NOT NULL CHECK(gender IN ('male', 'female')),
  "activated" bool NOT NULL DEFAULT FALSE,
  "premium" bool NOT NULL DEFAULT FALSE,
  "last_shown_id" bigint,
  "version" integer NOT NULL DEFAULT 1,
  PRIMARY KEY ("id")
);

