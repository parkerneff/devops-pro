#!/usr/bin/env bash
S3_BUCKET=s3://parkerneff-icloud-cf-templates

aws s3 cp vpc.yml  $S3_BUCKET
aws s3 cp tomcat.yml  $S3_BUCKET