library(httr)

headers = c(
  'Content-Type' = 'application/json'
)

body = '{
  "email": "",
  "password": "",
  "proxy": {
    "host": "",
    "port": "",
    "user": "",
    "password": ""
  },
  "authtoken": ""
}';

res <- VERB("POST", url = "/register", body = body, add_headers(headers))

cat(content(res, 'text'))