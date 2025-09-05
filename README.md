# SQLMap Docker Images

Dockerized SQLMap with optional Tor support for SQL injection testing.

## Quick Start

### Pull from Docker Hub
```bash
# Base SQLMap
docker pull wortel538/sqlmap:latest

# SQLMap with Tor
docker pull wortel538/sqlmap:tor
```

### Build Locally
```bash
# Build and push both variants
./build-and-push.sh wortel538

# Or build individually
docker build -t sqlmap:latest .
docker build -f Dockerfile.tor -t sqlmap:tor .
```

## Usage

### Run Scripts
```bash
# Base SQLMap
./run.sh -u "http://target.com/page.php?id=1"

# With Tor support
./run.sh --tor -u "http://target.com/page.php?id=1" --tor --check-tor
```

### Direct Docker Commands
```bash
# Base version
docker run --rm -it wortel538/sqlmap:latest -u "http://target.com/page.php?id=1"

# Tor version
docker run --rm -it wortel538/sqlmap:tor -u "http://target.com/page.php?id=1" --tor
```

## Images

- **sqlmap:latest** - Lightweight SQLMap without Tor (~200MB)
- **sqlmap:tor** - SQLMap with Tor proxy support (~250MB)

## Output

Results are saved to `./output/` directory when using the run scripts.
