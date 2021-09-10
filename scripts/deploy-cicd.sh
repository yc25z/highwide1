#!/usr/bin/env bash
#   Copyright IBM Corporation 2020
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#        http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

kubectl apply -f deploy/cicd/tekton/

HOST_AND_PORT="$(kubectl config view --minify -o=jsonpath='{.clusters[0].cluster.server}')"
NAMESPACE="$(kubectl config view --minify -o=jsonpath='{.contexts[0].context.namespace}')"
echo 'Please add the following web hooks to the corresponding git repositories:'

echo "generic : $HOST_AND_PORT/apis/build.openshift.io/v1/namespaces/$NAMESPACE/buildconfigs/highwide-clone-build-push-highwide-latest/webhooks/087ebe16a0a97c9c/generic"



