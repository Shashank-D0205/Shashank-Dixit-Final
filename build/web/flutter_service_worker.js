'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "d8033f5f37b7f808a33575bf978706cb",
"assets/AssetManifest.bin.json": "388d0fda1d1d98309fab33189463f82c",
"assets/AssetManifest.json": "0010b5a9a5a47e4f2e1ee6fc9d6a5fc3",
"assets/assets/docs/cv.pdf": "7449e5c6cdd19e99b4498b51e1cab55f",
"assets/assets/docs/Resume_Shashank_Dixit.pdf": "f023bbb5c6e8a08e2525297a6fb1a9de",
"assets/assets/images/AWS%2520CP.png": "2224361488138175d5bcd154af7c2d16",
"assets/assets/images/AWS%2520SAA.jpg": "5ba7bb07a87d40acecc123fe22f96e15",
"assets/assets/images/Certificate%2520IIoT.pdf": "b4eb27ab7e0f9c089b55c0b681907345",
"assets/assets/images/circle.png": "663d5187ada8666bfa87120d1665605f",
"assets/assets/images/cv%2520dp.jpg": "ebaacbf361456a025419aee690dec6c2",
"assets/assets/images/down-arrow-2.png": "de203dedb01f2871b4ebbec490c20a6c",
"assets/assets/images/down-arrow.png": "4393cd5feeb20fb468c7eb223d1bbd06",
"assets/assets/images/google_play.png": "7c42f3803d546db3d393106501dba541",
"assets/assets/images/Hex.webp": "b7adf0a0d517edd0e69a85d432bb4483",
"assets/assets/images/HEXBG.jpeg": "679c847801b6e34aa89929148614bbcd",
"assets/assets/images/IIOT.jpg": "c86d846e87e96c31048fecf68d98aef3",
"assets/assets/images/ios-down-arrow.png": "fa4679d2972f1d11355142a60ed34ede",
"assets/assets/images/MESH.webp": "29d34a6eb949db4af2519dcf01a06d07",
"assets/assets/images/NPTEL%2520CC.jpg": "2db5170c4dd587d29ea4602aef398cf0",
"assets/assets/images/projects/Curify/1.jpeg": "591cffcbf26aba5aa0aa88bcbaecf3ea",
"assets/assets/images/projects/Curify/2.jpeg": "0f24b9f5338af314f98757f9f55f73f1",
"assets/assets/images/projects/SDev/0.jpg": "d7a4be69fcea5718ce8fdaa844ce0988",
"assets/assets/images/projects/SDev/1.jpg": "396c571e13c03fa3ddd14f13c601b8ad",
"assets/assets/images/projects/SDev/10.jpg": "ee1b6eee2d5df5a5bfdcb686266b75a0",
"assets/assets/images/projects/SDev/11.jpg": "865a19485fc0879161062afd25ce23bf",
"assets/assets/images/projects/SDev/2.jpg": "e16664ace87aa12b2266e6f8127ca05f",
"assets/assets/images/projects/SDev/3.gif": "045c76d00225ca68992c0dfdeca8d667",
"assets/assets/images/projects/SDev/4.jpg": "f114c609432d9115658f5477900f66a7",
"assets/assets/images/projects/SDev/5.gif": "63b922b2439e4b9d8c82cb0d70d49b29",
"assets/assets/images/projects/SDev/6.gif": "73e6970dd99c11e67c4ef508b6375487",
"assets/assets/images/projects/SDev/7.jpg": "2a56579d6ae3958c6ef6e14285d436dd",
"assets/assets/images/projects/SDev/8.jpg": "95799f71c9817f376085c3898b75d287",
"assets/assets/images/projects/SDev/9.jpg": "e727c315acf66548049c51eb6c6bbc9e",
"assets/assets/images/projects/YuvaAnubhav/1.jpeg": "07fb623c95cf59f27b01e37238a98f29",
"assets/assets/images/projects/YuvaAnubhav/2.jpeg": "4b12d96b0255a6f0f21061b117a6f2af",
"assets/assets/images/projects/YuvaAnubhav/3.png": "722cf2f50a0b5c0c9a36e2ed907f5b57",
"assets/assets/images/projects/YuvaAnubhav/4.jpeg": "e7ba0e7680b2f83c32d5f188648cbed8",
"assets/assets/images/projects/YuvaAnubhav/5.jpeg": "1b0035e540f961a52a0b8df46c2d116d",
"assets/assets/images/projects/YuvaAnubhav/6.jpeg": "48763241f2021ee78de46261802bc89a",
"assets/assets/images/projects/YuvaAnubhav/7.jpeg": "1df51acbf97fbeae08b755e6d771d49d",
"assets/assets/images/projects/YuvaAnubhav/8.jpeg": "b3418aca0d6a16b4462c681c6632a0d4",
"assets/assets/images/projects/YuvaAnubhav/9.png": "a8706555d2fc3fc6831e048d5141f0fe",
"assets/assets/images/right-arrow.png": "62a7bab73a0fe40acd3f4555adfcab91",
"assets/assets/images/RPBG.jpeg": "17df4d55c02490b6c99c8ac21f3f028d",
"assets/assets/images/shashank.jpg": "b40c9313b7d35101a4a4827b37442601",
"assets/assets/images/skills.png": "2bd1870ebedbbd39a41827675a2846c3",
"assets/assets/images/skills1.png": "77752281625f377820cdc5de7e66512c",
"assets/assets/images/skills2.png": "5849f99db0aaf1026199cd184087deae",
"assets/assets/images/Soundwave.webp": "33544fbf2caaa58e9c9a2e3ef9c9c6e3",
"assets/assets/images/spiral.riv": "aef5af3bc9519ed2ad74da6f158ad375",
"assets/assets/images/statue.riv": "2befc15df724ce91c3adbc6f25f0f52e",
"assets/assets/images/STATUE2.png": "2800bb4cd6fcf8a3a30e8b9506c8eeca",
"assets/assets/images/up-arrow.png": "d0c6457f5704962b99f0e6aa3e9b18e7",
"assets/assets/images/works.png": "5c6f8eb3a22f703781aad6c2528cf0cd",
"assets/FontManifest.json": "24636421a941e1a973ed7962700ca341",
"assets/fonts/MaterialIcons-Regular.otf": "9ebfc6bfa04506ca078a0099895c0174",
"assets/NOTICES": "1f6603cb21d67e49a2345133b81948cf",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/flutter_feather_icons/fonts/feather.ttf": "40469726c5ed792185741388e68dd9e8",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "2defd4130fb4e0f9a9a7f425684d6dfc",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "f3307f62ddff94d2cd8b103daf8d1b0f",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "04f83c01dded195a11d21c2edf643455",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "26eef3024dbc64886b7f48e1b6fb05cf",
"canvaskit/canvaskit.js.symbols": "efc2cd87d1ff6c586b7d4c7083063a40",
"canvaskit/canvaskit.wasm": "e7602c687313cfac5f495c5eac2fb324",
"canvaskit/chromium/canvaskit.js": "b7ba6d908089f706772b2007c37e6da4",
"canvaskit/chromium/canvaskit.js.symbols": "e115ddcfad5f5b98a90e389433606502",
"canvaskit/chromium/canvaskit.wasm": "ea5ab288728f7200f398f60089048b48",
"canvaskit/skwasm.js": "ac0f73826b925320a1e9b0d3fd7da61c",
"canvaskit/skwasm.js.symbols": "96263e00e3c9bd9cd878ead867c04f3c",
"canvaskit/skwasm.wasm": "828c26a0b1cc8eb1adacbdd0c5e8bcfa",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "4b2350e14c6650ba82871f60906437ea",
"flutter_bootstrap.js": "74787f3f7e5ad92a310a2d82f71a97a2",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/SD.jpeg": "a43a11cb99d8ccb6749a5e526c1e1186",
"index.html": "2745626cbc2c2f1a846f12521a1c389f",
"/": "2745626cbc2c2f1a846f12521a1c389f",
"main.dart.js": "d0bbd957ada36b730f24c2ea0797181d",
"manifest.json": "a0651e2228eb6e662040dfe6eff63b4f",
"version.json": "cf767f742fb7c58e6c32f31a638aac39"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
