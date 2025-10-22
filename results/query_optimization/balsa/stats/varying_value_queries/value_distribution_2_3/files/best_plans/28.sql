/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-12 AND p.Score<125 AND p.CommentCount>7 AND p.CommentCount<31 AND u.DownVotes>83 AND u.DownVotes<123 AND v.CreationDate>'2010-07-14 01:52:08'::timestamp AND v.CreationDate<'2010-08-10 00:43:36'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<8 AND b.Date>'2010-12-14 10:26:34'::timestamp AND b.Date<'2012-07-15 04:57:56'::timestamp;

