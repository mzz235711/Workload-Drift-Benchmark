/*+ HashJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-13 AND p.Score<187 AND p.CommentCount>2 AND p.CommentCount<37 AND u.DownVotes>262 AND u.DownVotes<1016 AND v.CreationDate>'2011-07-27 07:46:16'::timestamp AND v.CreationDate<'2012-07-22 06:55:40'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<14 AND b.Date>'2011-12-10 11:03:08'::timestamp AND b.Date<'2012-08-08 21:02:08'::timestamp;

