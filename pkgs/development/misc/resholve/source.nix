{ fetchFromGitHub
, ...
}:

rec {
  version = "0.6.0";
  rSrc =
    # local build -> `make ci`; `make clean` to restore
    # return to remote source
    # if builtins.pathExists ./.local
    # then ./.
    # else
      fetchFromGitHub {
        owner = "abathur";
        repo = "resholve";
        rev = "v${version}";
        hash = "sha256-GfhhU9f5kiYcuYTPKWXCIkAGsz7GhAUGjAmIZ8Ww5X4=";
      };
}
