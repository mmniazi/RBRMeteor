Template.scene.rendered = ->
  camera = undefined
  scene = undefined
  renderer = undefined
  geometry = undefined
  material = undefined
  mesh = undefined

  webGlAvailable = ->
    try
      canvas = document.createElement('canvas')
      return window.WebGLRenderingContext and (canvas.getContext('webgl') or canvas.getContext('experimental-webgl'))
    catch e
      return false

  init = ->
    scene = new (THREE.Scene)
    camera = new (THREE.PerspectiveCamera)(50, window.innerWidth / window.innerHeight, 1, 10000)
    camera.position.z = 900
    scene.add camera
    geometry = new (THREE.CubeGeometry)(200, 200, 200)
    material = new (THREE.MeshNormalMaterial)
    mesh = new (THREE.Mesh)(geometry, material)
    scene.add mesh

    if webGlAvailable()
      renderer = new (THREE.WebGLRenderer)
    else
      renderer = new (THREE.CanvasRenderer)

    renderer.setSize window.innerWidth, window.innerHeight
    $('#scene').appendChild renderer.domElement

  animate = ->
    requestAnimationFrame animate
    render()


  render = ->
    mesh.rotation.x += 0.01
    mesh.rotation.y += 0.02
    renderer.render scene, camera

  init()
  animate()



