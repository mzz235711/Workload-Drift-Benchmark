/*+ HashJoin(movie_info title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 IndexScan(movie_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 Leading((movie_info ((title movie_info_idx) movie_companies))) */
select count(*) from movie_companies,movie_info,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id>1 and movie_info.info_type_id<16 and title.production_year>32 and title.phonetic_code<20792;

