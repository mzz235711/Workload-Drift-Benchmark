/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>24 AND p.Score<164 AND p.CommentCount>4 AND p.CommentCount<17 AND u.DownVotes>586 AND u.DownVotes<1764 AND v.CreationDate>'2011-01-17 16:39:47'::timestamp AND v.CreationDate<'2013-11-24 10:29:03'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<13 AND b.Date>'2011-07-22 06:25:04'::timestamp AND b.Date<'2012-06-05 16:15:40'::timestamp;

