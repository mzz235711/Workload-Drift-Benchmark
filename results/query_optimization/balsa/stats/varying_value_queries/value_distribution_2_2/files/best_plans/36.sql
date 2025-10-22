/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>94 AND p.Score<146 AND p.CommentCount>4 AND p.CommentCount<30 AND u.DownVotes>546 AND u.DownVotes<1253 AND v.CreationDate>'2010-10-06 18:27:03'::timestamp AND v.CreationDate<'2014-01-07 23:57:03'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2012-12-28 09:02:59'::timestamp AND b.Date<'2014-01-19 13:27:40'::timestamp;

