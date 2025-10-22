/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and movie_keyword.keyword_id>797 and title.kind_id>1 and title.season_nr>0 and title.phonetic_code>10210 and title.episode_nr>0;

