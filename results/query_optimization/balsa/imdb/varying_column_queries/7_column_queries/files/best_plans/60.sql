/*+ MergeJoin(movie_companies title movie_keyword movie_info cast_info)
 NestLoop(movie_companies title movie_keyword movie_info)
 NestLoop(movie_companies title movie_keyword)
 NestLoop(movie_companies title)
 SeqScan(movie_companies)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 SeqScan(cast_info)
 Leading(((((movie_companies title) movie_keyword) movie_info) cast_info)) */
select count(*) from movie_keyword,movie_companies,movie_info,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id<73584 and movie_companies.company_type_id<2 and movie_info.info_type_id>4 and cast_info.nr_order>0 and title.season_nr>0 and title.phonetic_code>17234 and title.episode_nr>0;

