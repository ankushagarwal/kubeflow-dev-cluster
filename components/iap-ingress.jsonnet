local params = std.extVar("__ksonnet/params").components["iap-ingress"];
// TODO(https://github.com/ksonnet/ksonnet/issues/222): We have to add namespace as an explicit parameter
// because ksonnet doesn't support inheriting it from the environment yet.

local k = import 'k.libsonnet';
local iap = import "kubeflow/core/iap.libsonnet";

local name = params.name;
local namespace = params.namespace;
local secretName = params.secretName;
local ipName = params.ipName;

iap.parts(namespace).ingressParts(secretName, ipName)
