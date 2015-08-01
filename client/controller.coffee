Template.scene.rendered = ->
  animate = undefined
  camera = undefined
  geometry = undefined
  init = undefined
  material = undefined
  mesh = undefined
  render = undefined
  renderer = undefined
  scene = undefined
  webGlAvailable = undefined
  sceneDiv = document.getElementById("scene-div")

  webGlAvailable = ->
    canvas
    try
      canvas = document.createElement('canvas')
      return window.WebGLRenderingContext && (canvas.getContext('webgl') || canvas.getContext('experimental-webgl'))
    catch _error
      return false

  init = ->
    scene = new THREE.Scene
    camera = new THREE.PerspectiveCamera(50, sceneDiv.clientWidth / (window.innerHeight - 120), 1, 10000)
    camera.position.z = 900
    scene.add(camera)
    geometry = new THREE.BoxGeometry(200, 200, 200)
    material = new THREE.MeshNormalMaterial
    mesh = new THREE.Mesh(geometry, material)
    scene.add(mesh)

    if (webGlAvailable())
      renderer = new THREE.WebGLRenderer
    else
      renderer = new THREE.CanvasRenderer

    renderer.setSize(sceneDiv.clientWidth, window.innerHeight - 120)
    renderer.setClearColor(0xffffff, 1)
    sceneDiv.appendChild(renderer.domElement)

  animate = ->
    requestAnimationFrame(animate)
    return render()

  render = ->
    mesh.rotation.x += 0.01
    mesh.rotation.y += 0.02
    return renderer.render(scene, camera)

  init()
  animate()