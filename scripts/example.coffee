module.exports = (robot) ->

  robot.hear /(G|g)r(ê|e)mio/, (res) ->
    res.send "Aaaaaté a pé nós iremooos!"

  robot.respond /open the pod bay doors/i, (res) ->
    res.reply "I'm afraid I can't let you do that."

    # O telefone do @rodrigo.krigger é `51 8573 0771`.
    # O telefone do @taschetto é `51 9288 3831`.
    # O telefone do @elton.martins é `51 9687 9786`.
    # O telefone do @gianw é `51 9777 1993`.
    # O telefone do @betoharres é `51 9256 5774`.
    # O telefone da @jaqueline.meneghini é `51 8546 7649`.
    # O telefone da @bruna.bohrer é `51 9933 5177`.
    # O telefone do @giuliano.borowski é `51 8119 2335`.