const client = require('mariadb')
const WM_CONNECTION_STRING = process.env.WM_CONNECTION_STRING
const pool = client.createPool(WM_CONNECTION_STRING)

pool.getConnection().then(conn => {
  conn.release()

  console.log('Successfully connected to MySQL.')
  process.exit(0)
}).catch(_ => {
  console.log('Not connected to MySQL.')
  process.exit(2)
})
