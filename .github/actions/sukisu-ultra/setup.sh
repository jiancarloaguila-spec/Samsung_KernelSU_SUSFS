    - name: Setup SukiSU-Ultra
      shell: bash
      run: |
        set -euo pipefail

        echo "======================================"
        echo "       Setting up SukiSU-Ultra"
        echo "======================================"

        cd "$COMMON"

        if [ -d "KernelSU" ]; then
          echo "Existing SukiSU-Ultra directory found."
          echo "Removing previous integration directory."
          rm -rf KernelSU
        fi

        # Run your local setup script instead of curling from GitHub
        chmod +x "$GITHUB_WORKSPACE/.github/actions/sukisu-ultra/setup.sh"
        "$GITHUB_WORKSPACE/.github/actions/sukisu-ultra/setup.sh" main

        echo "SukiSU-Ultra integration completed."
