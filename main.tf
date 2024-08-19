provider "aws"{
    secret_key= ""
    access_key= ""
    region= "eu-east-2"
    alias = "worker2"
}
provider "aws"{
    secret_key= ""
    access_key= ""
    region= "eu-east-2"
    alias = "worker3"
}
provider "aws"{
    secret_key= ""
    access_key= ""
    region= "eu-east-2"
    alias = "worker4"
}
resource "aws_instance" "this2"{
    ami= "ami-05fb0b8c1424f266b"
    instance_type= "t2.medium"
    key_name= "venkatohio"
    provider= "aws.worker2"
    tags= {
        Name= "worker2"
    }
}
resource "aws_instance" "this3"{
    ami= "ami-05fb0b8c1424f266b"
    instance_type= "t2.medium"
    key_name= "venkatohio"
    provider= "aws.worker3"
    tags= {
        Name= "worker3"
    }
}
resource "aws_instance" "this4"{
    ami= "ami-05fb0b8c1424f266b"
    instance_type= "t2.medium"
    key_name= "venkatohio"
    provider= "aws.worker4"
    tags= {
        Name= "worker4"
    }
}


