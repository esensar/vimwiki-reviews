" -----------------------------------------------------------------------------
"     - Vimwiki extensions for working with weekly/monthly/yearly reviews -
"
"     DEPENDS ON VIMWIKI PLUGIN
" -----------------------------------------------------------------------------

if exists('g:loaded_vimwiki_reviews') || &compatible
  finish
endif
let g:loaded_vimwiki_reviews = 1

command! -nargs=? VimwikiWeeklyReview :call vimwiki_reviews#open_vimwiki_weekly_review(<f-args>)
command! -nargs=? VimwikiWeeklyTemplate :call vimwiki_reviews#open_review_weekly_template(<f-args>)
command! -nargs=? VimwikiMonthlyReview :call vimwiki_reviews#open_vimwiki_monthly_review(<f-args>)
command! -nargs=? VimwikiMonthlyTemplate :call vimwiki_reviews#open_review_monthly_template(<f-args>)
command! -nargs=? VimwikiYearlyReview :call vimwiki_reviews#open_vimwiki_yearly_review(<f-args>)
command! -nargs=? VimwikiYearlyTemplate :call vimwiki_reviews#open_review_yearly_template(<f-args>)
command! -nargs=? VimwikiReviewIndex :call vimwiki_reviews#open_vimwiki_review_index(<f-args>)

nnoremap <Plug>VimwikiWeeklyReview :VimwikiWeeklyReview<CR>
nnoremap <Plug>VimwikiWeeklyTemplate :VimwikiWeeklyTemplate<CR>
nnoremap <Plug>VimwikiMonthlyReview :VimwikiMonthlyReview<CR>
nnoremap <Plug>VimwikiMonthylTemplate :VimwikiMonthlyTemplate<CR>
nnoremap <Plug>VimwikiYearlyReview :VimwikiYearlyReview<CR>
nnoremap <Plug>VimwikiYearlyTemplate :VimwikiYearlyTemplate<CR>
nnoremap <Plug>VimwikiReviewIndex :VimwikiReviewIndex<CR>

if !exists('g:vimwiki_reviews_disable_maps') || !g:vimwiki_reviews_disable_maps
	nnoremap <Leader>wrw :VimwikiWeeklyReview<CR>
	nnoremap <Leader>wrtw :VimwikiWeeklyTemplate<CR>
	nnoremap <Leader>wrm :VimwikiMonthlyReview<CR>
	nnoremap <Leader>wrtm :VimwikiMonthlyTemplate<CR>
	nnoremap <Leader>wry :VimwikiYearlyReview<CR>
	nnoremap <Leader>wrty :VimwikiYearlyTemplate<CR>
	nnoremap <Leader>wri :VimwikiReviewIndex<CR>
endif
