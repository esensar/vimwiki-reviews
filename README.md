# Vimwiki reviews

Simple extension for [vimwiki](https://github.com/vimwiki/vimwiki) enabling weekly, monthly and yearly reviews.
Check out [lua version](https://codeberg.org/vimwiki-reviews/vimwiki-reviews-lua) for better maintaned version with more features, available for NeoVim only.

**WORK IN PROGRESS!**

## Requirements

- [vimwiki plugin](https://github.com/vimwiki/vimwiki)

## Installation

Install using favourite plugin manager.

Using [Plug](https://github.com/junegunn/vim-plug)

```
Plug 'vimwiki/vimwiki'
Plug 'esensar/vimwiki-reviews'
```
Then install via `:PlugInstall`

## Usage

Plugin is meant to integrate well with usual vimwiki commands and keymaps.
By default, plugin stored reviews in `reviews` subdirectory inside vimwiki
directory. It generates index named `reviews.ext` in that directory.

### Commands

#### Weekly reviews

`:VimwikiWeeklyReview`, `:VimwikiNextWeeklyReview` and `:VimwikiPrevWeeklyReview` open up weekly review for current vimwiki (count may be passed as first argumeny to select vimwiki).

`:VimwikiWeeklyTemplate` opens up template file for weekly reviews for current vimwiki (count may be passed as first argumeny to select vimwiki). If no template file exists, it is created. If no file exists at time of creation of reviews, default template is used.

#### Monthly reviews

`:VimwikiMonthlyReview`, `:VimwikiNextMonthlyReview` and `:VimwikiPrevMonthlyReview` open up monthly review for current vimwiki (count may be passed as first argumeny to select vimwiki).

`:VimwikiMonthlyTemplate` opens up template file for monthly reviews for current vimwiki (count may be passed as first argumeny to select vimwiki). If no template file exists, it is created. If no file exists at time of creation of reviews, default template is used.

#### Yearly reviews

`:VimwikiYearlyReview`, `:VimwikiNextYearlyReview` and `:VimwikiPrevYearlyReview` open up yearly review for current vimwiki (count may be passed as first argumeny to select vimwiki).

`:VimwikiYearlyTemplate` opens up template file for yearly reviews for current vimwiki (count may be passed as first argumeny to select vimwiki). If no template file exists, it is created. If no file exists at time of creation of reviews, default template is used.

#### Reviews index

`:VimwikiReviewIndex` opens reviews index file (count may be passed as first argumeny to select vimwiki).

### Keymaps

Plugin creates keymaps by default which can be disabled by setting `g:vimwiki_reviews_disable_maps` option to 1.

By default, these are very similar to default maps for vimwiki:

- `<Leader>wrww` invokes `:VimwikiWeeklyReview`
- `<Leader>wrwp` invokes `:VimwikiPrevWeeklyReview`
- `<Leader>wrwn` invokes `:VimwikiNextWeeklyReview`
- `<Leader>wrtw` invokes `:VimwikiWeeklyTemplate`
- `<Leader>wrmm` invokes `:VimwikiMonthlyReview`
- `<Leader>wrmp` invokes `:VimwikiPrevMonthlyReview`
- `<Leader>wrmn` invokes `:VimwikiNextMonthlyReview`
- `<Leader>wrtm` invokes `:VimwikiMonthlyTemplate`
- `<Leader>wryy` invokes `:VimwikiYearlyReview`
- `<Leader>wryp` invokes `:VimwikiPrevYearlyReview`
- `<Leader>wryn` invokes `:VimwikiNextYearlyReview`
- `<Leader>wrty` invokes `:VimwikiYearlyTemplate`
- `<Leader>wri` invokes `:VimwikiReviewIndex`

All of the maps are mapped to corresponding `<Plug>` mappings, which are named the same as commands used. For example:

`<Leader>wrww` maps to `<Plug>VimwikiWeeklyReview` which invokes `:VimwikiWeeklyReview`

### Templates

Template filles will just be copied over to newly created reviews. Currently templates support `%date%` template which will be replaced with date of review.

## License

[MIT](LICENSE)
