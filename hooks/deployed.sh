curl -LX POST https://neuralwatch-api.herokuapp.com/webhook \
-H 'Content-Type: text/plain' \
-d "{
    \"type\": \"engine.deployed\",
    \"engine_slug\": \"$1\",
    \"service_url\": \"$(gcloud run services describe aiengine-$1-api-$2 --format 'value(status.url)' --platform managed --region $3)\",
    \"revision\": \"$4\"
}"
