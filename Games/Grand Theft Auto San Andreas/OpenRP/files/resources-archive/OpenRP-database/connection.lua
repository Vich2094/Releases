MYSQL_HOST = "127.0.0.1"
MYSQL_DATABASE = ""
MYSQL_USER = ""
MYSQL_PASSWORD = ""

handler = dbConnect("mysql", "dbname="..MYSQL_DATABASE..";host="..MYSQL_HOST, MYSQL_USER, MYSQL_PASSWORD)

if handler then
	outputServerLog("Works...")
else
	outputServerLog("Hmmm Maybe...")
end
