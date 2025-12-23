# Baby Bank Private Deps Test

This repository is used for testing Octane's private dependency detection feature.

## Dependencies

### Git Submodules (.gitmodules)
- `lib/private-solidity-lib` - **PRIVATE** - should be detected as inaccessible
- `lib/openzeppelin-contracts` - **PUBLIC** - should be detected as accessible

### Cargo Dependencies (Cargo.toml)
- `private-cargo-lib` - **PRIVATE** git dependency - should be detected as inaccessible

### NPM Dependencies (package.json)
- `private-npm-lib` - **PRIVATE** git dependency - should be detected as inaccessible

## Testing Scenarios

1. **Without PAT**: All private deps should show as "missing access"
2. **With PAT**: All deps should be accessible (assuming PAT has repo scope)
