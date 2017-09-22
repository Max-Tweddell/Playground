window.onload = ->
  game = new (Phaser.Game)(800, 600, Phaser.AUTO, '',
    preload: preload
    create: create
    update: update)

  preload = ->
    game.load.image 'logo', 'phaser.png'
    return

  create = ->
    logo = game.add.sprite(game.world.centerX, game.world.centerY, 'logo')
    logo.anchor.setTo 0.5, 0.5
    return

  update = ->

  return
