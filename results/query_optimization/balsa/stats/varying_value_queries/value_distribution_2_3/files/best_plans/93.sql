/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-3 AND p.Score<61 AND p.CommentCount>1 AND p.CommentCount<31 AND u.DownVotes>119 AND u.DownVotes<1585 AND v.CreationDate>'2009-07-17 06:20:34'::timestamp AND v.CreationDate<'2012-05-18 13:49:14'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<10 AND b.Date>'2012-11-04 21:00:24'::timestamp AND b.Date<'2014-06-22 01:29:14'::timestamp;

