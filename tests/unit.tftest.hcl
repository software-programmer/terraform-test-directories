run "setup" {
  module {
    source = "./tests/fixture"
  }
}

run "environment_is_testing" {

  command = plan

  variables {
    customer                            = run.setup.customer
    environment                         = run.setup.environment
  }

  assert {
    condition     = var.environment == "testing"
    error_message = "The Environment is not set to testing"
  }
}
