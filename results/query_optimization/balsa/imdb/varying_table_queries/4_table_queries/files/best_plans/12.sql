/*+ NestLoop(title movie_info_idx movie_companies cast_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_companies) cast_info)) */
select count(*) from movie_companies,cast_info,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.phonetic_code>1970 and title.episode_nr<13 and title.season_nr>0;

