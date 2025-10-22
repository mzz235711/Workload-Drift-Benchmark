/*+ HashJoin(movie_info_idx title movie_companies cast_info movie_keyword)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 HashJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_keyword)) */
select count(*) from cast_info,movie_info_idx,movie_companies,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order>0 and movie_companies.company_type_id<2 and title.phonetic_code>0 and title.production_year<123 and title.kind_id=7 and title.episode_nr<15;

