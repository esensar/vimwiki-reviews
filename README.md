# Vimwiki reviews

Simple extension for [vimwiki](https://github.com/vimwiki/vimwiki) enabling weekly, monthly and yearly reviews.
Check out [lua version](https://github.com/esensar/vimwiki-reviews-lua), available for NeoVim only.

**WORK IN PROGRESS!**

## Installation

Install using favourite plugin manager.

## Usage

Plugin adds new commands:
- `VimwikiWeeklyReview`
- `VimwikiMonthlyReview`
- `VimwikiYearlyReview`

Bound to `<leader>wrww`, `<leader>wrmm` and `<leader>wryy` respectively.

Additionally, it adds commands for editing template used for reviews:
- `VimwikiWeeklyTemplate`
- `VimwikiMonthlyTemplate`
- `VimwikiYearlyTemplate`

Bound to `<leader>wrtw`, `<leader>wrtm` and `<leader>wrty` respectively.

Currently templates support `%date%` template which will be replaced with date of review.
