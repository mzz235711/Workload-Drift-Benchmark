/*+ MergeJoin(title movie_keyword movie_info)
 MergeJoin(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((title movie_keyword) movie_info)) */
select count(*) from movie_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.phonetic_code<22826 and title.episode_nr>0 and title.production_year>0;

