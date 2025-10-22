/*+ HashJoin(movie_info_idx title cast_info movie_companies movie_keyword)
 NestLoop(movie_info_idx title cast_info movie_companies)
 NestLoop(movie_info_idx title cast_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) cast_info) movie_companies) movie_keyword)) */
select count(*) from cast_info,movie_info_idx,movie_companies,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_keyword.keyword_id<85044 and title.phonetic_code>5737 and title.imdb_index>0;

