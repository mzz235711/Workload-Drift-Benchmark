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
select count(*) from movie_companies,movie_keyword,movie_info_idx,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id>2199 and title.season_nr=0 and title.production_year<125 and title.kind_id=1 and title.phonetic_code<22167;

