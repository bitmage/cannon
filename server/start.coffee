path = require 'path'
connect = require 'connect'

public = path.join __dirname, '../public'
app = connect()

app.listen(4000)
app.use(connect.static public)
