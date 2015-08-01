@root = exports ? this

Template.body.events
	'click #inputs-button': ->
		$('#inputs').removeClass 'hidden'
		$('#scene').css 'opacity', '0.4'
	'click #close-input-button': ->
		$('#inputs').addClass 'hidden'
		$('#scene').css 'opacity', '1'

Template.body.rendered = ->
	IxSlider = $('#IxSlider')[0]
	noUiSlider.create IxSlider,
		start: 1
		range:
			'min': 0
			'max': 1
		step: 0.01
		connect: 'lower'
		pips:
			mode: 'count'
			values: 5
			density: 4
			format: wNumb(decimals: 2)
	IySlider = $('#IySlider')[0]
	noUiSlider.create IySlider,
		start: 1
		range:
			'min': 0
			'max': 1
		step: 0.01
		connect: 'lower'
		pips:
			mode: 'count'
			values: 5
			density: 4
			format: wNumb(decimals: 2)
	IzSlider = $('#IzSlider')[0]
	noUiSlider.create IzSlider,
		start: 1
		range:
			'min': 0
			'max': 1
		step: 0.01
		connect: 'lower'
		pips:
			mode: 'count'
			values: 5
			density: 4
			format: wNumb(decimals: 2)
	wxSlider = $('#wxSlider')[0]
	noUiSlider.create wxSlider,
		start: 1
		range:
			'min': 0
			'max': 1
		step: 0.01
		connect: 'lower'
		pips:
			mode: 'count'
			values: 5
			density: 4
			format: wNumb(decimals: 2)
	wySlider = $('#wySlider')[0]
	noUiSlider.create wySlider,
		start: 1
		range:
			'min': 0
			'max': 1
		step: 0.01
		connect: 'lower'
		pips:
			mode: 'count'
			values: 5
			density: 4
			format: wNumb(decimals: 2)
	wzSlider = $('#wzSlider')[0]
	noUiSlider.create wzSlider,
		start: 1
		range:
			'min': 0
			'max': 1
		step: 0.01
		connect: 'lower'
		pips:
			mode: 'count'
			values: 5
			density: 4
			format: wNumb(decimals: 2)
	mxSlider = $('#mxSlider')[0]
	noUiSlider.create mxSlider,
		start: 1
		range:
			'min': 0
			'max': 1
		step: 0.01
		connect: 'lower'
		pips:
			mode: 'count'
			values: 5
			density: 4
			format: wNumb(decimals: 2)
	mySlider = $('#mySlider')[0]
	noUiSlider.create mySlider,
		start: 1
		range:
			'min': 0
			'max': 1
		step: 0.01
		connect: 'lower'
		pips:
			mode: 'count'
			values: 5
			density: 4
			format: wNumb(decimals: 2)
	mzSlider = $('#mzSlider')[0]
	noUiSlider.create mzSlider,
		start: 1
		range:
			'min': 0
			'max': 1
		step: 0.01
		connect: 'lower'
		pips:
			mode: 'count'
			values: 5
			density: 4
			format: wNumb(decimals: 2)
	tSlider = $('#tSlider')[0]
	noUiSlider.create tSlider,
		start: 60
		range:
			'min': 1
			'max': 100
		step: 1
		connect: 'lower'
		pips:
			mode: 'count'
			values: 5
			density: 4
	dtSlider = $('#dtSlider')[0]
	noUiSlider.create dtSlider,
		start: 0.1
		range:
			'min': 0
			'max': 1
		step: 0.01
		connect: 'lower'
		pips:
			mode: 'count'
			values: 5
			density: 4
			format: wNumb(decimals: 2)

	root.getInputs = ->
		return [
			IxSlider.noUiSlider.get()
			IySlider.noUiSlider.get()
			IzSlider.noUiSlider.get()
			wxSlider.noUiSlider.get()
			wySlider.noUiSlider.get()
			wzSlider.noUiSlider.get()
			mxSlider.noUiSlider.get()
			mySlider.noUiSlider.get()
			mzSlider.noUiSlider.get()
			tSlider.noUiSlider.get()
			dtSlider.noUiSlider.get()
		]

Template.scene.rendered = ->
	### Cube stupid Code ###
	mesh = undefined
	scene = undefined
	camera = undefined
	renderer = undefined

	init = ->
		sceneDiv = $('#scene-div')[0]
		scene = new THREE.Scene
		camera = new THREE.PerspectiveCamera(50, sceneDiv.clientWidth / (window.innerHeight - 120), 1, 10000)
		camera.position.z = 900
		scene.add(camera)
		geometry = new THREE.BoxGeometry(200, 200, 200)
		material = new THREE.MeshNormalMaterial
		mesh = new THREE.Mesh(geometry, material)
		scene.add(mesh)

		try
			canvas = document.createElement('canvas')
			if (window.WebGLRenderingContext && (canvas.getContext('webgl') || canvas.getContext('experimental-webgl')))
				renderer = new THREE.WebGLRenderer
			else
				renderer = new THREE.CanvasRenderer
		catch _error
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
