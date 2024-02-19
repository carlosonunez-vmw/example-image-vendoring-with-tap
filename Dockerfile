# All you need to do is create a Dockerfile whose FROM points to
# your vendor's container image in your image registry.
#
# For example, let's say that you:
#
# 1. Use JFrog Artifactory as your image registry and that it's located at
#    `artifactory.company.example`,
#
# 2. Downloaded the "WebSphere Liberty" container image from HCL and uploaded
#    it into Artifactory as "websphere-liberty:v2024.02.19".
#
# In this case, your FROM would look something like the below:
#
# FROM artifactory.company.example/websphere-liberty:v2024.02.19.
FROM websphere-liberty:24.0.0.1-kernel-java17-openj9
