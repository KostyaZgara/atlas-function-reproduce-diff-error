table "users" {
  schema = schema.public
  column "id" {
    null    = false
    type    = character_varying(36)
    default = sql("random_prefix_id('usr'::text, 16)")
  }
  column "created_at" {
    null    = false
    type    = integer
    default = sql("round(EXTRACT(epoch FROM now()))")
  }
  column "updated_at" {
    null    = false
    type    = integer
    default = sql("round(EXTRACT(epoch FROM now()))")
  }
  column "deleted_at" {
    null = true
    type = integer
  }
  column "email" {
    null = false
    type = character_varying(255)
  }
  primary_key {
    columns = [column.id]
  }
}
schema "public" {
}
