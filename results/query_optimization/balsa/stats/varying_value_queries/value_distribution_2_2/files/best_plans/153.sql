/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>5 AND p.Score<95 AND p.CommentCount>13 AND p.CommentCount<21 AND u.DownVotes>40 AND u.DownVotes<1713 AND v.CreationDate>'2010-10-03 07:43:34'::timestamp AND v.CreationDate<'2013-04-04 18:59:13'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<15 AND b.Date>'2012-12-25 04:47:41'::timestamp AND b.Date<'2014-06-27 08:42:05'::timestamp;

