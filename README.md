# [TexturePacker Less Mixins](https://github.com/lucien144/texture-packer-less-mixins/)

Original author: https://github.com/DamienSeguin/texture-packer-less-mixins

This [exporter](http://www.codeandweb.com/texturepacker/documentation#customization) for [TexturePacker](http://www.codeandweb.com/texturepacker/) provide the ability to export sprites in the form of [Less Mixins](http://lesscss.org/#-mixins) : it's handy when your aim is to keep your HTML clean and semantic.

## How to use it

- TexturePacker:

In the `Preferences > Custom Data Exporters`, select the directory where you've clone or download this repo. Then restart TexturePacker and you should see the entry `Less Mixins (css)` in the `Output > Data Format` list. When you click the Pusblish button, it will generate all your mixins according to the name of the sprite file you've just added to the spritesheet.

- HTML:

	`<i class="sprite ico-pin"></i>`

- LESS:
```less
	body .selector .ico-pin {
		.ico-pin-small-blue();
        &:hover {
            .ico-pin-small-blue-hover();
        }
	}
```

Note:
The support for CSS pseudo-selectors such as :hover, :active, ... is automatical. Simply suffix the sprite's filename with dash and pseudoselector's name and the selector creates itself. Example: "ico-pin-small-blue-hover.png" creates selector ".ico-pin-small-blue:hover" as well as LESS mixin ".ico-pin-small-blue-hover()"

## Thanks
- https://github.com/DamienSeguin/texture-packer-less-mixins
- https://github.com/robert-wallis/texturepacker-multi-css

## License

MIT