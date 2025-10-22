/*+ HashJoin(movie_keyword title movie_info_idx movie_companies cast_info)
 NestLoop(title movie_info_idx movie_companies cast_info)
 HashJoin(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((movie_keyword (((title movie_info_idx) movie_companies) cast_info))) */
select count(*) from movie_info_idx,movie_keyword,movie_companies,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id>1 and title.episode_nr<168 and title.season_nr<44 and title.production_year<127 and title.phonetic_code>0;

