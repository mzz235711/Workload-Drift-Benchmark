/*+ HashJoin(b u ph c v)
 HashJoin(c v)
 HashJoin(b u ph)
 HashJoin(b u)
 SeqScan(b)
 SeqScan(u)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(v)
 Leading((((b u) ph) (c v))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND c.Score=2 AND ph.CreationDate>='2010-07-19 20:11:47'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=100 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.UpVotes<=1160;

