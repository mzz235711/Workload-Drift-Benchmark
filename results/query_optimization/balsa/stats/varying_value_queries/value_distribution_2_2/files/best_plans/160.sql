/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-3 AND p.Score<119 AND p.CommentCount>11 AND p.CommentCount<30 AND u.DownVotes>594 AND u.DownVotes<847 AND v.CreationDate>'2010-11-06 08:17:47'::timestamp AND v.CreationDate<'2012-11-10 19:50:31'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<15 AND b.Date>'2010-08-17 07:41:21'::timestamp AND b.Date<'2012-04-30 23:57:33'::timestamp;

