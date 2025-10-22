/*+ HashJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-18 AND p.Score<86 AND p.CommentCount>3 AND p.CommentCount<39 AND u.DownVotes>394 AND u.DownVotes<1203 AND v.CreationDate>'2010-12-04 21:15:39'::timestamp AND v.CreationDate<'2011-01-26 09:44:34'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<15 AND b.Date>'2011-06-17 19:18:34'::timestamp AND b.Date<'2012-12-31 08:00:06'::timestamp;

