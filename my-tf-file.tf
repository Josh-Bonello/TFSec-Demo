resource "aws_security_group_rule" "my-insecure-rule" {
  type              = "ingress"
  description       = "Open this SG to the world!"
  from_port         = "22"
  to_port           = "22"
  security_group_id = "sg-3bde5e7f"
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "my-overriden-insecure-rule" {
  type              = "ingress"
  description       = "Open this SG to the world!"
  from_port         = "443"
  to_port           = "443"
  security_group_id = "sg-3bde5e7f"
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"] #tfsec:ignore:aws-vpc-no-public-ingress-sgr
}
