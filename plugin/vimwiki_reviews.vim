" -----------------------------------------------------------------------------
"     - Vimwiki extensions for working with weekly/monthly/yearly reviews -
"
"     DEPENDS ON VIMWIKI PLUGIN
" -----------------------------------------------------------------------------

if exists('g:loaded_vimwiki_reviews') || &compatible
  finish
endif
let g:loaded_vimwiki_reviews = 1

command! -count=0 VimwikiWeeklyReview :call vimwiki_reviews#open_vimwiki_weekly_review(<count>, 0)
command! -count=0 VimwikiNextWeeklyReview :call vimwiki_reviews#open_vimwiki_weekly_review(<count>, 1)
command! -count=0 VimwikiPrevWeeklyReview :call vimwiki_reviews#open_vimwiki_weekly_review(<count>, -1)
command! -count=0 VimwikiWeeklyTemplate :call vimwiki_reviews#open_review_weekly_template(<count>)
command! -count=0 VimwikiMonthlyReview :call vimwiki_reviews#open_vimwiki_monthly_review(<count>, 0)
command! -count=0 VimwikiNextMonthlyReview :call vimwiki_reviews#open_vimwiki_monthly_review(<count>, 1)
command! -count=0 VimwikiPrevMonthlyReview :call vimwiki_reviews#open_vimwiki_monthly_review(<count>, -1)
command! -count=0 VimwikiMonthlyTemplate :call vimwiki_reviews#open_review_monthly_template(<count>)
command! -count=0 VimwikiYearlyReview :call vimwiki_reviews#open_vimwiki_yearly_review(<count>, 0)
command! -count=0 VimwikiNextYearlyReview :call vimwiki_reviews#open_vimwiki_yearly_review(<count>, 1)
command! -count=0 VimwikiPrevYearlyReview :call vimwiki_reviews#open_vimwiki_yearly_review(<count>, -1)
command! -count=0 VimwikiYearlyTemplate :call vimwiki_reviews#open_review_yearly_template(<count>)
command! -count=0 VimwikiReviewIndex :call vimwiki_reviews#open_vimwiki_review_index(<count>)

nnoremap <Plug>VimwikiWeeklyReview <Cmd>call vimwiki_reviews#open_vimwiki_weekly_review(v:count, 0)<CR>
nnoremap <Plug>VimwikiNextWeeklyReview <Cmd>call vimwiki_reviews#open_vimwiki_weekly_review(v:count, 1)<CR>
nnoremap <Plug>VimwikiPrevWeeklyReview <Cmd>call vimwiki_reviews#open_vimwiki_weekly_review(v:count, -1)<CR>
nnoremap <Plug>VimwikiWeeklyTemplate <Cmd>call vimwiki_reviews#open_review_weekly_template(v:count)<CR>
nnoremap <Plug>VimwikiMonthlyReview <Cmd>call vimwiki_reviews#open_vimwiki_monthly_review(v:count, 0)<CR>
nnoremap <Plug>VimwikiNextMonthlyReview <Cmd>call vimwiki_reviews#open_vimwiki_monthly_review(v:count, 1)<CR>
nnoremap <Plug>VimwikiPrevMonthlyReview <Cmd>call vimwiki_reviews#open_vimwiki_monthly_review(v:count, -1)<CR>
nnoremap <Plug>VimwikiMonthlyTemplate <Cmd>call vimwiki_reviews#open_review_monthly_template(v:count)<CR>
nnoremap <Plug>VimwikiYearlyReview <Cmd>call vimwiki_reviews#open_vimwiki_yearly_review(v:count, 0)<CR>
nnoremap <Plug>VimwikiNextYearlyReview <Cmd>call vimwiki_reviews#open_vimwiki_yearly_review(v:count, 1)<CR>
nnoremap <Plug>VimwikiPrevYearlyReview <Cmd>call vimwiki_reviews#open_vimwiki_yearly_review(v:count, -1)<CR>
nnoremap <Plug>VimwikiYearlyTemplate <Cmd>call vimwiki_reviews#open_review_yearly_template(v:count)<CR>
nnoremap <Plug>VimwikiReviewIndex <Cmd>call vimwiki_reviews#open_vimwiki_review_index(v:count)<CR>

if !exists('g:vimwiki_reviews_disable_maps') || !g:vimwiki_reviews_disable_maps
	nmap <Leader>wrww <Plug>VimwikiWeeklyReview
	nmap <Leader>wrwn <Plug>VimwikiNextWeeklyReview
	nmap <Leader>wrwp <Plug>VimwikiPrevWeeklyReview
	nmap <Leader>wrtw <Plug>VimwikiWeeklyTemplate
	nmap <Leader>wrmm <Plug>VimwikiMonthlyReview
	nmap <Leader>wrmn <Plug>VimwikiNextMonthlyReview
	nmap <Leader>wrmp <Plug>VimwikiPrevMonthlyReview
	nmap <Leader>wrtm <Plug>VimwikiMonthlyTemplate
	nmap <Leader>wryy <Plug>VimwikiYearlyReview
	nmap <Leader>wryn <Plug>VimwikiNextYearlyReview
	nmap <Leader>wryp <Plug>VimwikiPrevYearlyReview
	nmap <Leader>wrty <Plug>VimwikiYearlyTemplate
	nmap <Leader>wri <Plug>VimwikiReviewIndex
endif
