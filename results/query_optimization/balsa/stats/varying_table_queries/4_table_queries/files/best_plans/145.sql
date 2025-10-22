/*+ HashJoin(u c p v)
 HashJoin(c p v)
 HashJoin(p v)
 SeqScan(u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(v)
 Leading((u (c (p v)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.PostTypeId=1 AND p.CommentCount>=0 AND p.CommentCount<=8 AND v.BountyAmount>=0 AND v.BountyAmount<=100 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-09 00:00:00'::timestamp AND u.Views>=0 AND u.UpVotes>=0;

