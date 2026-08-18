import * as THREE from 'three';
import { FBXLoader } from 'three/examples/jsm/loaders/FBXLoader.js';
import { OrbitControls } from 'three/examples/jsm/controls/OrbitControls.js';
import { RoomEnvironment } from 'three/examples/jsm/environments/RoomEnvironment.js';
import { LineSegments2 } from 'three/examples/jsm/lines/LineSegments2.js';
import { LineSegmentsGeometry } from 'three/examples/jsm/lines/LineSegmentsGeometry.js';
import { LineMaterial } from 'three/examples/jsm/lines/LineMaterial.js';

window.THREE = THREE;
window.FBXLoader = FBXLoader;
window.OrbitControls = OrbitControls;
window.RoomEnvironment = RoomEnvironment;
window.LineSegments2 = LineSegments2;
window.LineSegmentsGeometry = LineSegmentsGeometry;
window.LineMaterial = LineMaterial;
