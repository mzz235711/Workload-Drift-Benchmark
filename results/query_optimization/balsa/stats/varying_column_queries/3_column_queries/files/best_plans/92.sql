/*+ HashJoin(v c u)
 HashJoin(c u)
 SeqScan(v)
 SeqScan(c)
 SeqScan(u)
 Leading((v (c u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND u.UpVotes>=0 AND u.UpVotes<=3 AND u.CreationDate>='2010-09-14 17:30:20'::timestamp;

