## Using Secret Keys on Github Actions for Github Workflows

for visual guide on how to create secret key [check this](https://github.com/Azure/actions-workflow-samples/blob/master/assets/create-secrets-for-GitHub-workflows.md)

### Adding Secret Keys / ENV Keys
1. visit the repo `github.com/USERNAME/REPO/settings/secrets/actions`
2. add secret keys define the name in `SCREAMING_SNAKE_CASE` , value can be anything a-Z 0-9 and spaces.
3. Use it on `./github/workflows/main.yaml`
4. add your entry like this:

```yaml
env:
          APP_NAME: ${{ env.APP_NAME }}
          APP_DOMAIN: ${{ env.APP_DOMAIN }}
          APP_URL: ${{ env.APP_URL }}
          APP_VERSION: ${{ env.APP_VERSION }}
          APP_COMPANY: ${{ env.APP_COMPANY }}
          SECRET_KEY: ${{ secrets.APP_KEY }}
```

For Flavored Deployment like for development, production, testing
github offers scoping the env on different env settings.