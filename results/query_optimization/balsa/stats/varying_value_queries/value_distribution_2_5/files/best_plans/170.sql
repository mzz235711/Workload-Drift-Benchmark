/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>95 AND p.Score<177 AND p.CommentCount>13 AND p.CommentCount<41 AND u.DownVotes>102 AND u.DownVotes<1243 AND v.CreationDate>'2012-06-28 02:06:53'::timestamp AND v.CreationDate<'2013-08-22 17:14:05'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<5 AND b.Date>'2013-03-05 14:36:44'::timestamp AND b.Date<'2014-02-21 22:40:56'::timestamp;

