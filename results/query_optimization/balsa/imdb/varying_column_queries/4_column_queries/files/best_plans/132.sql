/*+ HashJoin(movie_info movie_info_idx title movie_companies movie_keyword)
 HashJoin(movie_info movie_info_idx title movie_companies)
 HashJoin(movie_info movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((((movie_info (movie_info_idx title)) movie_companies) movie_keyword)) */
select count(*) from movie_keyword,movie_companies,movie_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id>110 and movie_info.info_type_id>1 and title.series_years>0 and title.imdb_index=0;

