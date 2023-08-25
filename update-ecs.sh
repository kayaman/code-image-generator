docker build -t code-image-generator:latest .
aws ecr get-login-password --region sa-east-1 | docker login --username AWS --password-stdin 935614717044.dkr.ecr.sa-east-1.amazonaws.com
docker tag code-image-generator:latest 935614717044.dkr.ecr.sa-east-1.amazonaws.com/code-image-generator:latest
docker push 935614717044.dkr.ecr.sa-east-1.amazonaws.com/code-image-generator:latest
aws ecs update-service --cluster code-image-generator --service code-image-generator --force-new-deployment --region sa-east-1
