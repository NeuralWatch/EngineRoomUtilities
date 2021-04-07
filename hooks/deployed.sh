curl -LX POST https://engineroom.kaepler.com/webhook \
-H 'Content-Type: text/plain' \
-d "{
    \"type\": \"engine.deployed\",
    \"engine_slug\": \"$1\",
    \"service_url\": \"$(gcloud run services describe engine-$1-$2 --format 'value(status.url)' --platform managed --region $3)\",
    \"revision\": \"$4\"
}"
