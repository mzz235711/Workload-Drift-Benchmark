/*+ HashJoin(movie_info title movie_keyword)
 HashJoin(title movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_keyword)
 Leading((movie_info (title movie_keyword))) */
select count(*) from movie_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.series_years<1387 and title.production_year<124;

