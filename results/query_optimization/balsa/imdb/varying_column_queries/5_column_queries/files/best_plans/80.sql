/*+ HashJoin(title movie_info_idx movie_companies movie_keyword movie_info)
 HashJoin(title movie_info_idx movie_companies movie_keyword)
 HashJoin(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 SeqScan(movie_info)
 Leading(((((title movie_info_idx) movie_companies) movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_companies,movie_info_idx,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_keyword.keyword_id<83789 and movie_companies.company_type_id=1 and movie_info_idx.info_type_id>99 and movie_info.info_type_id<105 and title.episode_nr>0;

