module "minikube" {
  source = "github.com/learninguser/terraform-aws-minikube"

  aws_region    = "us-east-1"
  cluster_name  = "minirobo"
  aws_instance_type = "t2.medium"
  ssh_public_key = "~/.ssh/kube_key.pub"
  aws_subnet_id = "subnet-0076e181488278cdd"
  ami_image_id = "ami-0c929d3a2b50e26d8"
  hosted_zone = "joindevopstest.online"
  hosted_zone_private = false

  tags = {
    Application = "Minikube"
  }

  addons = [
    "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/storage-class.yaml",
    "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/heapster.yaml",
    "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/dashboard.yaml",
    "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/external-dns.yaml"
  ]
}