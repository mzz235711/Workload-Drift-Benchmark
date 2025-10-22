/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-9 AND p.Score<78 AND p.CommentCount>4 AND p.CommentCount<10 AND u.DownVotes>89 AND u.DownVotes<1535 AND v.CreationDate>'2012-06-12 13:59:20'::timestamp AND v.CreationDate<'2014-06-08 22:32:39'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<10 AND b.Date>'2012-01-23 03:28:14'::timestamp AND b.Date<'2014-04-15 10:58:55'::timestamp;

