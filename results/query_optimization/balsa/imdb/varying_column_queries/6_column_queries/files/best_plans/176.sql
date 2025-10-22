/*+ NestLoop(title movie_companies movie_info_idx movie_keyword cast_info)
 NestLoop(title movie_companies movie_info_idx movie_keyword)
 NestLoop(title movie_companies movie_info_idx)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading(((((title movie_companies) movie_info_idx) movie_keyword) cast_info)) */
select count(*) from movie_keyword,cast_info,movie_companies,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id<91452 and cast_info.role_id<10 and title.phonetic_code<17310 and title.season_nr<6 and title.episode_nr<38 and title.series_years>0;

