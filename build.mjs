import fs from 'node:fs';
import path from 'node:path';
import { fileURLToPath } from 'node:url';

const dir = path.dirname(fileURLToPath(import.meta.url));

const shell = fs.readFileSync(path.join(dir, 'template-shell.html'), 'utf8');
const bundle = fs.readFileSync(path.join(dir, '.build/bundle.min.js'), 'utf8');
const fbxB64 = fs.readFileSync(path.join(dir, 'assets/IntegratedLetterBox3DView3D.fbx')).toString('base64');
const logoSvg = fs.readFileSync(path.join(dir, 'assets/glenvill-homes-logo.svg'), 'utf8');

// Replacement strings are passed through a function (not a plain string) to
// String.replace — a plain string interprets "$&"-style sequences specially,
// and the minified bundle's own text can contain those sequences.
let out = shell.replace('/*__BUNDLE_JS__*/', () => bundle);
out = out.replace('__FBX_BASE64__', () => fbxB64);
out = out.replace('<!--__LOGO_SVG__-->', () => logoSvg);

fs.mkdirSync(path.join(dir, 'dist'), { recursive: true });
fs.writeFileSync(path.join(dir, 'dist/artifact.html'), out);
console.log('wrote dist/artifact.html', (out.length / 1024).toFixed(1), 'KB');
