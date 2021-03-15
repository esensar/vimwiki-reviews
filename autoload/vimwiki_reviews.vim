" Gets path to reviews dir of provided vimwiki (by index)
function! s:get_reviews_dir(vimwiki_index)
	if a:vimwiki_index == 0
		let current_index = vimwiki#vars#get_bufferlocal('wiki_nr')
		if l:current_index < 0
			let l:current_index = 0
		end
		let l:vimwiki = g:vimwiki_list[current_index]
	else
		let l:vimwiki = g:vimwiki_list[a:vimwiki_index - 1]
	endif

	return l:vimwiki.path . 'reviews/'
endfunction

" Convert days to seconds
function! s:days_to_seconds(days)
	return days * 24 * 60 * 60
endfunction

" Finds review template path for provided review type
function! s:get_review_template_path(vimwiki_reviews_path, review_type)
	return a:vimwiki_reviews_path . 'template-' . a:review_type . '.md'
endfunction

" Edits weekly review template
function! vimwiki_reviews#open_review_weekly_template(vimwiki_index)
	let reviews_dir = s:get_reviews_dir(a:vimwiki_index)
	execute 'edit ' . s:get_review_template_path(l:reviews_dir, 'week')
endfunction

" Edits monthly review template
function! vimwiki_reviews#open_review_monthly_template(vimwiki_index)
	let reviews_dir = s:get_reviews_dir(a:vimwiki_index)
	execute 'edit ' . s:get_review_template_path(l:reviews_dir, 'month')
endfunction

" Edits yearly review template
function! vimwiki_reviews#open_review_yearly_template(vimwiki_index)
	let reviews_dir = s:get_reviews_dir(a:vimwiki_index)
	execute 'edit ' . s:get_review_template_path(l:reviews_dir, 'year')
endfunction

" Reads template for provided review type into current buffer
" Uses overrides in form of files in reviews directory
" Looks for file named template-{review_type}.md:
"  - template-week.md
"  - template-month.md
"  - template-year.md
" Templates can use variables using %variable% syntax
" Currently supported variables are:
"  - %date% (Puts different date based on review type)
function! vimwiki_reviews#read_review_template_into_buffer(vimwiki_reviews_path, review_type)
	let template_path = s:get_review_template_path(a:vimwiki_reviews_path, a:review_type)
	if filereadable(glob(l:template_path))
		execute 'read ' . l:template_path
	else
		if a:review_type == 'week'
			call setline(1, '# %date% Weekly Review')
		elseif a:review_type == 'month'
			call setline(1, '# %date% Monthly Review')
		elseif a:review_type == 'year'
			call setline(1, '# %date% Yearly Review')
		endif
	endif
endfunction

" Open current week weekly review file
" Created buffer is dated to Sunday of current week
function! vimwiki_reviews#open_vimwiki_weekly_review(vimwiki_index, offset)
	let reviews_dir = s:get_reviews_dir(a:vimwiki_index)
	let days_to_sunday = 7 - str2nr(strftime('%u'))
	let week_date = strftime('%Y-%m-%d', localtime() + s:days_to_seconds(l:days_to_sunday) + s:days_to_seconds(7 * a:offset))
	let file_name = l:reviews_dir . l:week_date . '-week.md'
	let exists = filereadable(glob(l:file_name))
	execute 'edit ' . l:file_name
	if exists == v:false
		call vimwiki_reviews#read_review_template_into_buffer(l:reviews_dir, 'week')
		execute '%substitute/%date%/' . l:week_date
	endif
endfunction


" Open past month monthly review file
" Created buffer is dated to previous month
function! vimwiki_reviews#open_vimwiki_monthly_review(vimwiki_index, offset)
	let reviews_dir = s:get_reviews_dir(a:vimwiki_index)
	let time = localtime()

	let year = str2nr(strftime('%Y', l:time))
	let month = str2nr(strftime('%m', l:time))

	let l:month = l:month + a:offset
	while l:month < 0
		let l:month = l:month + 12
		let l:year = l:year - 1
	endwhile
	while l:month > 12
		let l:month = l:month - 12
		let l:year = l:year + 1
	endwhile

	let month_date = strptime('%Y %m', l:year . ' ' . printf('%02d', l:month))

	let file_name = l:reviews_dir . strftime('%Y-%m', l:month_date) .'-month.md'
	let exists = filereadable(glob(l:file_name))
	execute 'edit ' . l:file_name
	if exists == v:false
		call vimwiki_reviews#read_review_template_into_buffer(l:reviews_dir, 'month')
		execute '%substitute/%date%/' . strftime('%Y %B', l:month_time)
	endif
endfunction

" Open past year yearly review file
" Created buffer is dated to previous year
function! vimwiki_reviews#open_vimwiki_yearly_review(vimwiki_index, offset)
	let reviews_dir = s:get_reviews_dir(a:vimwiki_index)
	let year_date = (str2nr(strftime('%Y')) + a:offset)
	let file_name = l:reviews_dir . l:year_date .'-year.md'
	let exists = filereadable(glob(l:file_name))
	execute 'edit ' . l:file_name
	if exists == v:false
		call vimwiki_reviews#read_review_template_into_buffer(l:reviews_dir, 'year')
		execute '%substitute/%date%/' . l:year_date
	endif
endfunction

" Open reviews index file
function! vimwiki_reviews#open_vimwiki_review_index(vimwiki_index)
	let reviews_dir = s:get_reviews_dir(a:vimwiki_index)
	execute 'edit ' . l:reviews_dir . 'reviews.md'
endfunction
