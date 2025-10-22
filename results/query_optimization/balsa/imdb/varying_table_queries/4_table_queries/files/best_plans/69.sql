/*+ MergeJoin(cast_info movie_companies title movie_keyword)
 NestLoop(movie_companies title movie_keyword)
 MergeJoin(movie_companies title)
 SeqScan(cast_info)
 SeqScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_keyword)
 Leading((cast_info ((movie_companies title) movie_keyword))) */
select count(*) from movie_companies,cast_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_keyword.keyword_id>381 and title.season_nr<3 and title.production_year<88 and title.imdb_index=0;

