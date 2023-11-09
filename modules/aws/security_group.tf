resource "aws_security_group" "ssh_cluster" {
  name        = "ssh_cluster"
  vpc_id      = module.vpc.vpc_id
}
  
resource "aws_security_group_rule" "ssh_cluster_in" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"] #0.0.0.0 - 255.255.255.255
  security_group_id = aws_security_group.ssh_cluster.id
}

resource "aws_security_group_rule" "eks_sg_ingress_rule" {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"

    security_group_id = aws_security_group.ssh_cluster.id
    type = "ingress"
} 
resource "aws_security_group_rule" "ssh_cluster_out" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"] #0.0.0.0 - 255.255.255.255
  security_group_id = aws_security_group.ssh_cluster.id
}