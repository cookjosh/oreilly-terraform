provider "aws" {
    region                   = "us-east-2"
    shared_config_files      = ["/Users/josh/.aws/config"]
    shared_credentials_files = ["/Users/josh/.aws/credentials"]
    profile                 = "tf-course"
}

resource "aws_instance" "example" {
    ami           = "ami-0c55b159cbfafe1f0"
    instance_type = "t2.micro"

    tags = {
        Name = "terraform-example"
    }
}