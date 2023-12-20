{ lib, python311Packages, fetchgit }: 

python311Packages.buildPythonPackage rec {
  pname = "asyncudp";
  version = "1.0.0";

  src = fetchgit {
    url = "https://github.com/eerimoq/asyncudp.git";
    rev = "eaab80e5da7aac28a11c10db73e214a0c2903eca";  # Specify the specific commit, tag, or branch
    sha256 = "sha256-mWKH8qLCXokK5cBE7PpbDltZ0Bu/UVXmNvi/V2tFWsQ=";  # SHA256 hash of the source
  };

  # Extract the specific subdirectory within the repository
  propagatedBuildInputs = [ python311Packages.setuptools ];

  meta = with lib; {
    description = "Description of your package";
    license = licenses.mit;
  };
} 