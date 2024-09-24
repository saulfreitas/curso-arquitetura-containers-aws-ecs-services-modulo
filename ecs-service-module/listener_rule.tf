resource "aws_lb_listener_rule" "this" {
  listener_arn = var.service_listener

  action {
    type             = "forward"
    target_group_arn = aws_alb_target_group.main.arn

  }

  condition {
    host_header {
      values = var.service_hosts
    }
  }


}