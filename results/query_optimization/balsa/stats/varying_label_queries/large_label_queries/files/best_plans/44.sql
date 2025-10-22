/*+ HashJoin(v c u)
 HashJoin(c u)
 SeqScan(v)
 SeqScan(c)
 SeqScan(u)
 Leading((v (c u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.Score=0 AND c.CreationDate>='2010-07-27 15:08:20'::timestamp AND u.Views>=0 AND u.UpVotes>=0 AND u.UpVotes<=7;

