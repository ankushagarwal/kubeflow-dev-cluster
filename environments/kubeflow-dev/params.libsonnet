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
      // disableJwtChecking: "true",
      // envoyImage: "gcr.io/kubeflow-dev/envoy:0fb4886b463698702b6a08955045731903a18738",
    },
    nfs +: {
      disks: "github-issues-data",
    },
  },
}
