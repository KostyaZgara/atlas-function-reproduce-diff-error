env "local" {
  src = "file://schema.hcl"
  url = "postgres://postgres:example@localhost:5433/main?search_path=public&sslmode=disable"
  dev = "docker://postgres/14"

  migration {
    dir    = "file://migrations"
    format = atlas
  }
}
