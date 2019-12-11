resource "aws_lb_listener" "appx" {
  load_balancer_arn = "${aws_lb.appx.arn}"
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = "${aws_lb_target_group.appx.arn}"
  }
}
resource "aws_lb_listener" "consumidorx" {
  load_balancer_arn = "${aws_lb.consumidorx.arn}"
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = "${aws_lb_target_group.consumidorx.arn}"
  }
}
resource "aws_lb_listener" "produtorx" {
  load_balancer_arn = "${aws_lb.produtorx.arn}"
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = "${aws_lb_target_group.produtorx.arn}"
  }
}
