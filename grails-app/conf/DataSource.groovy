hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.provider_class = 'org.hibernate.cache.EhCacheProvider'
}

// environment specific settings
environments {
    
	development {
        dataSource {
            pooled = true
			dbCreate = "update"
			url = "jdbc:mysql://localhost/bog?autoReconnect=true"
			driverClassName = "com.mysql.jdbc.Driver"
			dialect = org.hibernate.dialect.MySQL5InnoDBDialect
			username = "root"
			password = ""
        }
    }
 
	test {
		dataSource {
			pooled = true
			dbCreate = "create-drop" // one of 'create', 'create-drop','update'
			url = "jdbc:hsqldb:mem:devDB"
			driverClassName = "org.hsqldb.jdbcDriver"
			username = "sa"
			password = ""
		}
	}
    
	production {
        dataSource {
            pooled = true
			dbCreate = "update"
			driverClassName = "com.mysql.jdbc.Driver"
			dialect = org.hibernate.dialect.MySQL5InnoDBDialect
			// for cloudfoundry deployment no need to specify credentials
        }
    }

}
