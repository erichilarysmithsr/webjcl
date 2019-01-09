workflow "New workflow" {
  on = "push"
  resolves = ["GitHub Action for npm"]
}

action "GitHub Action for npm" {
  uses = "actions/npm@e7aaefed7c9f2e83d493ff810f17fa5ccd7ed437"
  secrets = ["GITHUB_TOKEN"]
}

workflow "New workflow 1" {
  on = "push"
  resolves = ["GitHub Action for AWS"]
}

action "GitHub Action for AWS" {
  uses = "actions/aws/cli@8d318706868c00929f57a0b618504dcdda52b0c9"
  secrets = ["GITHUB_TOKEN"]
}
