Dockerfile - file for building docker image, it need build and save to a some docker registry.

Directories with projects for kuberless:
- dotnetcore
- java 
- nodejs
- python

In each directory
- {dotnetcore,java,nodejs,python} - directory with project
- .gitlab-ci.yaml - manifest for gitlab

gitlab-ci.yaml include pipeline stages(each stage is bash simple bash script for deploy and test function/trigger http)
  - get-{dotnetcore,java,nodejs,python}-func-deploy - deploy a function
  - get-{dotnetcore,java,nodejs,python}-func-test - test a function
  - get-{dotnetcore,java,nodejs,python}-trig-deploy - deploy a trigger http
  - get-{dotnetcore,java,nodejs,python}-trig-test - test a trigger http


