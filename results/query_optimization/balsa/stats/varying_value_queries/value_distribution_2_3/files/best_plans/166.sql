/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>16 AND p.Score<53 AND p.CommentCount>11 AND p.CommentCount<32 AND u.DownVotes>7 AND u.DownVotes<85 AND v.CreationDate>'2010-11-14 23:31:03'::timestamp AND v.CreationDate<'2012-09-15 22:51:43'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<15 AND b.Date>'2010-08-03 22:17:17'::timestamp AND b.Date<'2013-08-01 00:34:37'::timestamp;

