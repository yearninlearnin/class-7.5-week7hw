# Week 7 HW (Class 7.5)
### Google Cloud *Documentation In progress*
___
- Grabbed the newest terraform provider from the [terraform registry](https://registry.terraform.io/providers/hashicorp/google/latest)
- Decided to plant my infra in Osaka region so checked [GCP regions doc](https://docs.cloud.google.com/compute/docs/regions-zones) to insure I was using correct zone
- Used custom CIDR in `ip_cidr_range` for good pracitce and avoiding using defaults.
- To add the favorite food, grabbed the local_file (Resource) from the [terraform registry](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file)
- After running the terraform apply, the `favorite-food.txt` artifact appeared
