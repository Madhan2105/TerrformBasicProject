variable "bucket_name" {
    description = "Bucket name for the service"
    default = "myflaskprojtestbucket"
}

variable "acl_value" {
    description = "ACL value for the service either public or private"
    default = "private"
}