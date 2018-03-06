echo ">>> Making pgpool"

for VALS in "PGPOOL_VERSION=3.3 PGPOOL_PACKAGE_VERSION=3.3.4-1.pgdg70+1 PG_CLIENT_MAJOR_VERSION=9.6 PG_CLIENT_VERSION=9.6 PG_CLIENT_PACKAGE_VERSION=9.6.7-1.pgdg80+1" \
            "PGPOOL_VERSION=3.3 PGPOOL_PACKAGE_VERSION=3.3.4-1.pgdg70+1 PG_CLIENT_MAJOR_VERSION=10.2 PG_CLIENT_VERSION=10 PG_CLIENT_PACKAGE_VERSION=10.2-1.pgdg80+1" \
            "PGPOOL_VERSION=3.6 PGPOOL_PACKAGE_VERSION=3.6.7-1.pgdg90+1 PG_CLIENT_MAJOR_VERSION=9.6 PG_CLIENT_VERSION=9.6 PG_CLIENT_PACKAGE_VERSION=9.6.7-1.pgdg80+1" \
            "PGPOOL_VERSION=3.6 PGPOOL_PACKAGE_VERSION=3.6.7-1.pgdg90+1 PG_CLIENT_MAJOR_VERSION=10.2 PG_CLIENT_VERSION=10 PG_CLIENT_PACKAGE_VERSION=10.2-1.pgdg80+1" \
            "PGPOOL_LATEST=1 PGPOOL_VERSION=3.7 PGPOOL_PACKAGE_VERSION=3.7 PG_CLIENT_MAJOR_VERSION=9.6 PG_CLIENT_VERSION=9.6 PG_CLIENT_PACKAGE_VERSION=9.6.7-1.pgdg80+1" \
            "PGPOOL_LATEST=1 PGPOOL_VERSION=3.7 PGPOOL_PACKAGE_VERSION=3.7 PG_CLIENT_MAJOR_VERSION=10.2 PG_CLIENT_VERSION=10 PG_CLIENT_PACKAGE_VERSION=10.2-1.pgdg80+1";  do
    eval $VALS
    
    FILE_FROM="./src/includes/dockerfile/Pgpool-$PGPOOL_VERSION.part.Dockerfile"
    FILE_TO="./src/Pgpool-$PGPOOL_VERSION-Postgres-$PG_CLIENT_MAJOR_VERSION.Dockerfile"
    
    template $FILE_FROM $FILE_TO $VALS
done