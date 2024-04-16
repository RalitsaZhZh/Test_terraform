resource "google_sql_database_instance" "db-instance-mysql" {
  region              = "us-central1"
  database_version    = "MYSQL_8_0"
  name                = "cantbereusedforweek1"
  deletion_protection = false

  settings {
    tier                  = "db-perf-optimized-N-4"
    edition               = "ENTERPRISE_PLUS"
    availability_type     = "REGIONAL"
    disk_autoresize_limit = 100
    disk_size             = 100
    disk_type             = "PD_SSD"

    backup_configuration {
      binary_log_enabled = true
      enabled            = true

      backup_retention_settings {
        retained_backups = 9
        retention_unit   = "COUNT"
      }
    }

    data_cache_config {
      data_cache_enabled = true
    }
  }
}

resource "google_sql_database_instance" "db-instance-mysql-micro" {
  region              = "us-central1"
  database_version    = "MYSQL_8_0"
  name                = "cantbereusedforweek2"
  deletion_protection = false

  settings {
    tier                  = "db-f1-micro"
    edition               = "ENTERPRISE"
    availability_type     = "ZONAL"
    disk_autoresize_limit = 100
    disk_size             = 100
    disk_type             = "PD_SSD"
  }
}

resource "google_sql_database_instance" "db-instance-postresql" {
  region              = "us-central1"
  database_version    = "POSTGRES_14"
  name                = "cantbereusedforweek3"
  deletion_protection = false

  settings {
    tier                  = "db-custom-2-5120"
    edition               = "ENTERPRISE"
    availability_type     = "ZONAL"
    disk_autoresize_limit = 100
    disk_size             = 100
    disk_type             = "PD_HDD"

    backup_configuration {
      binary_log_enabled = true
      enabled            = true

      backup_retention_settings {
        retained_backups = 5
        retention_unit   = "COUNT"
      }
    }
  }
}

resource "google_sql_database_instance" "db-sql-server-2-core-4cpu" {
  region              = "us-central1"
  database_version    = "SQLSERVER_2019_STANDARD"
  name                = "cantbereusedforweek4"
  deletion_protection = false

  settings {
    tier                  = "db-custom-4-16384"
    edition               = "ENTERPRISE"
    availability_type     = "ZONAL"
    disk_autoresize_limit = 100
    disk_size             = 100
    disk_type             = "PD_SSD"
  }
}

resource "google_sql_database_instance" "db-sql-server-1-core-4cpu" {
  region              = "us-central1"
  database_version    = "SQLSERVER_2019_STANDARD"
  name                = "cantbereusedforweek5"
  deletion_protection = false

  settings {
    tier                  = "db-custom-4-16384"
    edition               = "ENTERPRISE"
    availability_type     = "ZONAL"
    disk_autoresize_limit = 100
    disk_size             = 100
    disk_type             = "PD_SSD"

    advanced_machine_features {
      threads_per_core = 1
    }
  }
}

resource "google_sql_database_instance" "db-sql-server-2-core-16cpu" {
  region              = "us-central1"
  database_version    = "SQLSERVER_2019_STANDARD"
  name                = "cantbereusedforweek6"
  deletion_protection = false

  settings {
    tier                  = "db-custom-16-102400"
    edition               = "ENTERPRISE"
    availability_type     = "ZONAL"
    disk_autoresize_limit = 100
    disk_size             = 100
    disk_type             = "PD_SSD"
  }
}

resource "google_sql_database_instance" "db-sql-server-1-core-16cpu" {
  region              = "us-central1"
  database_version    = "SQLSERVER_2019_STANDARD"
  name                = "cantbereusedforweek7"
  deletion_protection = false

  settings {
    tier                  = "db-custom-16-102400"
    edition               = "ENTERPRISE"
    availability_type     = "ZONAL"
    disk_autoresize_limit = 100
    disk_size             = 100
    disk_type             = "PD_SSD"

    advanced_machine_features {
      threads_per_core = 1
    }
  }
}

resource "google_sql_database_instance" "db-sql-server-2-core-6cpu" {
  region              = "us-central1"
  database_version    = "SQLSERVER_2019_STANDARD"
  name                = "cantbereusedforweek8"
  deletion_protection = false

  settings {
    tier                  = "db-custom-6-32768"
    edition               = "ENTERPRISE"
    availability_type     = "ZONAL"
    disk_autoresize_limit = 100
    disk_size             = 100
    disk_type             = "PD_SSD"
  }
}

resource "google_sql_database_instance" "db-sql-server-1-core-6cpu" {
  region              = "us-central1"
  database_version    = "SQLSERVER_2019_STANDARD"
  name                = "cantbereusedforweek9"
  deletion_protection = false

  settings {
    tier                  = "db-custom-6-32768"
    edition               = "ENTERPRISE"
    availability_type     = "ZONAL"
    disk_autoresize_limit = 100
    disk_size             = 100
    disk_type             = "PD_SSD"

    advanced_machine_features {
      threads_per_core = 1
    }
  }
}

  resource "google_sql_database_instance" "db-sql-server-2-core-10cpu" {
  region              = "us-central1"
  database_version    = "SQLSERVER_2019_STANDARD"
  name                = "cantbereusedforweek10"
  deletion_protection = false

  settings {
    tier                  = "db-custom-10-32768"
    edition               = "ENTERPRISE"
    availability_type     = "ZONAL"
    disk_autoresize_limit = 100
    disk_size             = 100
    disk_type             = "PD_SSD"
  }
}

  resource "google_sql_database_instance" "db-sql-server-1-core-10cpu" {
  region              = "us-central1"
  database_version    = "SQLSERVER_2019_STANDARD"
  name                = "cantbereusedforweek11"
  deletion_protection = false

  settings {
    tier                  = "db-custom-10-32768"
    edition               = "ENTERPRISE"
    availability_type     = "ZONAL"
    disk_autoresize_limit = 100
    disk_size             = 100
    disk_type             = "PD_SSD"

    advanced_machine_features {
      threads_per_core = 1
    }
  }
}

resource "google_sql_database_instance" "db-instance-cloned" {
  region              = "us-central1"
  database_version    = "MYSQL_8_0"
  name                = "cantbereusedforweek12"
  deletion_protection = false

  clone {
    source_instance_name = "cantbereusedforweek2"
  }
}

resource "google_sql_database_instance" "db-instance-original" {
  region              = "us-central1"
  database_version    = "MYSQL_8_0"
  name                = "cantbereusedforweek13"
  deletion_protection = false

  settings {
    tier = "db-custom-2-13312"
  }
}
