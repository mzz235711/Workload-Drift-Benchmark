/*+ NestLoop(title movie_companies movie_keyword movie_info_idx movie_info)
 HashJoin(title movie_companies movie_keyword movie_info_idx)
 NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 SeqScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((((title movie_companies) movie_keyword) movie_info_idx) movie_info)) */
select count(*) from movie_keyword,movie_companies,movie_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id<78368 and movie_companies.company_type_id>1 and movie_info_idx.info_type_id=99 and title.episode_nr<11 and title.season_nr>15 and title.phonetic_code<11926;

