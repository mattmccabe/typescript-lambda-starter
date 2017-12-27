provider "aws" {
    region = "us-east-1"
    shared_credentials_file = "/Users/<username>/.aws/credentials"
    profile = "profile_name"
}

resource "aws_lambda_function" "lambda-function-demo" {
    function_name = "lambda-function-name"
    handler = "index.handler"
    runtime = "nodejs6.10"
    filename = "dist/lambda.zip"
    source_code_hash = "${base64sha256(file("dist/oilup.zip"))}"
}