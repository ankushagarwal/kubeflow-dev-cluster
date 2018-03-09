{
  global: {
    // User-defined global parameters; accessible to all component and environments, Ex:
    // replicas: 4,
  },
  components: {
    // Component-level parameters, defined initially from 'ks prototype use ...'
    // Each object below should correspond to a component in the components/ directory
    "kubeflow-core": {
      cloud: "null",
      disks: "null",
      jupyterHubAuthenticator: "iap",
      jupyterHubServiceType: "ClusterIP",
      name: "kubeflow-core",
      namespace: "kubeflow",
      tfDefaultImage: "null",
      tfJobImage: "gcr.io/tf-on-k8s-dogfood/tf_operator:v20180131-cabc1c0-dirty-e3b0c44",
      tfJobUiServiceType: "ClusterIP",
    },
    "iap-ingress": {
      ipName: "kubeflow-tf-hub",
      name: "iap-ingress",
      namespace: "kubeflow",
      secretName: "kubeflow-tf-hub-tls",
    },
    "iap-envoy": {
      audiences: "/projects/235037502967/global/backendServices/2187848895324689280",
      disableJwtChecking: "false",
      envoyImage: "gcr.io/kubeflow-dev/envoy:0fb4886b463698702b6a08955045731903a18738",
      name: "iap-envoy",
      namespace: "kubeflow",
    },
    "tf-cnn-job": {
      batch_size: 32,
      image: "gcr.io/kubeflow/tf-benchmarks-cpu:v20171202-bdab599-dirty-284af3",
      image_gpu: "gcr.io/kubeflow/tf-benchmarks-gpu:v20171202-bdab599-dirty-284af3",
      model: "resnet50",
      name: "tf-cnn-job",
      namespace: "kubeflow",
      num_gpus: 0,
      num_ps: 1,
      num_workers: 1,
    },
    "serveseq2seq": {
      model_path: "gs://kubeflow-dev-agwl",
      model_server_image: "gcr.io/kubeflow/model-server:1.0",
      name: "seq2seq",
      namespace: "kubeflow",
    },
    serveInception: {
      model_path: "gs://kubeflow-models/inception",
      model_server_image: "gcr.io/kubeflow/model-server:1.0",
      http_proxy_image: "gcr.io/kubeflow/http-proxy:1.0",
      name: "inception",
      namespace: "kubeflow",
    },
    "serveInception2": {
      http_proxy_image: "gcr.io/kubeflow/http-proxy:1.0",
      model_path: "gs://kubeflow-models/inception",
      model_server_image: "gcr.io/kubeflow/model-server:1.0",
      name: "inception",
      namespace: "kubeflow",
    },
    "tf-job-sample": {
      args: "null",
      image: "gcr.io/tf-on-k8s-dogfood/tf_sample:d4ef871-dirty-991dde4",
      image_gpu: "null",
      name: "tf-job-sample",
      namespace: "kubeflow",
      num_gpus: 0,
      num_masters: 1,
      num_ps: 0,
      num_workers: 0,
    },
  },
}
