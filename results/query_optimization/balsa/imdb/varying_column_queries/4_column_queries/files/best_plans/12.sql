/*+ HashJoin(cast_info title movie_keyword movie_info_idx movie_companies)
 NestLoop(title movie_keyword movie_info_idx movie_companies)
 HashJoin(title movie_keyword movie_info_idx)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 Leading((cast_info (((title movie_keyword) movie_info_idx) movie_companies))) */
select count(*) from movie_companies,movie_keyword,cast_info,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id>1 and cast_info.role_id<11 and title.phonetic_code<7860 and title.episode_nr>0;

