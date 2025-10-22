/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>14 AND p.Score<175 AND p.CommentCount>5 AND p.CommentCount<31 AND u.DownVotes>78 AND u.DownVotes<88 AND v.CreationDate>'2013-10-10 20:22:22'::timestamp AND v.CreationDate<'2014-08-10 21:34:38'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<11 AND b.Date>'2010-11-03 14:53:19'::timestamp AND b.Date<'2012-12-23 19:53:52'::timestamp;

