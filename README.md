# [TexturePacker Less Mixins](https://github.com/DamienSeguin/texture-packer-less-mixins)

This [exporter](http://www.codeandweb.com/texturepacker/documentation#customization) for [TexturePacker](http://www.codeandweb.com/texturepacker/) provide the ability to export sprites in the form of [Less Mixins](http://lesscss.org/#-mixins) : it's handy when your aim is to keep your HTML clean and semantic.

## How to use it

- TexturePacker:

In the `Preferences > Custom Data Exporters`, select the directory where you've clone or download this repo. Then restart TexturePacker and you should see the entry `Less Mixins (css)` in the `Output > Data Format` list. When you click the Pusblish button, it will generate all your mixins according to the name of the sprite file you've just added to the spritesheet.

- HTML:
	
	<i class="sprite ico-pin"></i>

- CSS:

	body .selector .ico-pin {
		.ico-pin-small-blue();
	}

## License

MIT