/*+ MergeJoin(movie_info title)
 IndexScan(movie_info)
 IndexScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.phonetic_code<17183 and title.production_year>0;

