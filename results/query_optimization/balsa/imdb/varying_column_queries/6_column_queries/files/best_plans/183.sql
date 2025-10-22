/*+ NestLoop(title movie_keyword movie_companies cast_info)
 NestLoop(title movie_keyword movie_companies)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((((title movie_keyword) movie_companies) cast_info)) */
select count(*) from movie_companies,movie_keyword,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id=1 and movie_keyword.keyword_id>580 and cast_info.role_id=10 and title.kind_id=7 and title.season_nr=2 and title.episode_nr>17;

