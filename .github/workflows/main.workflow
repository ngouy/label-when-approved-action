
workflow "Assign assignees" {
  on = "pull_request"
  resolves = ["Automatic assignee"]
}

action "Assignee to reviewer" {
  uses = "ngouy/automatic-assignee@master"
  secrets = [
    "3be3216cea8dfce164847e49bb27de7ce2edf55f"
  ]

  # add this line if you want to continue running parallel github actions even if this action is skipped/not needed
  env = {
    REVIEWERS_UNMODIFIED_EXIT_CODE = "0"
  }
}
