angular = require 'angular'
Trianglify = require 'trianglify'
palette = require 'palette'

angular.module 'site.services'
.service 'Background', ->
    @generate = (seed, colors) ->
        x_colors = (palette.get 'Deep Purple', color for color in [900..100] by -200)
        y_colors = (palette.get 'Teal', color for color in [100...900] by 200)

        Trianglify
            width: window.innerWidth
            height: window.innerHeight
            variance: 1
            cell_size: 50
            seed: seed
            x_colors: colors ? x_colors
            y_colors: if colors? then 'match_x' else y_colors
        .png()

    return
