curl -LX POST $3 \
-H 'Content-Type: text/plain' \
-d "{
    \"type\": \"engine.deployed\",
    \"engine_slug\": \"$1\",
    \"service_url\": \"$(gcloud run services describe $1 --format 'value(status.url)' --platform managed --region $2)\"
}"