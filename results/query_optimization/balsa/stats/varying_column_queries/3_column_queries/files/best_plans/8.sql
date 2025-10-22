/*+ HashJoin(v c u)
 HashJoin(c u)
 SeqScan(v)
 SeqScan(c)
 SeqScan(u)
 Leading((v (c u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.CreationDate>='2010-07-20 23:17:28'::timestamp AND v.VoteTypeId=2 AND u.CreationDate>='2010-07-27 13:39:31'::timestamp;

