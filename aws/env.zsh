export AWS_ACCESS_KEY=`cat ~/.aws-credentials-master | grep AWSAccessKeyId | cut -f2 -d'='`
export AWS_SECRET_KEY=`cat ~/.aws-credentials-master | grep AWSSecretKey | cut -f2 -d'='`
