docker run -it --rm`
    -e PULUMI_ACCESS_TOKEN `
    -e AWS_ACCESS_KEY_ID `
    -e AWS_SECRET_ACCESS_KEY `
    -e AWS_REGION `
    -w /app `
    -v "$(pwd):/app" `
    --entrypoint bash `
    pulumi/pulumi `
    -c "pip install -r requirements.txt && pulumi preview --stack dev --non-interactive"