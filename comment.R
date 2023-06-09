library(httr)

headers = c(
  'Content-Type' = 'application/json'
)

body = '{
  "username": "",
  "awemeid": "",
  "comment": "",
  "session": "",
  "proxy": {
    "host": "",
    "port": "",
    "user": "",
    "password": ""
  },
  "authtoken": ""
}';

res <- VERB("POST", url = "/comment", body = body, add_headers(headers))

cat(content(res, 'text'))