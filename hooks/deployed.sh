curl -LX POST https://enrkw4y1wo7fm.x.pipedream.net \
-H 'Content-Type: text/plain' \
-d "{
    \"type\": \"engine.deployed\",
    \"engine_slug\": \"$1\",
    \"service_url\": \"$(gcloud run services describe $1 --format 'value(status.url)' --platform managed --region $2)\"
}"