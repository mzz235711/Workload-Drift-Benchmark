/*+ HashJoin(movie_keyword title movie_companies movie_info_idx cast_info)
 NestLoop(title movie_companies movie_info_idx cast_info)
 NestLoop(title movie_companies movie_info_idx)
 NestLoop(title movie_companies)
 IndexScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((movie_keyword (((title movie_companies) movie_info_idx) cast_info))) */
select count(*) from movie_info_idx,movie_keyword,movie_companies,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id>56 and cast_info.role_id=1 and title.imdb_index=0 and title.season_nr>0 and title.production_year>99;

