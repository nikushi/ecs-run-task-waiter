# ecs-run-task-waiter
A simple script to wait ecs run-task completion to run task synchronously

## Usage

```
##### ecs-run-task-waiter #####
Simple script for waiting run-task execution completion on Amazon Elastic Container Service

Optional arguments:
    -r | --region                AWS Region Name. May also be set as environment variable AWS_DEFAULT_REGION
    -p | --profile               AWS Profile to use - If you set this aws-access-key, aws-secret-key and region are needed
    --output-log                 Output task logs. Default false
    -t | --timeout               Default is 90s. Script monitors ECS Service for new task definition to be running.
    -v | --verbose               Verbose output
Requirements:
    aws:  AWS Command Line Interface
    jq:   Command-line JSON processor
Examples:
  aws ecs run-task --profile foo --region ap-northeast-1 --cluster mycluster --task-definition mytask \
    --network-configuration '{"awsvpcConfiguration":{"subnets":["subnet-abc"],"securityGroups":["sg-123"],"assignPublicIp":"ENABLED"}}' \
    --launch-type FARGATE | ecs-run-task-waiter -r ap-northeast-1  -p foo
````
