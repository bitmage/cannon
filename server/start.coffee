path = require 'path'
connect = require 'connect'

pub = path.join __dirname, '../public'
app = connect()

app.listen(4000)
app.use(connect.static pub)
