/*+ NestLoop(title movie_companies movie_info_idx movie_keyword cast_info)
 NestLoop(title movie_companies movie_info_idx movie_keyword)
 HashJoin(title movie_companies movie_info_idx)
 HashJoin(title movie_companies)
 SeqScan(title)
 SeqScan(movie_companies)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading(((((title movie_companies) movie_info_idx) movie_keyword) cast_info)) */
select count(*) from movie_companies,movie_info_idx,movie_keyword,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id=1 and movie_info_idx.info_type_id>99 and title.series_years>0 and title.episode_nr<1364 and title.production_year>38 and title.imdb_index=0;

