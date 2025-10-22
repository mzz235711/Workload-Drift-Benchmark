/*+ HashJoin(title movie_companies movie_keyword movie_info cast_info)
 NestLoop(title movie_companies movie_keyword movie_info)
 NestLoop(title movie_companies movie_keyword)
 MergeJoin(title movie_companies)
 IndexScan(title)
 SeqScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 SeqScan(cast_info)
 Leading(((((title movie_companies) movie_keyword) movie_info) cast_info)) */
select count(*) from cast_info,movie_keyword,movie_companies,movie_info,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and cast_info.nr_order>1 and movie_keyword.keyword_id>229 and movie_info.info_type_id>1 and title.imdb_index=0 and title.episode_nr>0 and title.production_year>48 and title.season_nr>0;

