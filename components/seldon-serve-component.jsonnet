local env = std.extVar("__ksonnet/environments");
local params = std.extVar("__ksonnet/params").components["seldon-serve-component"];
// TODO(https://github.com/ksonnet/ksonnet/issues/222): We have to add namespace as an explicit parameter
// because ksonnet doesn't support inheriting it from the environment yet.

local k = import "k.libsonnet";
local serve = import "kubeflow/seldon/serve.libsonnet";

local name = params.name;
local image = params.image;
local namespace = params.namespace;
local replicas = params.replicas;

k.core.v1.list.new(serve.parts(namespace).serve(name, image, replicas))
