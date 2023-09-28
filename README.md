# devops_interview

Instructions
------------

Prereq: empty AWS account

Steps:
- Build this container
- Run it locally, test that it responds well to port 8080
- Push image to repository (ECR if possible)
- Run in a VPC set up (public? private? nat gateway?)
- Get container with image to run in AWS (ECS if possible)
- Put load balancer in front of the container and have it publicly accessible

Bonus:
- https
- proper security groups
- have DNS entry pointing to LB
- Do this with terraform or cloudformation or other config management
- Cloudfront?

To think about:
- What/how could we automate this
- Deployment automation
- Security considerations
- Backend database (if the app was more complex)
- What if this had a static frontend with React? How/where it could be hosted?
