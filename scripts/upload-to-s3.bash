npm run build
aws s3 rm s3://neodash-test.graphapp.io/ --recursive
aws s3 sync dist s3://neodash-test.graphapp.io/ --acl public-read