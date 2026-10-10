module "ec2" {
    source = "../terraform_aws_instance"
    project  = "roboshop"
    environment = "dev"
    ami_id = data.aws_ami.joindevops.id
    instance_type = "t3.micro"
    sg_ids = var.sg_ids

    tags = {
        Name        = "${var.project}-${var.environment}-${var.component}"
        component   = var.component

    }
}