/*+ NestLoop(title movie_info_idx movie_keyword movie_companies cast_info)
 MergeJoin(title movie_info_idx movie_keyword movie_companies)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 SeqScan(movie_companies)
 IndexScan(cast_info)
 Leading(((((title movie_info_idx) movie_keyword) movie_companies) cast_info)) */
select count(*) from movie_keyword,movie_companies,movie_info_idx,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id<88525 and movie_companies.company_type_id<2 and movie_info_idx.info_type_id>99 and cast_info.nr_order<24 and title.production_year<115 and title.kind_id>1 and title.phonetic_code<10047;

