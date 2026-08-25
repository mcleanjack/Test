import fs from 'node:fs';
import path from 'node:path';
import { fileURLToPath } from 'node:url';

const dir = path.dirname(fileURLToPath(import.meta.url));

const shell = fs.readFileSync(path.join(dir, 'template-shell.html'), 'utf8');
const bundle = fs.readFileSync(path.join(dir, '.build/bundle.min.js'), 'utf8');
const logoSvg = fs.readFileSync(path.join(dir, 'assets/glenvill-homes-logo.svg'), 'utf8');
const mapB64 = fs.readFileSync(path.join(dir, 'assets/melbourne-map.png')).toString('base64');

// Replacement strings are passed through a function (not a plain string) to
// String.replace — a plain string interprets "$&"-style sequences specially,
// and the minified bundle's own text can contain those sequences.
let out = shell.replace('/*__BUNDLE_JS__*/', () => bundle);
out = out.replace('<!--__LOGO_SVG__-->', () => logoSvg);
out = out.replace('__MAP_BASE64__', () => mapB64);

fs.mkdirSync(path.join(dir, 'dist'), { recursive: true });
fs.mkdirSync(path.join(dir, 'dist/data'), { recursive: true });
fs.writeFileSync(path.join(dir, 'dist/artifact.html'), out);
// house.glb (17MB) and the callout metadata are served as separate static
// files rather than base64-embedded: at that size, embedding would bloat
// the HTML by ~33% and force the browser to decode the whole thing before
// GLTFLoader ever sees a byte, instead of letting it stream/cache the
// binary directly. vercel.json passes both paths straight through the
// single-HTML catch-all rewrite so they're still served by the same deploy.
fs.copyFileSync(path.join(dir, 'assets/house.glb'), path.join(dir, 'dist/house.glb'));
fs.copyFileSync(path.join(dir, 'data/callouts.json'), path.join(dir, 'dist/data/callouts.json'));
console.log('wrote dist/artifact.html', (out.length / 1024).toFixed(1), 'KB');
console.log('copied dist/house.glb and dist/data/callouts.json');
