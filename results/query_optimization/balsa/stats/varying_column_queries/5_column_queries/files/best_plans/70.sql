/*+ HashJoin(v c u)
 HashJoin(c u)
 SeqScan(v)
 SeqScan(c)
 SeqScan(u)
 Leading((v (c u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND v.BountyAmount<=100 AND u.DownVotes<=6 AND u.UpVotes>=0 AND u.UpVotes<=52 AND u.CreationDate<='2014-09-03 13:57:09'::timestamp;

