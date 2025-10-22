/*+ NestLoop(title movie_companies movie_keyword movie_info_idx cast_info)
 HashJoin(title movie_companies movie_keyword movie_info_idx)
 NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading(((((title movie_companies) movie_keyword) movie_info_idx) cast_info)) */
select count(*) from movie_keyword,movie_info_idx,cast_info,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id>99 and cast_info.nr_order<19 and title.episode_nr<5 and title.production_year>124 and title.phonetic_code<7359 and title.season_nr>6;

