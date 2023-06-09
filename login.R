library(httr)

headers = c(
  'Content-Type' = 'application/json'
)

body = '{
  "user": "",
  "password": "",
  "proxy": {
    "host": "",
    "port": "",
    "user": "",
    "password": ""
  },
  "authtoken": ""
}';

res <- VERB("POST", url = "/login", body = body, add_headers(headers))

cat(content(res, 'text'))