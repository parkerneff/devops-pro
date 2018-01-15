aws cloudformation create-stack --stack-name pkn1 --template-body file://s3stack.template

aws cloudformation list-stacks
cloudformation delete-stack --stack-name pkn1


--- 
Wordpress
https://s3-us-west-2.amazonaws.com/cloudformation-templates-us-west-2/WordPress_Single_Instance.template
aws s3 cp s3://s3-us-west-2.amazonaws.com/cloudformation-templates-us-west-2/WordPress_Single_Instance.template .


aws cloudformation create-stack --stack-name wordpress --template-body file://wordpress.template --parameters \
    ParameterKey=KeyName,ParameterValue=defaultkp \
    ParameterKey=DBUser,ParameterValue=wpuser \
    ParameterKey=DBPassword,ParameterValue=wppassword \
    ParameterKey=DBRootPassword,ParameterValue=wppassword \   
    --stack-policy-url s3://parkerneff-icloud-cf-templates/wordpress-policy.json
    
cloudformation delete-stack --stack-name wordpress    



aws s3 cp wordpress-policy.json s3://parkerneff-icloud-cf-templates/wordpress-policy.json


aws cloudformation create-stack --disable-rollback --capabilities CAPABILITY_IAM --stack-name parker-cas --template-body file://tomcat.yml


https://github.com/parkerneff/devops-pro/tarball/master
    