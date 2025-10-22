/*+ HashJoin(v p u c b)
 HashJoin(v p u c)
 HashJoin(p u c)
 HashJoin(u c)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 SeqScan(c)
 SeqScan(b)
 Leading(((v (p (u c))) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, badges as b, users as u WHERE u.Id =c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = v.UserId AND v.UserId = b.UserId AND p.ViewCount<=15823 AND v.BountyAmount<=100 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND b.Date<='2014-09-09 07:40:39'::timestamp AND u.DownVotes>=0;

