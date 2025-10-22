/*+ HashJoin(cast_info movie_info_idx title movie_companies movie_keyword)
 NestLoop(movie_info_idx title movie_companies movie_keyword)
 HashJoin(movie_info_idx title movie_companies)
 HashJoin(movie_info_idx title)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((cast_info (((movie_info_idx title) movie_companies) movie_keyword))) */
select count(*) from movie_info_idx,movie_companies,cast_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order>1 and title.phonetic_code>0 and title.imdb_index=0 and title.series_years>0;

