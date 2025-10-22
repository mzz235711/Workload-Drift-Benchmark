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
select count(*) from cast_info,movie_keyword,movie_companies,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and cast_info.nr_order>2 and movie_keyword.keyword_id>370 and movie_companies.company_type_id<2 and title.phonetic_code<11962 and title.episode_nr<193 and title.kind_id>1 and title.season_nr=1;

