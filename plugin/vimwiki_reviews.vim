" -----------------------------------------------------------------------------
"     - Vimwiki extensions for working with weekly/monthly/yearly reviews -
"
"     DEPENDS ON VIMWIKI PLUGIN
" -----------------------------------------------------------------------------

if exists('g:loaded_vimwiki_reviews') || &compatible
  finish
endif
let g:loaded_vimwiki_reviews = 1

command! -count=0 VimwikiWeeklyReview :call vimwiki_reviews#open_vimwiki_weekly_review(<count>)
command! -count=0 VimwikiWeeklyTemplate :call vimwiki_reviews#open_review_weekly_template(<count>)
command! -count=0 VimwikiMonthlyReview :call vimwiki_reviews#open_vimwiki_monthly_review(<count>)
command! -count=0 VimwikiMonthlyTemplate :call vimwiki_reviews#open_review_monthly_template(<count>)
command! -count=0 VimwikiYearlyReview :call vimwiki_reviews#open_vimwiki_yearly_review(<count>)
command! -count=0 VimwikiYearlyTemplate :call vimwiki_reviews#open_review_yearly_template(<count>)
command! -count=0 VimwikiReviewIndex :call vimwiki_reviews#open_vimwiki_review_index(<count>)

nnoremap <Plug>VimwikiWeeklyReview <Cmd>call vimwiki_reviews#open_vimwiki_weekly_review(v:count)<CR>
nnoremap <Plug>VimwikiWeeklyTemplate <Cmd>call vimwiki_reviews#open_review_weekly_template(v:count)<CR>
nnoremap <Plug>VimwikiMonthlyReview <Cmd>call vimwiki_reviews#open_vimwiki_monthly_review(v:count)<CR>
nnoremap <Plug>VimwikiMonthlyTemplate <Cmd>call vimwiki_reviews#open_review_monthly_template(v:count)<CR>
nnoremap <Plug>VimwikiYearlyReview <Cmd>call vimwiki_reviews#open_vimwiki_yearly_review(v:count)<CR>
nnoremap <Plug>VimwikiYearlyTemplate <Cmd>call vimwiki_reviews#open_review_yearly_template(v:count)<CR>
nnoremap <Plug>VimwikiReviewIndex <Cmd>call vimwiki_reviews#open_vimwiki_review_index(v:count)<CR>

if !exists('g:vimwiki_reviews_disable_maps') || !g:vimwiki_reviews_disable_maps
	nnoremap <Leader>wrw :VimwikiWeeklyReview<CR>
	nnoremap <Leader>wrtw :VimwikiWeeklyTemplate<CR>
	nnoremap <Leader>wrm :VimwikiMonthlyReview<CR>
	nnoremap <Leader>wrtm :VimwikiMonthlyTemplate<CR>
	nnoremap <Leader>wry :VimwikiYearlyReview<CR>
	nnoremap <Leader>wrty :VimwikiYearlyTemplate<CR>
	nnoremap <Leader>wri :VimwikiReviewIndex<CR>
endif
