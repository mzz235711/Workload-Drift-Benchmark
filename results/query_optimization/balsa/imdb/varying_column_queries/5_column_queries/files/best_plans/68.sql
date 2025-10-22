/*+ NestLoop(movie_info title movie_keyword movie_companies cast_info)
 HashJoin(movie_info title movie_keyword movie_companies)
 NestLoop(title movie_keyword movie_companies)
 NestLoop(title movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading(((movie_info ((title movie_keyword) movie_companies)) cast_info)) */
select count(*) from movie_companies,movie_keyword,cast_info,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id=2 and movie_keyword.keyword_id>121 and title.production_year<67 and title.episode_nr>0 and title.phonetic_code>17617;

