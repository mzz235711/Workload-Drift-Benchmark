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
select count(*) from movie_keyword,movie_info_idx,cast_info,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id>99 and cast_info.nr_order>1 and movie_companies.company_type_id>1 and title.imdb_index=0 and title.kind_id=7 and title.episode_nr>3 and title.season_nr>3;

