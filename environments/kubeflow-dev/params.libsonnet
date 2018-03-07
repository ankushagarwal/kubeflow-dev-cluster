local params = import "../../components/params.libsonnet";
params + {
  components +: {
    // Insert component parameter overrides here. Ex:
    // guestbook +: {
    //   name: "guestbook-dev",
    //   replicas: params.global.replicas,
    // },
    "kubeflow-core" +: {
      cloud: "gke",
      disks: "github-issues-data",
    },
    "iap-envoy" +: {
      disableJwtChecking: true,
    },
    nfs +: {
      disks: "github-issues-data",
    },
  },
}
