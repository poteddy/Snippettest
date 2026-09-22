zip -r test-code.zip .

docker run -v "$(pwd)":"/tmp/scan_target" \
           ghcr.io/tomgonzo/workbench-agent:latest \
           --api_url $API_URL \
           --api_user $API_USER \
           --api_token $API_TOKEN \
           --project_code tomas-local-test-project \
           --scan_code tomas-local-test-scan \
           --path "/tmp/scan_target/test-code.zip"

#git clone https://github.com/fossid-ab/workbench-agent /tmp/workbench-agent

#python3 tmp/workbench-agent/workbench-agent.py \
          # --api_url $API_URL \
          # --api_user $API_USER \
          # --api_token $API_TOKEN \
          # --project_code tomas-local-test-project \
          # --scan_code tomas-local-test-scan \
          # --path "/tmp/scan_target/test-code.zip"