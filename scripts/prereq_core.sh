# Copyright 2019 Google
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

if [[ -n "${GITHUB_WORKFLOW:-}" ]]; then
  . ../scripts/check_secrets.sh
  if [[ "$have_secrets" == true ]]; then
    # Installs a Secrets/ directory in the current working directory.
    ../scripts/install_secrets.sh
    cp Secrets/quickstart-ios/"${DIRECTORY}"/GoogleService-Info.plist ./
    cp Secrets/quickstart-ios/TestUtils/FIREGSignInInfo.h ../TestUtils/
  fi
fi
