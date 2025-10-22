/*+ HashJoin(v c u)
 HashJoin(c u)
 SeqScan(v)
 SeqScan(c)
 IndexScan(u)
 Leading((v (c u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.Score=0 AND c.CreationDate>='2010-07-28 15:59:39'::timestamp AND c.CreationDate<='2014-09-06 22:03:25'::timestamp AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND v.CreationDate<='2014-09-11 00:00:00'::timestamp AND u.UpVotes=0 AND u.CreationDate<='2014-08-28 16:25:00'::timestamp;

