library(httr)

headers = c(
  'Content-Type' = 'application/json'
)

body = '{
  "email": "",
  "code": "",
  "authtoken": ""
}';

res <- VERB("POST", url = "/verify", body = body, add_headers(headers))

cat(content(res, 'text'))