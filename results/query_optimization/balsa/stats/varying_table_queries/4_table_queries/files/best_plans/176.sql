/*+ HashJoin(ph u v c)
 MergeJoin(ph u v)
 HashJoin(u v)
 IndexScan(ph)
 IndexScan(u)
 IndexScan(v)
 SeqScan(c)
 Leading(((ph (u v)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND c.Score=0 AND u.DownVotes=0;

