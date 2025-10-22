/*+ HashJoin(b c v u)
 HashJoin(c v u)
 HashJoin(v u)
 SeqScan(b)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 Leading((b (c (v u)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.CreationDate<='2014-09-13 13:16:17'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=150 AND u.Views>=0 AND u.DownVotes<=0;

