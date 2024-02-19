# Securing vendor-provided images with TAP

This codebase demonstrates how you can use Tanzu Application Platform to
harden images provided by vendors for your containerized infrastructure.

Those looking to provision vendor appliances that are shipped as container
images might find this useful.

## How this works

1. Your Git repository will contain a [`Dockerfile`](./Dockerfile) whose parent
   image is the path of the image your vendor supplied to you within your
   container image registry.
2. The `workload.yaml` file tells TAP that your "source code" is located within
   this Git repository. (The `Dockerfile` is the only source code we care
   about.)
3. TAP will detect that your repository has a `Dockerfile` and use that to build
   a new image. This image will be taken through the supply chain where it will
   be scanned, tested and vetted.

   > You can use custom Supply Chains to add further customizations to your
   > image, such as adding company root CA certificates or additional OS
   > hardening.

4. Once TAP finishes scanning the image, you will be able to see the path to the
   newly-produced image at the end of the supply chain.

   Use this image to stand up your infrastructure as needed!

## See Also

- [Tanzu Application Platform](https://tanzu.vmware.com/application-platform)
