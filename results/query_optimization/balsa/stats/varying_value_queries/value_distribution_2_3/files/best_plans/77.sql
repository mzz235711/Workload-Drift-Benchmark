/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-4 AND p.Score<64 AND p.CommentCount>6 AND p.CommentCount<28 AND u.DownVotes>745 AND u.DownVotes<1479 AND v.CreationDate>'2009-08-12 21:01:00'::timestamp AND v.CreationDate<'2013-01-03 04:17:39'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<7 AND b.Date>'2013-01-13 02:01:14'::timestamp AND b.Date<'2013-06-13 16:32:56'::timestamp;

