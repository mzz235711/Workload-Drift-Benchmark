/*+ HashJoin(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 SeqScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>2 AND p.Score<123 AND p.CommentCount>9 AND p.CommentCount<11 AND u.DownVotes>761 AND u.DownVotes<1885 AND v.CreationDate>'2010-03-16 04:24:33'::timestamp AND v.CreationDate<'2012-09-17 20:34:20'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2012-01-05 01:40:57'::timestamp AND b.Date<'2013-04-22 10:16:29'::timestamp;

