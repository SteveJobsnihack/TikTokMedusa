library(httr)

headers = c(
  'Content-Type' = 'application/json'
)

body = '{
  "username": "",
  "session": "",
  "proxy": {
    "host": "",
    "port": "",
    "user": "",
    "password": ""
  },
  "authtoken": ""
}';

res <- VERB("POST", url = "/follow", body = body, add_headers(headers))

cat(content(res, 'text'))