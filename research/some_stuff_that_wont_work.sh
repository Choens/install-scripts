kinit andy.choens@ACEDW.HOSTED
kvno MSSQLSvc/acny-edwdev.acny.hosted:1433@ACNY.HOSTED

sudo ktutil
ktutil: addent -password -p MSSQLSvc/acny-edwdev.acny.hosted:1433@ACEDW.HOSTED -k MSSQLSvc/acny-edwdev.acny.hosted:1433 -e aes256-cts-hmac-sha1-96
ktutil: addent -password -p MSSQLSvc/acny-edwdev.acny.hosted:1433@ACEDW.HOSTED -k MSSQLSvc/acny-edwdev.acny.hosted:1433 -e rc4-hmac
ktutil: wkt /var/opt/mssql/secrets/mssql.keytab
quit
