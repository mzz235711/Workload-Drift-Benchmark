/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>13 AND p.Score<55 AND p.CommentCount>4 AND p.CommentCount<20 AND u.DownVotes>28 AND u.DownVotes<1740 AND v.CreationDate>'2011-09-11 05:03:12'::timestamp AND v.CreationDate<'2013-09-16 08:41:06'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<10 AND b.Date>'2011-01-17 05:57:45'::timestamp AND b.Date<'2012-09-03 12:59:32'::timestamp;

