const path = require('path');

if (require.main === module) {
  const packageJson = require(path.resolve(__dirname, '..', 'package.json'));
  process.exit(packageJson.scripts && packageJson.scripts.build ? 0 : 1);
}
