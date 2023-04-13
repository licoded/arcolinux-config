> https://github.com/machakann/vim-sandwich
>
> MayBe more cirtical
> https://github.com/machakann/vim-sandwich/wiki/Magic-characters

- f/F
    - F only can be used in `sd{motion/text-object}F`
    - sdf & sdF
        - Mark: must place your cursor on the func name, not no the brackets or args
        - sdf 
            - del current layer func
        - sdF
            - del wrapper layer func

- i/I
    - instant input head and tail

- t/T
    - HTML tag
    - can use Emmet-like abbreviation!
        - id : `div#id1` to `<div id="id1"></div>`
        - class : `div.class1` to `<div class="class1"></div>`
        - custom attributes : `div[attr=value]` to `<div attr="value"></div>`

## surprise I have found

- `2sa2e**`
    - can add bold in Markdown file in one command
    - the first `2` corresponds to the `**` in the last
        - and the `**` can be replaced by two different characters, e.g. `*u`
