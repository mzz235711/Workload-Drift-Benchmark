/*+ MergeJoin(title movie_companies movie_info_idx movie_keyword cast_info)
 NestLoop(title movie_companies movie_info_idx movie_keyword)
 NestLoop(title movie_companies movie_info_idx)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 SeqScan(cast_info)
 Leading(((((title movie_companies) movie_info_idx) movie_keyword) cast_info)) */
select count(*) from cast_info,movie_keyword,movie_info_idx,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and cast_info.nr_order<30 and movie_keyword.keyword_id<1035 and movie_companies.company_type_id<2 and title.phonetic_code<5685 and title.kind_id<7 and title.episode_nr<15;

