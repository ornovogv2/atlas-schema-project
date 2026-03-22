schema "public" {}

table "users" {
  schema = schema.public

  column "id" {
    type = serial
  }

  column "email" {
    type = varchar(255)
    null = false
  }

  column "created_at" {
    type = timestamp
    null = false
    default = sql("CURRENT_TIMESTAMP")
  }

  primary_key {
    columns = [column.id]
  }

  index "users_email_key" {
    unique  = true
    columns = [column.email]
  }
}
