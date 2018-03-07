local params = std.extVar("__ksonnet/params").components["iap-envoy"];

// TODO(https://github.com/ksonnet/ksonnet/issues/222): We have to add namespace as an explicit parameter
// because ksonnet doesn't support inheriting it from the environment yet.

local k = import 'k.libsonnet';
local iap = import "kubeflow/core/iap.libsonnet";
local util = import "kubeflow/core/util.libsonnet";

local name = params.name;
local namespace = params.namespace;

local envoyImage = params.envoyImage;
local audiencesParam = params.audiences;
local audiences = std.split(audiencesParam, ',');
local disableJwtCheckingParam = params.disableJwtChecking;
local disableJwtChecking = util.toBool(disableJwtCheckingParam);

iap.parts(namespace).envoy(envoyImage, audiences, disableJwtChecking)
