/*+ HashJoin(b v u p)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-16 AND p.Score<159 AND p.CommentCount>2 AND p.CommentCount<42 AND u.DownVotes>683 AND u.DownVotes<794 AND v.CreationDate>'2009-08-18 03:17:47'::timestamp AND v.CreationDate<'2011-09-17 21:33:13'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2011-03-18 04:18:43'::timestamp AND b.Date<'2012-06-16 12:30:25'::timestamp;

