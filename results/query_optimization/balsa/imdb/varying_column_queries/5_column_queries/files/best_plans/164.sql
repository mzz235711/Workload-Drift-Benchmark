/*+ HashJoin(title movie_info_idx movie_keyword movie_companies movie_info)
 NestLoop(title movie_info_idx movie_keyword movie_companies)
 HashJoin(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 Leading(((((title movie_info_idx) movie_keyword) movie_companies) movie_info)) */
select count(*) from movie_info_idx,movie_info,movie_companies,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id>99 and title.phonetic_code>0 and title.season_nr<4 and title.production_year<126 and title.series_years>0;

