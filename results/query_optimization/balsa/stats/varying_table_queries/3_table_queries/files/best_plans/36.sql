/*+ MergeJoin(ph u p)
 HashJoin(u p)
 IndexScan(ph)
 SeqScan(u)
 IndexScan(p)
 Leading((ph (u p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.CreationDate>='2011-06-02 12:39:14'::timestamp AND ph.CreationDate<='2014-08-10 11:57:09'::timestamp AND p.Score>=0 AND p.AnswerCount<=3 AND p.FavoriteCount<=18 AND p.CreationDate<='2014-08-28 08:56:16'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=0;

