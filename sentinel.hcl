module "tfplan-functions" {
  source = "./tfplan-functions.sentinel"
}
policy "vpc" {
    source = "./aws/sentinel/Networking/vpc.sentinel"
    enforcement_level = "hard-mandatory"

}
policy "ensure ec2 contains tags" {
    source = "./aws/sentinel/Compute/enforce_tags_ec2_instance.sentinel"
    enforcement_level = "hard-mandatory"
}
