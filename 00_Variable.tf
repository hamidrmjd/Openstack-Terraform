#variable
variable "hosts" {
    type        = list(string)
    default = [ "host1", "host2", "host3" ]
}

variable "instance_name" {
    type = string
    default = "instance_1"
}

# Public Network ID
variable "Public" {
    type = string
    default = "1e93f780-b41f-499e-1243-1f505aa5b097"
}

