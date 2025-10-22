/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>14 AND p.Score<139 AND p.CommentCount>6 AND p.CommentCount<34 AND u.DownVotes>353 AND u.DownVotes<1662 AND v.CreationDate>'2011-05-26 21:18:28'::timestamp AND v.CreationDate<'2013-11-12 08:36:51'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<15 AND b.Date>'2010-12-09 10:36:17'::timestamp AND b.Date<'2011-08-23 14:07:37'::timestamp;

