/*+ HashJoin(ph u v c)
 MergeJoin(ph u v)
 MergeJoin(u v)
 SeqScan(ph)
 IndexScan(u)
 IndexScan(v)
 SeqScan(c)
 Leading(((ph (u v)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND u.CreationDate>='2010-07-19 21:55:38'::timestamp;

