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
select count(*) from movie_info_idx,movie_keyword,movie_companies,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id>56 and cast_info.role_id=1 and title.imdb_index=0 and title.season_nr>0 and title.production_year>99;

