/*+ HashJoin(c b v u)
 HashJoin(b v u)
 HashJoin(v u)
 SeqScan(c)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 Leading((c (b (v u)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=0 AND c.CreationDate<='2014-09-08 14:51:34'::timestamp AND u.UpVotes>=0;

