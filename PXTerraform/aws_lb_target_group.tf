resource "aws_lb_target_group" "appx" {
  name        = "appx"
  port        = 80
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = "${aws_vpc.vpcmain.id}"
  health_check {
    enabled = false
    interval = 30
    path = "/healthcheck"
    port = 80
    protocol = "HTTP"
    timeout = 6
  }
}
resource "aws_lb_target_group" "consumidorx" {
  name        = "consumidorx"
  port        = 80
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = "${aws_vpc.vpcmain.id}"
  health_check {
    enabled = false
    interval = 30
    path = "/healthcheck"
    port = 80
    protocol = "HTTP"
    timeout = 6
  }
}
resource "aws_lb_target_group" "produtorx" {
  name        = "produtorx"
  port        = 80
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = "${aws_vpc.vpcmain.id}"
  health_check {
    enabled = false
    interval = 30
    path = "/healthcheck"
    port = 80
    protocol = "HTTP"
    timeout = 6
  }
}